import 'package:code_builder/code_builder.dart';
import 'package:ts_interop/src/model/dart_node.dart';
import 'package:ts_interop/src/transpiler/type_evaluator.dart';
import 'package:ts_interop/ts_interop.dart';

import '../model/ts_node.dart';

final _voidType = TypeReference((builder) {
  builder.symbol = 'void';
});

final _nullType = TypeReference((builder) {
  builder.symbol = 'null';
});

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

  Transpiler(this.typeEvaluator, this.dependencies);

  List<Library> transpile(TsPackage package) {
    updateParentAndChilds(package, package.parent);
    return _transpileNode<Library>(package).toSpecs(dependencies);
  }

  DartNode<TypeReference> _transpileAnyKeyword(TsAnyKeyword anyKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(anyKeyword);
  }

  DartNode<TypeReference> _transpileArrayType(TsArrayType arrayType) {
    return TypeReference((builder) {
      builder.symbol = 'JSArray';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
      final elementType = _transpileNode<Reference>(arrayType.elementType.value).toSpecs(dependencies);
      if (elementType.isNotEmpty) {
        builder.types.add(elementType.first);
      } else {
        builder.types.add(TypeReference((builder) {
          builder.symbol = 'JSAny';
          builder.url = dependencies.libraryUrlForType(builder.symbol);
        }));
      }
    }).toDartNode(arrayType);
  }

  DartNode<TypeReference> _transpileBooleanKeyword(TsBooleanKeyword booleanKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSBoolean';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(booleanKeyword);
  }

  DartNode<ExtensionType> _transpileClassDeclaration(TsClassDeclaration classDeclaration) {
    final isAbstract = _containsNodeKind(classDeclaration.modifiers.value, TsNodeKind.abstractKeyword);
    final members = _transpileNodes(classDeclaration.members.value); //.toSpecs(dependencies);

    return ExtensionType((builder) {
      builder.docs.add('/// Class [${classDeclaration.name.value.nodeName}]');
      builder.name = classDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(classDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.primaryConstructorName = isAbstract ? '_' : '\$';
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      }));
      builder.implements
          .addAll(_transpileNodes<Reference>(classDeclaration.heritageClauses.value).toSpecs(dependencies));
      builder.constructors.addAll(members.whereType<DartConstructor>().map((c) => c.constructor));
      builder.fields.addAll(members.expand((m) => m.toSpecs(dependencies)).whereType<Field>());
      builder.methods.addAll(members.expand((m) => m.toSpecs(dependencies)).whereType<Method>());
    }).toDartNode(classDeclaration);
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
      builder.requiredParameters.addAll(_transpileNodes<Reference>(constructorDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => !p.isNullable)
          .map((node) => node.parameter)
          .toList());
      builder.optionalParameters.addAll(_transpileNodes<Reference>(constructorDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => p.isNullable)
          .map((node) => node.parameter)
          .toList());
    }).toDartNode(constructorDeclaration);
  }

  DartNode<ExtensionType> _transpileEnumDeclaration(TsEnumDeclaration enumDeclaration) {
    return ExtensionType((builder) {
      builder.docs.add('/// enum ${enumDeclaration.name.value.nodeName}');
      builder.name = enumDeclaration.name.value.nodeName;
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      }));
    }).toDartNode(enumDeclaration);
  }

  DartNode<TypeReference> _transpileExpressionWithTypeArguments(
      TsExpressionWithTypeArguments expressionWithTypeArguments) {
    final expression = expressionWithTypeArguments.expression.value;
    return switch (expression) {
      TsIdentifier() => TypeReference((builder) {
          builder.symbol = expression.nodeName;
          builder.url = dependencies.libraryUrlForType(expression.nodeName);
          builder.types.addAll(
              _transpileNodes<Reference>(expressionWithTypeArguments.typeArguments.value).toSpecs(dependencies));
        }),
      _ => throw StateError('WARNING: Unsupported expression type ${expression.kind.name}:${expression.nodeName}'),
    }
        .toDartNode(expressionWithTypeArguments);
  }

  DartNode<Method> _transpileFunctionDeclaration(TsFunctionDeclaration functionDeclaration) {
    return Method((builder) {
      builder.external = true;
      builder.returns = _transpileNode<Reference>(functionDeclaration.type.value).toSpecs(dependencies).firstOrNull;
      builder.name = functionDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(functionDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(_transpileNodes<Reference>(functionDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => !p.isNullable)
          .map((node) => node.parameter)
          .toList());
      builder.optionalParameters.addAll(_transpileNodes<Reference>(functionDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => p.isNullable)
          .map((node) => node.parameter)
          .toList());
    }).toDartNode(functionDeclaration);
  }

  DartNode<TypeReference> _transpileFunctionType(TsFunctionType functionType) {
    return TypeReference((builder) {
      builder.symbol = 'JSFunction';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(functionType);
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
        builder.requiredParameters.addAll(_transpileNodes<Reference>(indexSignature.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
        builder.requiredParameters.add(Parameter((builder) {
          builder.type = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies);
          builder.name = 'value';
        }));
      }),
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []';
        builder.returns = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies);
        builder.requiredParameters.addAll(_transpileNodes<Reference>(indexSignature.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
      }),
    ].toDartNode(indexSignature);
  }

  DartNode<ExtensionType> _transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration) {
    final members = _transpileNodes(interfaceDeclaration.members.value).toSpecs(dependencies);

    return ExtensionType((builder) {
      builder.docs.add('/// Interface [${interfaceDeclaration.name.value.nodeName}]');
      builder.name = interfaceDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(interfaceDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.primaryConstructorName = '\$';
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = dependencies.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      }));
      builder.implements
          .addAll(_transpileNodes<Reference>(interfaceDeclaration.heritageClauses.value).toSpecs(dependencies));
      builder.fields.addAll(members.whereType<Field>());
      builder.methods.addAll(members.whereType<Method>());
    }).toDartNode(interfaceDeclaration);
  }

  DartNode<TypeReference> _transpileIntersectionType(TsIntersectionType intersectionType) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(intersectionType);
  }

  DartNode<Spec> _transpileLiteralType(TsLiteralType literalType) {
    return _transpileNode(literalType.literal.value);
  }

  DartNode<Method> _transpileMethodDeclaration(TsMethodDeclaration methodDeclaration) {
    final methodName = methodDeclaration.name.value.nodeName;
    if (methodName == null) {
      return DartNode.empty<Method>(methodDeclaration);
    }

    final overloadIds = <int>[];
    if (methodDeclaration.parent case final parent?) {
      final overloads = parent.searchDown<TsMethodSignature>(hasName(methodName));
      for (final overload in overloads) {
        overloadIds.add(overload.id);
      }
    }
    overloadIds.sort();

    return Method((builder) {
      builder.docs.addAll([
        '/// Method [${methodDeclaration.name.value.nodeName}]',
        if (methodDeclaration.typeParameters.value.isNotEmpty) ...['///', '/// Type Parameters:'],
        ...methodDeclaration.typeParameters.value.map((tp) => '/// - ${tp.toCode()}'),
        if (methodDeclaration.parameters.value.isNotEmpty) ...['///', '/// Parameters:'],
        ...methodDeclaration.parameters.value.map((tp) => '/// - ${tp.toCode()}'),
      ]);
      if (overloadIds.length > 1) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(CodeExpression(
            Code("${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS')))}('$methodName')")));
      }
      builder.external = true;
      builder.static = _containsNodeKind(methodDeclaration.modifiers.value, TsNodeKind.staticKeyword);
      builder.returns =
          _transpileNode<Reference>(typeEvaluator.evaluateType(methodDeclaration.type.value)).toSpec(dependencies);
      builder.name =
          '${methodDeclaration.name.value.nodeName}${overloadIds.length > 1 ? '\$${overloadIds.indexOf(methodDeclaration.id) + 1}' : ''}';
      builder.types.addAll(_transpileNodes<Reference>(methodDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(_transpileNodes<Reference>(methodDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => !p.isNullable)
          .map((node) => node.parameter)
          .toList());
      builder.optionalParameters.addAll(_transpileNodes<Reference>(methodDeclaration.parameters.value)
          .cast<DartParameter>()
          .where((p) => p.isNullable)
          .map((node) => node.parameter)
          .toList());
    }).toDartNode(methodDeclaration);
  }

  DartNode<Method> _transpileMethodSignature(TsMethodSignature methodSignature) {
    final methodName = methodSignature.name.value.nodeName;
    if (methodName == null) {
      return DartNode.empty<Method>(methodSignature);
    }

    final overloadIds = <int>[];
    if (methodSignature.parent case final parent?) {
      final overloads = parent.searchDown<TsMethodSignature>(hasName(methodName));
      for (final overload in overloads) {
        overloadIds.add(overload.id);
      }
    }
    overloadIds.sort();

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
      if (overloadIds.length > 1) {
        final allocator = Allocator.simplePrefixing();
        builder.annotations.add(CodeExpression(
            Code("${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS')))}('$methodName')")));
      }
      builder.external = true;
      builder.returns =
          _transpileNode<Reference>(typeEvaluator.evaluateType(methodSignature.type.value)).toSpec(dependencies);
      builder.name =
          '${methodSignature.name.value.nodeName}${overloadIds.length > 1 ? '\$${overloadIds.indexOf(methodSignature.id) + 1}' : ''}';
      builder.types.addAll(_transpileNodes<Reference>(methodSignature.typeParameters.value).toSpecs(dependencies));
      builder.requiredParameters.addAll(_transpileNodes<Reference>(methodSignature.parameters.value)
          .cast<DartParameter>()
          .where((p) => !p.isNullable)
          .map((node) => node.parameter)
          .toList());
      builder.optionalParameters.addAll(_transpileNodes<Reference>(methodSignature.parameters.value)
          .cast<DartParameter>()
          .where((p) => p.isNullable)
          .map((node) => node.parameter)
          .toList());
    }).toDartNode(methodSignature);
  }

  DartNode<TypeReference> _transpileNullKeyword(TsNullKeyword nullKeyword) {
    return _nullType.toDartNode(nullKeyword);
  }

  DartNode<TypeReference> _transpileNumberKeyword(TsNumberKeyword numberKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSNumber';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(numberKeyword);
  }

  DartNode<Expression> _transpileNumericLiteral(TsNumericLiteral numericLiteral) {
    return literalNum(num.parse(numericLiteral.text)).toDartNode(numericLiteral);
  }

  DartNode<Library> _transpilePackage(TsPackage package) {
    return Library((builder) {
      builder.ignoreForFile.addAll([
        'non_constant_identifier_names',
        'camel_case_types',
      ]);
      builder.body.addAll(_transpileNodes(package.sourceFiles.value).toSpecs(dependencies));
    }).toDartNode(package);
  }

  DartNode<Reference> _transpileParameter(TsParameter parameter) {
    return Parameter((builder) {
      builder.name = parameter.name.value.nodeName ?? '';
      builder.type = _transpileNode<Reference>(typeEvaluator.evaluateType(parameter.type.value)).toSpec(dependencies);
    }).toDartNode(
      parameter,
      parameter.questionToken.value != null,
    );
  }

  DartNode<Spec> _transpilePropertyDeclaration(TsPropertyDeclaration propertyDeclaration) {
    final readonly = _containsNodeKind(propertyDeclaration.modifiers.value, TsNodeKind.readonlyKeyword);
    if (readonly) {
      return Method((builder) {
        builder.docs.add('/// Property [${propertyDeclaration.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertyDeclaration.toCode()}');
        builder.type = MethodType.getter;
        builder.external = true;
        builder.name = propertyDeclaration.name.value.nodeName;
        builder.returns = _transpileNode<TypeReference>(typeEvaluator.evaluateType(propertyDeclaration.type.value))
            .toSpec(dependencies)
            ?.copyWith(isNullable: propertyDeclaration.questionToken.value != null);
      }).toDartNode(propertyDeclaration);
    } else {
      return Field((builder) {
        builder.docs.add('/// Property [${propertyDeclaration.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertyDeclaration.toCode()}');
        builder.external = true;
        builder.name = propertyDeclaration.name.value.nodeName;
        builder.type = _transpileNode<TypeReference>(typeEvaluator.evaluateType(propertyDeclaration.type.value))
            .toSpec(dependencies)
            ?.copyWith(isNullable: propertyDeclaration.questionToken.value != null);
      }).toDartNode(propertyDeclaration);
    }
  }

  DartNode<Spec> _transpilePropertySignature(TsPropertySignature propertySignature) {
    final readonly = _containsNodeKind(propertySignature.modifiers.value, TsNodeKind.readonlyKeyword);
    if (readonly) {
      return Method((builder) {
        builder.docs.add('/// Property [${propertySignature.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertySignature.toCode()}');

        builder.type = MethodType.getter;
        builder.external = true;
        builder.name = propertySignature.name.value.nodeName;
        builder.returns = _transpileNode<TypeReference>(typeEvaluator.evaluateType(propertySignature.type.value))
            .toSpec(dependencies)
            ?.copyWith(isNullable: propertySignature.questionToken.value != null);
      }).toDartNode(propertySignature);
    } else {
      return Field((builder) {
        builder.docs.add('/// Property [${propertySignature.name.value.nodeName}]');
        builder.docs.add('///');
        builder.docs.add('/// ${propertySignature.toCode()}');
        builder.external = true;
        builder.name = propertySignature.name.value.nodeName;
        builder.type = _transpileNode<TypeReference>(typeEvaluator.evaluateType(propertySignature.type.value))
            .toSpec(dependencies)
            ?.copyWith(isNullable: propertySignature.questionToken.value != null);
      }).toDartNode(propertySignature);
    }
  }

  DartNode<Spec> _transpileSourceFile(TsSourceFile sourceFile) {
    return _transpileNodes(sourceFile.statements.value).toSpecs(dependencies).toDartNode(sourceFile);
  }

  DartNode<TypeReference> _transpileStringKeyword(TsStringKeyword stringKeyword) {
    return TypeReference((builder) {
      builder.symbol = 'JSString';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(stringKeyword);
  }

  DartNode<Code> _transpileStringLiteral(TsStringLiteral stringLiteral) {
    return Code(stringLiteral.text).toDartNode(stringLiteral);
  }

  DartNode<TypeReference> _transpileTupleType(TsTupleType tupleType) {
    return TypeReference((builder) {
      builder.symbol = 'JSArray';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
      builder.types.add(TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      }));
    }).toDartNode(tupleType);
  }

  DartNode<TypeDef> _transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration) {
    final type = typeEvaluator.evaluateType(typeAliasDeclaration.type.value);

    return TypeDef((builder) {
      builder.docs.addAll([
        '/// Typedef [${typeAliasDeclaration.name.value.nodeName}]',
        '///',
        '/// ${typeAliasDeclaration.type.value?.toCode()}',
      ]);
      builder.name = typeAliasDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(typeAliasDeclaration.typeParameters.value).toSpecs(dependencies));
      builder.definition = _transpileNode<Expression>(type).toSpec(dependencies);
    }).toDartNode(typeAliasDeclaration);
  }

  DartNode<TypeReference> _transpileTypeLiteral(TsTypeLiteral typeLiteral) {
    return TypeReference((builder) {
      builder.symbol = 'JSObject';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(typeLiteral);
  }

  DartNode<TypeReference> _transpileTypeOperator(TsTypeOperator typeOperator) {
    return TypeReference((builder) {
      builder.symbol = 'JSAny';
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(typeOperator);
  }

  DartNode<TypeReference> _transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.value.nodeName;
    final extendsClause = _transpileNode<Reference>(typeParameter.constraint.value).toSpecs(dependencies);
    return TypeReference((builder) {
      builder.symbol = name;
      builder.bound = extendsClause.firstOrNull ??
          TypeReference((builder) {
            builder.symbol = 'JSAny';
            builder.url = dependencies.libraryUrlForType(builder.symbol);
          });
    }).toDartNode(typeParameter);
  }

  DartNode<TypeReference> _transpileTypeReference(TsTypeReference typeReference) {
    if (typeReference.typeName.value.nodeName == '__<VOID>__') {
      return _transpileVoidKeyword(TsVoidKeyword());
    }
    final isNullable = typeReference.typeName.value.nodeName?.endsWith('?') ?? false;
    final name = isNullable
        ? typeReference.typeName.value.nodeName!.substring(0, typeReference.typeName.value.nodeName!.length - 1)
        : typeReference.typeName.value.nodeName;

    return TypeReference((builder) {
      builder.symbol = name;
      builder.url = dependencies.libraryUrlForType(name);
      builder.isNullable = isNullable;
      builder.types.addAll(_transpileNodes<Reference>(typeReference.typeArguments.value).toSpecs(dependencies));
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
      builder.url = dependencies.libraryUrlForType(builder.symbol);
    }).toDartNode(unionType);
  }

  DartNode<TypeReference> _transpileVoidKeyword(TsVoidKeyword voidKeyword) {
    return _voidType.toDartNode(voidKeyword);
  }

  DartNode<S> _transpileNode<S extends Spec>(TsNode? node) {
    final DartNode<S> transpiledNode = switch (node) {
      null => DartNode.empty(Ts$Null()),
      Ts$Removed() => DartNode.empty<S>(node),
      TsAnyKeyword() => _transpileAnyKeyword(node),
      TsArrayType() => _transpileArrayType(node),
      TsBooleanKeyword() => _transpileBooleanKeyword(node),
      TsClassDeclaration() => _transpileClassDeclaration(node),
      TsConstructorDeclaration() => _transpileConstructorDeclaration(node),
      TsEnumDeclaration() => _transpileEnumDeclaration(node),
      TsExpressionWithTypeArguments() => _transpileExpressionWithTypeArguments(node),
      TsFunctionDeclaration() => _transpileFunctionDeclaration(node),
      TsFunctionType() => _transpileFunctionType(node),
      TsHeritageClause() => _transpileHeritageClause(node),
      TsInterfaceDeclaration() => _transpileInterfaceDeclaration(node),
      TsIndexSignature() => _transpileIndexSignature(node),
      TsIntersectionType() => _transpileIntersectionType(node),
      TsLiteralType() => _transpileLiteralType(node),
      TsMethodDeclaration() => _transpileMethodDeclaration(node),
      TsMethodSignature() => _transpileMethodSignature(node),
      TsNullKeyword() => _transpileNullKeyword(node),
      TsNumberKeyword() => _transpileNumberKeyword(node),
      TsNumericLiteral() => _transpileNumericLiteral(node),
      TsPackage() => _transpilePackage(node),
      TsParameter() => _transpileParameter(node),
      TsPropertyDeclaration() => _transpilePropertyDeclaration(node),
      TsPropertySignature() => _transpilePropertySignature(node),
      TsSourceFile() => _transpileSourceFile(node),
      TsStringKeyword() => _transpileStringKeyword(node),
      TsStringLiteral() => _transpileStringLiteral(node),
      TsTupleType() => _transpileTupleType(node),
      TsTypeAliasDeclaration() => _transpileTypeAliasDeclaration(node),
      TsTypeLiteral() => _transpileTypeLiteral(node),
      TsTypeOperator() => _transpileTypeOperator(node),
      TsTypeParameter() => _transpileTypeParameter(node),
      TsTypeReference() => _transpileTypeReference(node),
      TsUndefinedKeyword() => _transpileUndefinedKeyword(node),
      TsUnionType() => _transpileUnionType(node),
      TsVoidKeyword() => _transpileVoidKeyword(node),
      _ => DartUnsupported<S>(node),
    };

    if (transpiledNode is DartUnsupported<S>) {
      print('WARNING: Unsupported node $node');
      return (transpiledNode).toEmpty();
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
