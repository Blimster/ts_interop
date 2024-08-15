import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:ts_interop/src/model/dart_node.dart';
import 'package:ts_interop/src/transpiler/type_evaluator.dart';
import 'package:ts_interop/ts_interop.dart';

import '../model/ts_node.dart';

const _voidType = Reference('void');

bool _containsNodeKind(List<TsNode> nodes, TsNodeKind kind) {
  for (final node in nodes) {
    if (node.kind == kind) {
      return true;
    }
  }
  return false;
}

extension _DartNodeIterable<T extends Spec> on Iterable<DartNode<T>> {
  List<T> toSpec(Dependencies config) {
    final result = <T>[];
    for (final node in this) {
      result.add(node.toSpec(config));
    }
    return result;
  }
}

extension _SpecToDartNode<T extends Spec> on Iterable<T> {
  List<DartNode<T>> toDartNode({TsNodeMeta? meta}) {
    final result = <DartNode<T>>[];
    for (final node in this) {
      result.add(DartSpec(node, meta: meta));
    }
    return result;
  }
}

class Transpiler {
  final TypeEvaluator typeEvaluator;
  final Dependencies dependencies;

  Transpiler(this.typeEvaluator, this.dependencies);

  List<Spec> transpile(TsPackage package) {
    updateParentAndChilds(package, package.parent);
    return _transpileNode<Library>(package).toSpec(dependencies);
  }

