import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';

import '../dependency/dependency.dart';
import '../model/dart_node.dart';
import '../model/ts_node.dart';
import '../util/ts_node_search.dart';
import 'type_evaluator.dart';

final _ignoreDirectives = [
  'non_constant_identifier_names',
  'camel_case_types',
  'unnecessary_library_name',
  'unintended_html_in_doc_comment',
  'avoid_shadowing_type_parameters',
];

final _voidType = TypeReference((builder) {
  builder.symbol = 'void';
});

final _nullType = TypeReference((builder) {
  builder.symbol = 'null';
});

String _sanitizeParamName(String? name) {
  const invalidNames = {
    'assert',
    'class',
    'default',
    'false',
    'is',
    'new',
    'null',
    'return',
    'super',
    'this',
    'throw',
    'true',
    'void',
    'with',
  };
  if (invalidNames.contains(name)) {
    return '$name\$';
  }
  return name ?? '_';
}

Map<String, TsTypeParameter> _collectTypeParameters(
  TsNodeWrapper nodeWrapper,
  Map<String, TsTypeParameter> typeParameters,
) {
  final nodes = nodeWrapper.nodes;
  for (final node in nodes) {
    if (node is WithTypeParameters) {
      final typeParams = node.typeParameters.value;
      for (final typeParam in typeParams) {
        if (typeParam is TsTypeParameter) {
          typeParameters[typeParam.name.value.nodeName!] = typeParam;
        }
      }
    }
    for (final wrapper in node.nodeWrappers) {
      _collectTypeParameters(wrapper, typeParameters);
    }
  }
  return typeParameters;
}

extension on ListBuilder<Expression> {
  void addJsAnnotation(TsNode node, String? name, Dependencies dependencies) {
    final allocator = Allocator.simplePrefixing();
    add(
      CodeExpression(
        Code(
          "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', node)))}('${name?.replaceAll('\$', '\\\$').replaceAll('\'', '\\\'')}')",
        ),
      ),
    );
  }
}

bool _containsNodeKind(List<TsNode> nodes, TsNodeKind kind) {
  for (final node in nodes) {
    if (node.kind == kind) {
      return true;
    }
  }
  return false;
}

extension _DartNodeIterable<T extends Spec> on Iterable<DartNode<T>> {
  List<T> toSpecs(Dependencies config) {
    final result = <T>[];
    for (final node in this) {
      result.addAll(node.toSpecs(config));
    }
    return result;
  }
}

extension on TypeReference {
  TypeReference copyWith({
    Reference? bound,
    bool? isNullable,
    String? symbol,
    List<TypeReference>? types,
    String? url,
  }) {
    return TypeReference((builder) {
      builder.bound = bound ?? this.bound;
      builder.isNullable = isNullable ?? this.isNullable;
      builder.symbol = symbol ?? this.symbol;
      builder.types.addAll(types ?? this.types);
      builder.url = url ?? this.url;
    });
  }
}

class Transpiler {
  final TypeEvaluator typeEvaluator;
  final Dependencies dependencies;
  final List<Library> libraries = [];
  final Set<String> _processingImports = {}; // Track imports being processed to prevent circular imports

  Transpiler(this.typeEvaluator, this.dependencies);

  List<Library> transpile(TsPackage package) {
    dependencies.dependencies.insert(0, PackageDependency(package));
    updateParentAndChilds(package, package.parent);
    _transpileNode<Library>(package).toSpecs(dependencies);
    return libraries;
  }