  List<DartNode<Spec>> _transpileAnyKeyword(TsAnyKeyword anyKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileArrayType(TsArrayType arrayType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
        final elementType = _transpileNode<Reference>(arrayType.elementType.value).toSpec(dependencies);
        if (elementType.isNotEmpty) {
          builder.types.add(elementType.first);
        } else {
          builder.types.add(TypeReference((builder) {
            builder.symbol = 'JSAny';
            builder.url = dependencies.libraryUrlForType(builder.symbol);
          }));
        }
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileBooleanKeyword(TsBooleanKeyword booleanKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSBoolean';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileClassDeclaration(TsClassDeclaration classDeclaration) {
    final isAbstract = _containsNodeKind(classDeclaration.modifiers.value, TsNodeKind.abstractKeyword);
    final members = _transpileNodes(classDeclaration.members.value).map((m) => m.toSpec(dependencies));

    final extensionType = ExtensionType((builder) {
      builder.docs.add('/// Class [${classDeclaration.name.value.nodeName}]');
      builder.name = classDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(classDeclaration.typeParameters.value).toSpec(dependencies));
      builder.primaryConstructorName = isAbstract ? '_' : '';
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
          .addAll(_transpileNodes<Reference>(classDeclaration.heritageClauses.value).toSpec(dependencies));
      builder.fields.addAll(members.whereType<Field>());
      builder.methods.addAll(members.whereType<Method>());
    });
    return [extensionType].toDartNode();
  }

  List<DartNode<Spec>> _transpileEnumDeclaration(TsEnumDeclaration enumDeclaration) {
    final extensionType = ExtensionType((builder) {
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
    });
    return [extensionType].toDartNode();
  }

  List<DartNode<Spec>> _transpileExpressionWithTypeArguments(
      TsExpressionWithTypeArguments expressionWithTypeArguments) {
    final expression = expressionWithTypeArguments.expression.value;
    final result = <Reference>[];
    switch (expression) {
      case TsIdentifier():
        result.add(TypeReference((builder) {
          builder.symbol = expression.nodeName;
          builder.url = dependencies.libraryUrlForType(expression.nodeName);
          builder.types
              .addAll(_transpileNodes<Reference>(expressionWithTypeArguments.typeArguments.value).toSpec(dependencies));
        }));
      default:
        print('WARNING: Unsupported expression type ${expression.kind.name}:${expression.nodeName}');
    }
    return result.toDartNode();
  }

  List<DartNode<Spec>> _transpileFunctionDeclaration(TsFunctionDeclaration functionDeclaration) {
    return [
      Method((builder) {
        builder.external = true;
        builder.returns = _transpileNode<Reference>(functionDeclaration.type.value).toSpec(dependencies).firstOrNull;
        builder.name = functionDeclaration.name.value.nodeName;
        builder.types.addAll(_transpileNodes<Reference>(functionDeclaration.typeParameters.value).toSpec(dependencies));
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
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileFunctionType(TsFunctionType functionType) {
    return [
      // FunctionType((builder) {
      //   builder.symbol = 'JSFunction';
      //   builder.url = config.libForType(builder.symbol);
      //   builder.returnType = _transpileNode<Reference>(functionType.type).toSpec(config).firstOrNull;
      //   builder.types.addAll(_transpileNodes<Reference>(functionType.typeParameters).toSpec(config));
      //   builder.requiredParameters.addAll(_transpileNodes<Reference>(functionType.parameters).toSpec(config));
      // }),
      TypeReference((builder) {
        builder.symbol = 'JSFunction';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileHeritageClause(TsHeritageClause heritageClause) {
    heritageClause.types.value.map(_transpileNode).toList();
    final result = <Reference>[];
    for (final type in heritageClause.types.value) {
      result.addAll(_transpileNode<Reference>(type).toSpec(dependencies));
    }
    return result.toDartNode();
  }

  List<DartNode<Spec>> _transpileIndexSignature(TsIndexSignature indexSignature) {
    return <Spec>[
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []=';
        builder.returns = _voidType;
        builder.requiredParameters.addAll(_transpileNodes<Reference>(indexSignature.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
        builder.requiredParameters.add(Parameter((builder) {
          builder.type = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies).firstOrNull;
          builder.name = 'value';
        }));
      }),
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []';
        builder.returns = _transpileNode<Reference>(indexSignature.type.value).toSpec(dependencies).firstOrNull;
        builder.requiredParameters.addAll(_transpileNodes<Reference>(indexSignature.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
      }),
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration) {
    final members = _transpileNodes(interfaceDeclaration.members.value).map((m) => m.toSpec(dependencies));

    final extensionType = ExtensionType((builder) {
      builder.docs.add('/// Interface [${interfaceDeclaration.name.value.nodeName}]');
      builder.name = interfaceDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(interfaceDeclaration.typeParameters.value).toSpec(dependencies));
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
          .addAll(_transpileNodes<Reference>(interfaceDeclaration.heritageClauses.value).toSpec(dependencies));
      builder.fields.addAll(members.whereType<Field>());
      builder.methods.addAll(members.whereType<Method>());
    });
    return [extensionType].toDartNode();
  }

  List<DartNode<Spec>> _transpileIntersectionType(TsIntersectionType intersectionType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileLiteralType(TsLiteralType literalType) {
    return _transpileNode(literalType.literal.value);
  }

  List<DartNode<Spec>> _transpileMethodSignature(TsMethodSignature methodSignature) {
    final methodName = methodSignature.name.value.nodeName;
    if (methodName == null) {
      return [];
    }

    final overloadIds = <int>[];
    if (methodSignature.parent case final parent?) {
      final overloads = parent.searchDown<TsMethodSignature>(hasName(methodName));
      for (final overload in overloads) {
        overloadIds.add(overload.id);
      }
    }
    overloadIds.sort();

    return [
      Method((builder) {
        builder.docs.addAll([
          '/// Method [${methodSignature.name.value.nodeName}]',
          if (methodSignature.typeParameters.value.isNotEmpty) '///',
          ...methodSignature.typeParameters.value.map((tp) => '/// ${tp.toCode()}'),
        ]);
        if (overloadIds.length > 1) {
          final allocator = Allocator.simplePrefixing();
          builder.annotations.add(CodeExpression(
              Code("${allocator.allocate(refer('JS', dependencies.libraryUrlForType('JS')))}('$methodName')")));
        }
        builder.external = true;
        builder.returns = _transpileNode<Reference>(typeEvaluator.evaluateType(methodSignature.type.value))
            .toSpec(dependencies)
            .firstOrNull;
        builder.name =
            '${methodSignature.name.value.nodeName}${overloadIds.length > 1 ? '\$${overloadIds.indexOf(methodSignature.id) + 1}' : ''}';
        builder.types.addAll(_transpileNodes<Reference>(methodSignature.typeParameters.value).toSpec(dependencies));
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
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileNumberKeyword(TsNumberKeyword numberKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSNumber';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileNumericLiteral(TsNumericLiteral numericLiteral) {
    return [
      literalNum(num.parse(numericLiteral.text)),
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpilePackage(TsPackage package) {
    return [
      Library((builder) {
        builder.ignoreForFile.addAll([
          'non_constant_identifier_names',
          'camel_case_types',
        ]);
        builder.body.addAll(_transpileNodes(package.sourceFiles.value).toSpec(dependencies));
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileParameter(TsParameter parameter) {
    return [
      DartParameter(
        Parameter((builder) {
          builder.name = parameter.name.value.nodeName ?? '';
          builder.type = _transpileNode<Reference>(parameter.type.value).toSpec(dependencies).firstOrNull;
        }),
        parameter.questionToken.value != null,
      )
    ];
  }

  List<DartNode<Spec>> _transpilePropertyDeclaration(TsPropertyDeclaration propertySignature) {
    final readonly = _containsNodeKind(propertySignature.modifiers.value, TsNodeKind.readonlyKeyword);
    if (readonly) {
      return [
        Method((builder) {
          builder.type = MethodType.getter;
          builder.external = true;
          builder.name = propertySignature.name.value.nodeName;
          builder.returns = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(dependencies)
              .firstOrNull;
        }),
      ].toDartNode();
    } else {
      return [
        Field((builder) {
          builder.external = true;
          builder.name = propertySignature.name.value.nodeName;
          builder.type = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(dependencies)
              .firstOrNull;
        }),
      ].toDartNode();
    }
  }

  List<DartNode<Spec>> _transpilePropertySignature(TsPropertySignature propertySignature) {
    final readonly = _containsNodeKind(propertySignature.modifiers.value, TsNodeKind.readonlyKeyword);
    if (readonly) {
      return [
        Method((builder) {
          builder.type = MethodType.getter;
          builder.external = true;
          builder.name = propertySignature.name.value.nodeName;
          builder.returns = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(dependencies)
              .firstOrNull;
        }),
      ].toDartNode();
    } else {
      return [
        Field((builder) {
          builder.external = true;
          builder.name = propertySignature.name.value.nodeName;
          builder.type = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(dependencies)
              .firstOrNull;
        }),
      ].toDartNode();
    }
  }

  List<DartNode<Spec>> _transpileSourceFile(TsSourceFile sourceFile) {
    return _transpileNodes(sourceFile.statements.value);
  }

  List<DartNode<Spec>> _transpileStringKeyword(TsStringKeyword stringKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSString';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileStringLiteral(TsStringLiteral stringKeyword) {
    return [
      Code(stringKeyword.text),
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileTupleType(TsTupleType tupleType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
        builder.types.add(TypeReference((builder) {
          builder.symbol = 'JSAny';
          builder.url = dependencies.libraryUrlForType(builder.symbol);
        }));
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration) {
    final type = typeEvaluator.evaluateType(typeAliasDeclaration.type.value);

    final typeDef = TypeDef((builder) {
      builder.docs.addAll([
        '/// Typedef [${typeAliasDeclaration.name.value.nodeName}]',
        '///',
        ...type.meta.documentation.map((doc) => '/// $doc'),
      ]);
      builder.name = typeAliasDeclaration.name.value.nodeName;
      builder.types.addAll(_transpileNodes<Reference>(typeAliasDeclaration.typeParameters.value).toSpec(dependencies));
      builder.definition = _transpileNode<Expression>(type).first.toSpec(dependencies);
    });
    return [typeDef].toDartNode();
  }

  List<DartNode<Spec>> _transpileTypeLiteral(TsTypeLiteral typeLiteral) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileTypeOperator(TsTypeOperator typeOperator) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.value.nodeName;
    final extendsClause = _transpileNode<Reference>(typeParameter.constraint.value).toSpec(dependencies);
    return [
      TypeReference((builder) {
        builder.symbol = name;
        builder.bound = extendsClause.firstOrNull ??
            TypeReference((builder) {
              builder.symbol = 'JSAny';
              builder.url = dependencies.libraryUrlForType(builder.symbol);
            });
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileTypeReference(TsTypeReference typeReference) {
    if (typeReference.typeName.value.nodeName == '__<VOID>__') {
      return _transpileVoidKeyword(TsVoidKeyword());
    }
    final isNullable = typeReference.typeName.value.nodeName?.endsWith('?') ?? false;
    final name = isNullable
        ? typeReference.typeName.value.nodeName!.substring(0, typeReference.typeName.value.nodeName!.length - 1)
        : typeReference.typeName.value.nodeName;

    return [
      TypeReference((builder) {
        builder.symbol = name;
        builder.url = dependencies.libraryUrlForType(name);
        builder.isNullable = isNullable;
        builder.types.addAll(_transpileNodes<Reference>(typeReference.typeArguments.value).toSpec(dependencies));
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileUnionType(TsUnionType unionType) {
    final types = typeEvaluator.evaluateTypes(unionType.types.value);
    if (types.length == 1) {
      return _transpileTypeReference(types.first);
    }
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = dependencies.libraryUrlForType(builder.symbol);
      })
    ].toDartNode();
  }

  List<DartNode<Spec>> _transpileVoidKeyword(TsVoidKeyword voidKeyword) {
    return [
      _voidType,
    ].toDartNode();
  }

  List<DartNode<T>> _transpileNode<T extends Spec>(TsNode? node) {
    if (node == null) {
      return [];
    }
    final result = <DartNode<T>>[];
    final List<DartNode<Spec>> transpiledNodes = switch (node) {
      Ts$Removed() => [],
      TsAnyKeyword() => _transpileAnyKeyword(node),
      TsArrayType() => _transpileArrayType(node),
      TsBooleanKeyword() => _transpileBooleanKeyword(node),
      TsClassDeclaration() => _transpileClassDeclaration(node),
      TsEnumDeclaration() => _transpileEnumDeclaration(node),
      TsExpressionWithTypeArguments() => _transpileExpressionWithTypeArguments(node),
      TsFunctionDeclaration() => _transpileFunctionDeclaration(node),
      TsFunctionType() => _transpileFunctionType(node),
      TsHeritageClause() => _transpileHeritageClause(node),
      TsInterfaceDeclaration() => _transpileInterfaceDeclaration(node),
      TsIndexSignature() => _transpileIndexSignature(node),
      TsIntersectionType() => _transpileIntersectionType(node),
      TsLiteralType() => _transpileLiteralType(node),
      TsMethodSignature() => _transpileMethodSignature(node),
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
      TsUnionType() => _transpileUnionType(node),
      TsVoidKeyword() => _transpileVoidKeyword(node),
      _ => [],
    };
    if (transpiledNodes.isEmpty && node.kind != TsNodeKind.$removed) {
      print('WARNING: No transpiled nodes for ${node.toString()}');
    }
    for (final transpiledNode in transpiledNodes) {
      final spec = transpiledNode.toSpec(dependencies);
      if (spec is T) {
        result.add(transpiledNode as DartNode<T>);
      } else {
        throw StateError(
            'Transpiled node ${spec.runtimeType} is not of type $T. Source node=${node.kind.name}:${node.nodeName}, mapped=${node.kind}:${node.nodeName}');
      }
    }
    return result;
  }

  List<DartNode<T>> _transpileNodes<T extends Spec>(List<TsNode> nodes) {
    final result = <DartNode<T>>[];
    for (final node in nodes) {
      final resultNodes = _transpileNode<T>(node);
      result.addAll(resultNodes);
    }
    return result;
  }
}