  DartNode<TypeReference> _transpileAnyKeyword(TsAnyKeyword anyKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, anyKeyword);
    }).toDartNode(anyKeyword);
  }

  DartNode<TypeReference> _transpileArrayType(TsArrayType arrayType) {
    return TypeReference((builder) {
      builder.symbol = 'JSArray';
      builder.url = dependencies.libraryUrlForType(builder.symbol, arrayType);
      final elementType = _transpileNode<Reference>(arrayType.elementType.value).toSpecs(dependencies);
      if (elementType.isNotEmpty) {
        builder.types.add(elementType.first);
      } else {
        builder.types.add(
          TypeReference((builder) {
            builder.symbol = 'JSAny';
            builder.url = dependencies.libraryUrlForType(builder.symbol, arrayType);
          }),
        );
      }
    }).toDartNode(arrayType);
  }

  DartNode<TypeReference> _transpileBigIntKeyword(TsBigIntKeyword bigIntKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSBigInt';
      builder.url = dependencies.libraryUrlForType(builder.symbol, bigIntKeyword);
    }).toDartNode(bigIntKeyword);
  }

  DartNode<TypeReference> _transpileBooleanKeyword(TsBooleanKeyword booleanKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSBoolean';
      builder.url = dependencies.libraryUrlForType(builder.symbol, booleanKeyword);
    }).toDartNode(booleanKeyword);
  }

  DartNode<ExtensionType> _transpileClassDeclaration(TsClassDeclaration classDeclaration) {
    final isAbstract = _containsNodeKind(classDeclaration.modifiers.value, TsNodeKind.abstractKeyword);
    final members = _transpileNodes(classDeclaration.members.value);
    final hasCallSignature = classDeclaration.searchDown<TsCallSignature>().isNotEmpty;
    final className = classDeclaration.name.value.nodeName;

    return ExtensionType((builder) {
      builder.docs.add('/// Class [${classDeclaration.name.value.nodeName}]');
      classDeclaration.meta.ifNotOriginalName(className, (originalName) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(
          CodeExpression(
            Code(
              "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', classDeclaration)))}('$originalName')",
            ),
          ),
        );
      });
      builder.name = className;
      builder.types.addAll(_transpileNodes<Reference>(classDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.primaryConstructorName = isAbstract ? '_' : '\$';
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = hasCallSignature ? 'JSFunction' : 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, classDeclaration);
        });
      });
      builder.implements.add(
        TypeReference((builder) {
          builder.symbol = hasCallSignature ? 'JSFunction' : 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, classDeclaration);
        }),
      );
      builder.implements.addAll(
        _transpileNodes<Reference>(classDeclaration.heritageClauses.value).toSpecs(dependencies),
      );
      builder.constructors.addAll(members.whereType<DartConstructor>().map((c) => c.constructor));
      builder.fields.addAll(members.expand((m) => m.toSpecs(dependencies)).whereType<Field>());
      builder.methods.addAll(members.expand((m) => m.toSpecs(dependencies)).whereType<Method>());
    }).toDartNode(classDeclaration);
  }

  DartNode<TypeReference> _transpileConditionalType(TsConditionalType conditionalType) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, conditionalType);
    }).toDartNode(conditionalType);
  }

  DartNode<Spec> _transpileConstructorDeclaration(TsConstructorDeclaration constructorDeclaration) {
    return Constructor((builder) {
      builder.docs.addAll([
        '/// Constructor',
        if (constructorDeclaration.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...constructorDeclaration.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (constructorDeclaration.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...constructorDeclaration.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
      ]);
      builder.external = true;
      builder.requiredParameters.addAll(
        _transpileNodes<Reference>(
          constructorDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => !p.isNullable).map((node) => node.parameter).toList(),
      );
      builder.optionalParameters.addAll(
        _transpileNodes<Reference>(
          constructorDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => p.isNullable).map((node) => node.parameter).toList(),
      );
    }).toDartNode(constructorDeclaration);
  }

  DartNode<Spec> _transpileConstructSignature(TsConstructSignature constructSignature) {
    final overloadIds = <int>[];
    if (constructSignature.parent case final parent?) {
      final overloads = parent.searchChilds<TsConstructSignature>();
      for (final overload in overloads) {
        overloadIds.add(overload.id);
      }
    }
    overloadIds.sort();

    return Constructor((builder) {
      builder.docs.addAll([
        '/// Constructor',
        if (constructSignature.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...constructSignature.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (constructSignature.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...constructSignature.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
      ]);
      builder.external = true;
      if (overloadIds.length > 1) {
        builder.name = '\$${overloadIds.indexOf(constructSignature.id) + 1}';
      }
      builder.requiredParameters.addAll(
        _transpileNodes<Reference>(
          constructSignature.parameters.value,
        ).cast<DartParameter>().where((p) => !p.isNullable).map((node) => node.parameter).toList(),
      );
      builder.optionalParameters.addAll(
        _transpileNodes<Reference>(
          constructSignature.parameters.value,
        ).cast<DartParameter>().where((p) => p.isNullable).map((node) => node.parameter).toList(),
      );
    }).toDartNode(constructSignature);
  }

  DartNode<Reference> _transpileConstructorType(TsConstructorType constructorType) {
    return TypeReference((builder) {
      builder.symbol = 'JSFunction';
      builder.url = dependencies.libraryUrlForType(builder.symbol, constructorType);
    }).toDartNode(constructorType);
  }

  DartNode<ExtensionType> _transpileEnumDeclaration(TsEnumDeclaration enumDeclaration) {
    final members = enumDeclaration.members.value.whereType<TsEnumMember>().toList();

    return ExtensionType((builder) {
      builder.docs.add('/// enum ${enumDeclaration.name.value.nodeName}');
      builder.name = enumDeclaration.name.value.nodeName;
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, enumDeclaration);
        });
      });
      builder.implements.add(
        TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, enumDeclaration);
        }),
      );
      builder.fields.addAll(
        members.whereType<TsEnumMember>().map((member) {
          return Field((builder) {
            builder.docs.add('/// member ${member.toCode()}');
            builder.external = true;
            builder.name = member.name.value.nodeName;
            builder.type = _transpileNode<Reference>(
              typeEvaluator.evaluateType(member.initializer.value),
            ).toSpec(dependencies);
          });
        }),
      );
      builder.methods.add(
        Method((builder) {
          builder.external = true;
          builder.name = 'operator []';
          builder.returns = _transpileNode<Reference>(TsStringKeyword()).toSpec(dependencies);
          builder.requiredParameters.add(
            Parameter((builder) {
              builder.type = _transpileNode<Reference>(TsAnyKeyword()).toSpec(dependencies);
              builder.name = 'value';
            }),
          );
        }),
      );
    }).toDartNode(enumDeclaration);
  }

  DartNode<Spec> _transpileExportDeclaration(TsExportDeclaration exportDeclaration) {
    return _transpileNode(exportDeclaration.moduleSpecifier.value).toSpecs(dependencies).toDartNode(exportDeclaration);
  }

  TsSourceFile? _resolveImportedFile(TsPackage package, String importPath) {
    // Try to find the source file that matches the import path
    for (final sourceFile in package.sourceFiles.value) {
      if (sourceFile is TsSourceFile) {
        final baseName = sourceFile.baseName;
        // Match the basename with various formats
        if (_matchesImportPath(baseName, importPath)) {
          return sourceFile;
        }
      }
    }
    return null;
  }

  bool _matchesImportPath(String baseName, String importPath) {
    // Direct match
    if (baseName == importPath) return true;
    // With .d.ts extension
    if (baseName == '$importPath.d.ts') return true;
    // Relative path with .d.ts
    if (baseName.endsWith('/$importPath.d.ts')) return true;
    // Relative path without extension
    if (baseName.endsWith('/$importPath')) return true;
    return false;
  }

  DartNode<Spec> _transpileImportDeclaration(TsImportDeclaration importDeclaration) {
    // Get the module specifier (the imported file path)
    final moduleSpecifier = importDeclaration.moduleSpecifier.value;
    if (moduleSpecifier is! TsStringLiteral) {
      // If module specifier is not a string literal, we can't resolve it
      return DartNode.empty<Spec>(importDeclaration);
    }

    final importPath = moduleSpecifier.text;
    
    // Validate import path
    if (importPath.trim().isEmpty) {
      return DartNode.empty<Spec>(importDeclaration);
    }
    
    // Find the source file in the package that matches this import
    final package = importDeclaration.root;
    if (package is! TsPackage) {
      return DartNode.empty<Spec>(importDeclaration);
    }

    // Resolve the imported file
    final targetSourceFile = _resolveImportedFile(package, importPath);
    if (targetSourceFile == null) {
      // Could not find the imported file
      return DartNode.empty<Spec>(importDeclaration);
    }

    // Check for circular imports to prevent infinite recursion
    final fileKey = targetSourceFile.baseName;
    if (_processingImports.contains(fileKey)) {
      // Circular import detected, skip to avoid infinite recursion
      return DartNode.empty<Spec>(importDeclaration);
    }

    // Mark this file as being processed
    _processingImports.add(fileKey);
    
    try {
      // Transpile the statements from the imported source file and add them to the current package
      return _transpileNodes(targetSourceFile.statements.value).toSpecs(dependencies).toDartNode(importDeclaration);
    } finally {
      // Always remove from processing set, even if an error occurs
      _processingImports.remove(fileKey);
    }
  }

  DartNode<TypeReference> _transpileExpressionWithTypeArguments(
    TsExpressionWithTypeArguments expressionWithTypeArguments,
  ) {
    final expression = expressionWithTypeArguments.expression.value;
    return switch (expression) {
      TsIdentifier() => TypeReference((builder) {
        builder.symbol = expression.nodeName;
        builder.url = dependencies.libraryUrlForType(expression.nodeName, expressionWithTypeArguments);
        builder.types.addAll(
          _transpileNodes<Reference>(expressionWithTypeArguments.typeArguments.value).toSpecs(dependencies),
        );
      }),
      _ => throw StateError('WARNING: Unsupported expression type ${expression.kind.name}:${expression.nodeName}'),
    }.toDartNode(expressionWithTypeArguments);
  }

  DartNode<Method> _transpileFunctionDeclaration(TsFunctionDeclaration functionDeclaration) {
    final functionName = functionDeclaration.name.value.nodeName;
    if (functionName == null) {
      return DartNode.empty<Method>(functionDeclaration);
    }

    return Method((builder) {
      builder.docs.addAll([
        '/// Method [${functionDeclaration.name.value.nodeName}]',
        if (functionDeclaration.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...functionDeclaration.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (functionDeclaration.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...functionDeclaration.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
      ]);
      functionDeclaration.meta.withOriginalName(functionName, (originalName) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(
          CodeExpression(
            Code(
              "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', functionDeclaration)))}('$originalName')",
            ),
          ),
        );
      });
      builder.external = true;
      builder.returns = _transpileNode<Reference>(functionDeclaration.type.value).toSpecs(dependencies).firstOrNull;
      builder.name = functionDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(functionDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(
        _transpileNodes<Reference>(
          functionDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => !p.isNullable).map((node) => node.parameter).toList(),
      );
      builder.optionalParameters.addAll(
        _transpileNodes<Reference>(
          functionDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => p.isNullable).map((node) => node.parameter).toList(),
      );
    }).toDartNode(functionDeclaration);
  }

  DartNode<TypeReference> _transpileFunctionType(TsFunctionType functionType) {
    return TypeReference((builder) {
      builder.symbol = 'JSFunction';
      builder.url = dependencies.libraryUrlForType(builder.symbol, functionType);
    }).toDartNode(functionType);
  }

  DartNode<Method> _transpileGetAccessor(TsGetAccessor getAccessor) {
    final name = getAccessor.name.value.nodeName;
    return Method((builder) {
      builder.docs.add('/// Get Accessor [$name]');
      builder.docs.add('///');
      builder.docs.add('/// ${getAccessor.toCode()}');
      getAccessor.meta.ifNotOriginalName(name, (originalName) {
        builder.annotations.addJsAnnotation(getAccessor, originalName, dependencies);
      });
      builder.type = MethodType.getter;
      builder.external = true;
      builder.name = name;
      builder.types.addAll(_transpileNodes<Reference>(getAccessor.typeParameters.value).toSpecs(dependencies));
      builder.returns = _transpileNode<TypeReference>(
        typeEvaluator.evaluateType(getAccessor.type.value),
      ).toSpec(dependencies);
    }).toDartNode(getAccessor);
  }

  DartNode<Reference> _transpileHeritageClause(TsHeritageClause heritageClause) {
    heritageClause.types.value.map(_transpileNode).toList();
    final result = <Reference>[];
    for (final type in heritageClause.types.value) {
      result.addAll(_transpileNode<Reference>(type).toSpecs(dependencies));
    }
    return result.toDartNode(heritageClause);
  }

  DartNode<Method> _transpileIndexSignature(TsIndexSignature indexSignature) {
    return <Method>[
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []=';
        builder.returns = _voidType;
        builder.requiredParameters.addAll(
          _transpileNodes<Reference>(
            indexSignature.parameters.value,
          ).cast<DartParameter>().map((node) => node.parameter).toList(),
        );
        builder.requiredParameters.add(
          Parameter((builder) {
            builder.type = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies);
            builder.name = 'value';
          }),
        );
      }),
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []';
        builder.returns = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies);
        builder.requiredParameters.addAll(
          _transpileNodes<Reference>(
            indexSignature.parameters.value,
          ).cast<DartParameter>().map((node) => node.parameter).toList(),
        );
      }),
    ].toDartNode(indexSignature);
  }

  DartNode<ExtensionType> _transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration) {
    final members = _transpileNodes(interfaceDeclaration.members.value);
    final hasCallSignature = interfaceDeclaration.searchDown<TsCallSignature>().isNotEmpty;
    final interfaceName = interfaceDeclaration.name.value.nodeName;

    return ExtensionType((builder) {
      builder.docs.add('/// Interface [${interfaceDeclaration.name.value.nodeName}]');
      interfaceDeclaration.meta.ifNotOriginalName(interfaceName, (originalName) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(
          CodeExpression(
            Code(
              "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', interfaceDeclaration)))}('$originalName')",
            ),
          ),
        );
      });
      builder.name = interfaceName;
      builder.types.addAll(_transpileNodes<Reference>(interfaceDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.primaryConstructorName = '\$';
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = hasCallSignature ? 'JSFunction' : 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, interfaceDeclaration);
        });
      });
      builder.implements.add(
        TypeReference((builder) {
          builder.symbol = hasCallSignature ? 'JSFunction' : 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol, interfaceDeclaration);
        }),
      );
      builder.implements.addAll(
        _transpileNodes<Reference>(interfaceDeclaration.heritageClauses.value).toSpecs(dependencies),
      );

      builder.constructors.addAll(members.whereType<DartConstructor>().map((e) => e.constructor));
      builder.fields.addAll(members.toSpecs(dependencies).whereType<Field>());
      builder.methods.addAll(members.toSpecs(dependencies).whereType<Method>());
    }).toDartNode(interfaceDeclaration);
  }

  DartNode<TypeReference> _transpileIntersectionType(TsIntersectionType intersectionType) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, intersectionType);
    }).toDartNode(intersectionType);
  }

  DartNode<Spec> _transpileLiteralType(TsLiteralType literalType) {
    return _transpileNode(literalType.literal.value);
  }

  DartNode<TypeReference> _transpileMappedType(TsMappedType mappedType) {
    return TypeReference((builder) {
      builder.symbol = 'JSObject';
      builder.url = dependencies.libraryUrlForType(builder.symbol, mappedType);
    }).toDartNode(mappedType);
  }

  DartNode<Method> _transpileMethodDeclaration(TsMethodDeclaration methodDeclaration) {
    final methodName = methodDeclaration.name.value.nodeName;
    if (methodName == null) {
      return DartNode.empty<Method>(methodDeclaration);
    }

    return Method((builder) {
      builder.docs.addAll([
        '/// Method [${methodDeclaration.name.value.nodeName}]',
        if (methodDeclaration.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...methodDeclaration.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (methodDeclaration.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...methodDeclaration.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
      ]);
      methodDeclaration.meta.ifNotOriginalName(methodName, (originalName) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(
          CodeExpression(
            Code(
              "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', methodDeclaration)))}('$originalName')",
            ),
          ),
        );
      });
      builder.external = true;
      builder.static = _containsNodeKind(methodDeclaration.modifiers.value, TsNodeKind.staticKeyword);
      builder.returns = _transpileNode<Reference>(
        typeEvaluator.evaluateType(methodDeclaration.type.value),
      ).toSpec(dependencies);
      builder.name = methodDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(methodDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(
        _transpileNodes<Reference>(
          methodDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => !p.isNullable).map((node) => node.parameter).toList(),
      );
      builder.optionalParameters.addAll(
        _transpileNodes<Reference>(
          methodDeclaration.parameters.value,
        ).cast<DartParameter>().where((p) => p.isNullable).map((node) => node.parameter).toList(),
      );
    }).toDartNode(methodDeclaration);
  }

  DartNode<Method> _transpileMethodSignature(TsMethodSignature methodSignature) {
    final methodName = methodSignature.name.value.nodeName;
    if (methodName == null) {
      return DartNode.empty<Method>(methodSignature);
    }

    return Method((builder) {
      builder.docs.addAll([
        '/// Method [${methodSignature.name.value.nodeName}]',
        if (methodSignature.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...methodSignature.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (methodSignature.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...methodSignature.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
        '///',
        '/// Returns:',
        '/// - ${methodSignature.type.value?.toCode()}',
      ]);
      methodSignature.meta.ifNotOriginalName(methodName, (originalName) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(
          CodeExpression(
            Code(
              "${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS', methodSignature)))}('$originalName')",
            ),
          ),
        );
      });
      builder.external = true;
      builder.returns = _transpileNode<Reference>(
        typeEvaluator.evaluateType(methodSignature.type.value),
      ).toSpec(dependencies);
      builder.name = methodSignature.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(methodSignature.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(
        _transpileNodes<Reference>(
          methodSignature.parameters.value,
        ).cast<DartParameter>().where((p) => !p.isNullable).map((node) => node.parameter).toList(),
      );
      builder.optionalParameters.addAll(
        _transpileNodes<Reference>(
          methodSignature.parameters.value,
        ).cast<DartParameter>().where((p) => p.isNullable).map((node) => node.parameter).toList(),
      );
    }).toDartNode(methodSignature);
  }

  DartNode<Spec> _transpileModuleDeclaration(TsModuleDeclaration moduleDeclaration) {
    switch (moduleDeclaration.declarationKind) {
      case 'namespace':
        final library = Library((builder) {
          builder.name = moduleDeclaration.name.value.nodeName?.toLowerCase();
          builder.ignoreForFile.addAll(_ignoreDirectives);
          final body = moduleDeclaration.body.value;
          if (body != null) {
            builder.body.addAll(_transpileNodes(body.children).toSpecs(dependencies));
          }
        });
        libraries.add(library);
        return library.toDartNode<Library>(moduleDeclaration);
      case 'module':
        final body = moduleDeclaration.body.value;
        if (body != null) {
          return _transpileNodes(body.children).toSpecs(dependencies).toDartNode(moduleDeclaration);
        }
        return DartNode.empty<Spec>(moduleDeclaration);
      case 'global':
        print('WARNING: Global module declarations are not supported yet.');
        return DartNode.empty<Spec>(moduleDeclaration);
      default:
        throw StateError('Unsupported module declaration kind: ${moduleDeclaration.declarationKind}');
    }
  }

  DartNode<TypeReference> _transpileNullKeyword(TsNullKeyword nullKeyword) {
    return _nullType.toDartNode(nullKeyword);
  }

  DartNode<TypeReference> _transpileNumberKeyword(TsNumberKeyword numberKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSNumber';
      builder.url = dependencies.libraryUrlForType(builder.symbol, numberKeyword);
    }).toDartNode(numberKeyword);
  }

  DartNode<TypeReference> _transpileObjectKeyword(TsObjectKeyword objectKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSObject';
      builder.url = dependencies.libraryUrlForType(builder.symbol, objectKeyword);
    }).toDartNode(objectKeyword);
  }

  DartNode<Expression> _transpileNumericLiteral(TsNumericLiteral numericLiteral) {
    return literalNum(num.parse(numericLiteral.text)).toDartNode(numericLiteral);
  }

  DartNode<Library> _transpilePackage(TsPackage package) {
    final library = Library((builder) {
      builder.ignoreForFile.addAll(_ignoreDirectives);
      builder.name = package.name.split('/').last;
      builder.body.addAll(_transpileNodes(package.sourceFiles.value).toSpecs(dependencies).where((s) => s is! Library));
    });
    libraries.add(library);
    return library.toDartNode<Library>(package);
  }

  DartNode<Reference> _transpileParenthesizedType(TsParenthesizedType parenthesizedType) {
    return _transpileNode<Reference>(parenthesizedType.type.value);
  }

  DartNode<Reference> _transpileParameter(TsParameter parameter) {
    return Parameter((builder) {
      builder.name = _sanitizeParamName(parameter.name.value.nodeName);
      builder.type = _transpileNode<Reference>(typeEvaluator.evaluateType(parameter.type.value)).toSpec(dependencies);
    }).toDartNode(parameter, parameter.questionToken.value != null);
  }

  DartNode<Spec> _transpilePropertyDeclaration(TsPropertyDeclaration propertyDeclaration) {
    final readonly = _containsNodeKind(propertyDeclaration.modifiers.value, TsNodeKind.readonlyKeyword);
    final propertyName = propertyDeclaration.name.value.nodeName;
    if (readonly) {
      return Method((builder) {
        builder.docs.add('/// Property [${propertyDeclaration.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertyDeclaration.toCode()}');
        propertyDeclaration.meta.ifNotOriginalName(propertyName, (originalName) {
          builder.annotations.addJsAnnotation(propertyDeclaration, originalName, dependencies);
        });
        builder.type = MethodType.getter;
        builder.external = true;
        builder.name = propertyName;
        builder.returns = _transpileNode<TypeReference>(
          typeEvaluator.evaluateType(propertyDeclaration.type.value),
        ).toSpec(dependencies)?.copyWith(isNullable: propertyDeclaration.questionToken.value != null);
      }).toDartNode(propertyDeclaration);
    } else {
      return Field((builder) {
        builder.docs.add('/// Property [${propertyDeclaration.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertyDeclaration.toCode()}');
        propertyDeclaration.meta.ifNotOriginalName(propertyName, (originalName) {
          builder.annotations.addJsAnnotation(propertyDeclaration, originalName, dependencies);
        });
        builder.external = true;
        builder.name = propertyName;
        builder.type = _transpileNode<TypeReference>(
          typeEvaluator.evaluateType(propertyDeclaration.type.value),
        ).toSpec(dependencies)?.copyWith(isNullable: propertyDeclaration.questionToken.value != null);
      }).toDartNode(propertyDeclaration);
    }
  }

  DartNode<Spec> _transpilePropertySignature(TsPropertySignature propertySignature) {
    final readonly = _containsNodeKind(propertySignature.modifiers.value, TsNodeKind.readonlyKeyword);
    final propertyName = propertySignature.name.value.nodeName;
    if (readonly) {
      return Method((builder) {
        builder.docs.add('/// Property [${propertySignature.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertySignature.toCode()}');
        propertySignature.meta.ifNotOriginalName(propertyName, (originalName) {
          builder.annotations.addJsAnnotation(propertySignature, originalName, dependencies);
        });
        builder.type = MethodType.getter;
        builder.external = true;
        builder.name = propertyName;
        builder.returns = _transpileNode<TypeReference>(
          typeEvaluator.evaluateType(propertySignature.type.value),
        ).toSpec(dependencies)?.copyWith(isNullable: propertySignature.questionToken.value != null);
      }).toDartNode(propertySignature);
    } else {
      return Field((builder) {
        builder.docs.add('/// Property [${propertySignature.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertySignature.toCode()}');
        propertySignature.meta.ifNotOriginalName(propertyName, (originalName) {
          builder.annotations.addJsAnnotation(propertySignature, originalName, dependencies);
        });
        builder.external = true;
        builder.name = propertyName;
        builder.type = _transpileNode<TypeReference>(
          typeEvaluator.evaluateType(propertySignature.type.value),
        ).toSpec(dependencies)?.copyWith(isNullable: propertySignature.questionToken.value != null);
      }).toDartNode(propertySignature);
    }
  }

  DartNode<Method> _transpileSetAccessor(TsSetAccessor setAccessor) {
    final name = setAccessor.name.value.nodeName;
    return Method((builder) {
      builder.docs.add('/// Get Accessor [$name]');
      builder.docs.add('///');
      builder.docs.add('/// ${setAccessor.toCode()}');
      setAccessor.meta.ifNotOriginalName(name, (originalName) {
        builder.annotations.addJsAnnotation(setAccessor, originalName, dependencies);
      });
      builder.type = MethodType.setter;
      builder.external = true;
      builder.name = name;
      builder.requiredParameters.add(
        Parameter((builder) {
          builder.name = 'value';
          builder.type = _transpileNode<TypeReference>(
            typeEvaluator.evaluateType(setAccessor.type.value),
          ).toSpec(dependencies);
        }),
      );
    }).toDartNode(setAccessor);
  }

  DartNode<Spec> _transpileSourceFile(TsSourceFile sourceFile) {
    return _transpileNodes(sourceFile.statements.value).toSpecs(dependencies).toDartNode(sourceFile);
  }

  DartNode<TypeReference> _transpileStringKeyword(TsStringKeyword stringKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSString';
      builder.url = dependencies.libraryUrlForType(builder.symbol, stringKeyword);
    }).toDartNode(stringKeyword);
  }

  DartNode<Code> _transpileStringLiteral(TsStringLiteral stringLiteral) {
    return Code(stringLiteral.text).toDartNode(stringLiteral);
  }

  DartNode<TypeReference> _transpileTupleType(TsTupleType tupleType) {
    return TypeReference((builder) {
      builder.symbol = 'JSArray';
      builder.url = dependencies.libraryUrlForType(builder.symbol, tupleType);
      builder.types.add(
        TypeReference((builder) {
          builder.symbol = 'JSAny';
          builder.url = dependencies.libraryUrlForType(builder.symbol, tupleType);
        }),
      );
    }).toDartNode(tupleType);
  }

  DartNode<TypeDef> _transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration) {
    final type = typeEvaluator.evaluateType(typeAliasDeclaration.type.value);

    final requiredTypeParameters = _collectTypeParameters(typeAliasDeclaration.type, {});
    final currentTypeParameters = {
      for (var tp in typeAliasDeclaration.typeParameters.value.whereType<TsTypeParameter>()) tp.name.value.nodeName: tp,
    };
    for (var entry in currentTypeParameters.entries) {
      if (requiredTypeParameters.containsKey(entry.key)) {
        requiredTypeParameters.remove(entry.key);
      }
    }

    return TypeDef((builder) {
      builder.docs.addAll([
        '/// Typedef [${typeAliasDeclaration.name.value.nodeName}]',
        '///',
        '/// ${typeAliasDeclaration.type.value?.toCode()}',
      ]);
      builder.name = typeAliasDeclaration.name.value.nodeName;
      builder.types.addAll(
        _transpileNodes<Reference>([
          ...typeAliasDeclaration.typeParameters.value,
          ...requiredTypeParameters.values,
        ]).toSpecs(dependencies),
      );
      builder.definition = _transpileNode<Expression>(type).toSpec(dependencies);
    }).toDartNode(typeAliasDeclaration);
  }

  DartNode<TypeReference> _transpileTypeLiteral(TsTypeLiteral typeLiteral) {
    return TypeReference((builder) {
      builder.symbol = 'JSObject';
      builder.url = dependencies.libraryUrlForType(builder.symbol, typeLiteral);
    }).toDartNode(typeLiteral);
  }

  DartNode<TypeReference> _transpileTypeOperator(TsTypeOperator typeOperator) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, typeOperator);
    }).toDartNode(typeOperator);
  }

  DartNode<TypeReference> _transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.value.nodeName;
    final extendsClause = _transpileNode<Reference>(typeParameter.constraint.value).toSpecs(dependencies);
    return TypeReference((builder) {
      builder.symbol = name;
      builder.url = dependencies.libraryUrlForType(name, typeParameter);
      if (name != 'JSAny') {
        builder.bound =
            extendsClause.firstOrNull ??
            TypeReference((builder) {
              builder.symbol = 'JSAny';
              builder.url = dependencies.libraryUrlForType(builder.symbol, typeParameter);
            });
      }
    }).toDartNode(typeParameter);
  }

  DartNode<TypeReference> _transpileTypeQuery(TsTypeQuery typeQuery) {
    return TypeReference((builder) {
      builder.symbol = 'JSString';
      builder.url = dependencies.libraryUrlForType(builder.symbol, typeQuery);
    }).toDartNode(typeQuery);
  }

  DartNode<TypeReference> _transpileTypeReference(TsTypeReference typeReference) {
    final type = typeEvaluator.evaluateType(typeReference);

    if (type.nodeName == '__<VOID>__') {
      return _transpileVoidKeyword(TsVoidKeyword());
    }

    final isNullable = type.typeName.value.nodeName?.endsWith('?') ?? false;
    final name = isNullable
        ? type.typeName.value.nodeName?.substring(0, type.typeName.value.nodeName!.length - 1)
        : type.typeName.value.nodeName;
    final nameWithoutQualifier = name?.contains('.') ?? false ? name?.split('.').last : name;

    return TypeReference((builder) {
      builder.symbol = nameWithoutQualifier;
      builder.url = dependencies.libraryUrlForType(name, typeReference);
      builder.isNullable = isNullable;
      builder.types.addAll(_transpileNodes<Reference>(type.typeArguments.value).toSpecs(dependencies));
    }).toDartNode(typeReference);
  }

  DartNode<TypeReference> _transpileUndefinedKeyword(TsUndefinedKeyword undefinedKeyword) {
    return _nullType.toDartNode(undefinedKeyword);
  }

  DartNode<Reference> _transpileUnionType(TsUnionType unionType) {
    final types = typeEvaluator.evaluateTypes(unionType.types.value);
    if (types.length == 1) {
      return _transpileTypeReference(types.first);
    }
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, unionType);
    }).toDartNode(unionType);
  }

  DartNode<Reference> _transpileUnknownKeyword(TsUnknownKeyword unknownKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol, unknownKeyword);
    }).toDartNode(unknownKeyword);
  }

  DartNode<Spec> _transpileVariableDeclaration(TsVariableDeclaration variableDeclaration) {
    return Code.scope((allocator) {
      return [
        '/// Variable [${variableDeclaration.name.value.nodeName}]',
        '///',
        '/// ${variableDeclaration.toCode()}',
        '@${allocator(TypeReference((builder) {
          builder.symbol = 'JS';
          builder.url = dependencies.libraryUrlForType(builder.symbol, variableDeclaration);
        }))}(\'${variableDeclaration.meta.originalName}\')',
        'external ${allocator(_transpileNode<Reference>(variableDeclaration.type.value).toSpec(dependencies) ?? Reference('JSAny', dependencies.libraryUrlForType('JSAny', variableDeclaration)))} ${variableDeclaration.name.value.nodeName};',
      ].join('\n');
    }).toDartNode(variableDeclaration);
  }

  DartNode<Spec> _transpileVariableDeclarationList(TsVariableDeclarationList variableDeclarationList) {
    return DartFragment(
      _transpileNodes(variableDeclarationList.declarations.value).expand((e) => e.toSpecs(dependencies)).toList(),
      variableDeclarationList,
    );
  }

  DartNode<Spec> _transpileVariableStatement(TsVariableStatement variableStatement) {
    return _transpileNode(variableStatement.declarationList.value);
  }

  DartNode<TypeReference> _transpileVoidKeyword(TsVoidKeyword voidKeyword) {
    return _voidType.toDartNode(voidKeyword);
  }

  DartNode<S> _transpileNode<S extends Spec>(TsNode? node) {
    final DartNode<S> transpiledNode = switch (node) {
      null => DartNode.empty<S>(Ts$Null()),
      Ts$Null() => DartNode.empty<S>(node),
      Ts$Unsupported() => DartNode.empty<S>(node),
      Ts$Removed() => DartNode.empty<S>(node),
      Ts$Dependencies() => DartNode.empty<S>(node),
      TsAnyKeyword() => _transpileAnyKeyword(node),
      TsArrayType() => _transpileArrayType(node),
      TsBigIntKeyword() => _transpileBigIntKeyword(node),
      TsBooleanKeyword() => _transpileBooleanKeyword(node),
      TsCallSignature() => DartNode.empty<S>(node),
      TsClassDeclaration() => _transpileClassDeclaration(node),
      TsConditionalType() => _transpileConditionalType(node),
      TsConstructorDeclaration() => _transpileConstructorDeclaration(node),
      TsConstructSignature() => _transpileConstructSignature(node),
      TsConstructorType() => _transpileConstructorType(node),
      TsEnumDeclaration() => _transpileEnumDeclaration(node),
      TsExportDeclaration() => _transpileExportDeclaration(node),
      TsExpressionWithTypeArguments() => _transpileExpressionWithTypeArguments(node),
      TsImportDeclaration() => _transpileImportDeclaration(node),
      TsFunctionDeclaration() => _transpileFunctionDeclaration(node),
      TsFunctionType() => _transpileFunctionType(node),
      TsGetAccessor() => _transpileGetAccessor(node),
      TsHeritageClause() => _transpileHeritageClause(node),
      TsInterfaceDeclaration() => _transpileInterfaceDeclaration(node),
      TsIndexSignature() => _transpileIndexSignature(node),
      TsIntersectionType() => _transpileIntersectionType(node),
      TsLiteralType() => _transpileLiteralType(node),
      TsMappedType() => _transpileMappedType(node),
      TsMethodDeclaration() => _transpileMethodDeclaration(node),
      TsMethodSignature() => _transpileMethodSignature(node),
      TsModuleDeclaration() => _transpileModuleDeclaration(node),
      TsNullKeyword() => _transpileNullKeyword(node),
      TsNumberKeyword() => _transpileNumberKeyword(node),
      TsNumericLiteral() => _transpileNumericLiteral(node),
      TsObjectKeyword() => _transpileObjectKeyword(node),
      TsPackage() => _transpilePackage(node),
      TsParenthesizedType() => _transpileParenthesizedType(node),
      TsParameter() => _transpileParameter(node),
      TsPropertyDeclaration() => _transpilePropertyDeclaration(node),
      TsPropertySignature() => _transpilePropertySignature(node),
      TsSetAccessor() => _transpileSetAccessor(node),
      TsSourceFile() => _transpileSourceFile(node),
      TsStringKeyword() => _transpileStringKeyword(node),
      TsStringLiteral() => _transpileStringLiteral(node),
      TsTupleType() => _transpileTupleType(node),
      TsTypeAliasDeclaration() => _transpileTypeAliasDeclaration(node),
      TsTypeLiteral() => _transpileTypeLiteral(node),
      TsTypeOperator() => _transpileTypeOperator(node),
      TsTypeParameter() => _transpileTypeParameter(node),
      TsTypeQuery() => _transpileTypeQuery(node),
      TsTypeReference() => _transpileTypeReference(node),
      TsUndefinedKeyword() => _transpileUndefinedKeyword(node),
      TsUnionType() => _transpileUnionType(node),
      TsUnknownKeyword() => _transpileUnknownKeyword(node),
      TsVariableDeclaration() => _transpileVariableDeclaration(node),
      TsVariableDeclarationList() => _transpileVariableDeclarationList(node),
      TsVariableStatement() => _transpileVariableStatement(node),
      TsVoidKeyword() => _transpileVoidKeyword(node),
      _ => DartUnsupported<S>(node),
    };

    if (transpiledNode is DartUnsupported<S>) {
      print('WARNING: Unsupported node $node');
      return transpiledNode.toEmpty();
    }

    return transpiledNode;
  }

  List<DartNode<T>> _transpileNodes<T extends Spec>(List<TsNode> nodes) {
    final result = <DartNode<T>>[];
    for (final node in nodes) {
      final dartNode = _transpileNode<T>(node);
      result.add(dartNode);
    }
    return result;
  }
}
