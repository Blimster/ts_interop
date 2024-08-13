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
  List<DartNode<T>> get toDartNode {
    final result = <DartNode<T>>[];
    for (final node in this) {
      result.add(DartSpec(node));
    }
    return result;
  }
}

class Transpiler {
  final Dependencies config;
  final TypeEvaluator typeEvaluator;

  Transpiler(this.config) : typeEvaluator = TypeEvaluator(config);

  List<Spec> transpile(TsPackage package, Dependencies config) {
    updateParentAndChilds(package, package.parent);
    return _transpileNode<Library>(package).toSpec(config);
  }

  List<DartNode<Spec>> _transpileAnyKeyword(TsAnyKeyword anyKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileArrayType(TsArrayType arrayType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = config.libraryUrlForType(builder.symbol);
        final elementType = _transpileNode<Reference>(arrayType.elementType.value).toSpec(config);
        if (elementType.isNotEmpty) {
          builder.types.add(elementType.first);
        } else {
          builder.types.add(TypeReference((builder) {
            builder.symbol = 'JSAny';
            builder.url = config.libraryUrlForType(builder.symbol);
          }));
        }
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileBooleanKeyword(TsBooleanKeyword booleanKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSBoolean';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileClassDeclaration(TsClassDeclaration classDeclaration) {
    final isAbstract = _containsNodeKind(classDeclaration.modifiers.value, TsNodeKind.abstractKeyword);
    final members = _transpileNodes(classDeclaration.members.value).map((m) => m.toSpec(config));

    final extensionType = ExtensionType((builder) {
      builder.docs.add('/// class ${classDeclaration.name.value.nodeQualifier}');
      builder.name = classDeclaration.name.value.nodeQualifier;
      builder.types.addAll(_transpileNodes<Reference>(classDeclaration.typeParameters.value).toSpec(config));
      builder.primaryConstructorName = isAbstract ? '_' : '';
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = config.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = config.libraryUrlForType(builder.symbol);
      }));
      builder.implements.addAll(_transpileNodes<Reference>(classDeclaration.heritageClauses.value).toSpec(config));
      builder.fields.addAll(members.whereType<Field>());
      builder.methods.addAll(members.whereType<Method>());
    });
    return [extensionType].toDartNode;
  }

  List<DartNode<Spec>> _transpileEnumDeclaration(TsEnumDeclaration enumDeclaration) {
    final extensionType = ExtensionType((builder) {
      builder.docs.add('/// enum ${enumDeclaration.name.value.nodeQualifier}');
      builder.name = enumDeclaration.name.value.nodeQualifier;
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = config.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = config.libraryUrlForType(builder.symbol);
      }));
    });
    return [extensionType].toDartNode;
  }

  List<DartNode<Spec>> _transpileExpressionWithTypeArguments(
      TsExpressionWithTypeArguments expressionWithTypeArguments) {
    final expression = expressionWithTypeArguments.expression.value;
    final result = <Reference>[];
    switch (expression) {
      case TsIdentifier():
        result.add(TypeReference((builder) {
          builder.symbol = expression.nodeQualifier;
          builder.url = config.libraryUrlForType(expression.nodeQualifier);
          builder.types
              .addAll(_transpileNodes<Reference>(expressionWithTypeArguments.typeArguments.value).toSpec(config));
        }));
      default:
        print('WARNING: Unsupported expression type ${expression.kind.name}:${expression.nodeQualifier}');
    }
    return result.toDartNode;
  }

  List<DartNode<Spec>> _transpileFunctionDeclaration(TsFunctionDeclaration functionDeclaration) {
    return [
      Method((builder) {
        builder.external = true;
        builder.name = functionDeclaration.name.value.nodeQualifier;
        builder.returns = _transpileNode<Reference>(functionDeclaration.type.value).toSpec(config).firstOrNull;
        builder.types.addAll(_transpileNodes<Reference>(functionDeclaration.typeParameters.value).toSpec(config));
        builder.requiredParameters.addAll(_transpileNodes<Reference>(functionDeclaration.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
      })
    ].toDartNode;
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
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileHeritageClause(TsHeritageClause heritageClause) {
    heritageClause.types.value.map(_transpileNode).toList();
    final result = <Reference>[];
    for (final type in heritageClause.types.value) {
      result.addAll(_transpileNode<Reference>(type).toSpec(config));
    }
    return result.toDartNode;
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
          builder.type = _transpileNode<Reference>(indexSignature.type.value).toSpec(config).firstOrNull;
          builder.name = 'value';
        }));
      }),
      Method((builder) {
        builder.external = true;
        builder.name = 'operator []';
        builder.returns = _transpileNode<Reference>(indexSignature.type.value).toSpec(config).firstOrNull;
        builder.requiredParameters.addAll(_transpileNodes<Reference>(indexSignature.parameters.value)
            .cast<DartParameter>()
            .map((node) => node.parameter)
            .toList());
      }),
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration) {
    final members = _transpileNodes(interfaceDeclaration.members.value).map((m) => m.toSpec(config));

    final extensionType = ExtensionType((builder) {
      builder.docs.add('/// interface ${interfaceDeclaration.name.value.nodeQualifier}');
      builder.name = interfaceDeclaration.name.value.nodeQualifier;
      builder.types.addAll(_transpileNodes<Reference>(interfaceDeclaration.typeParameters.value).toSpec(config));
      builder.representationDeclaration = RepresentationDeclaration((builder) {
        builder.name = '_';
        builder.declaredRepresentationType = TypeReference((builder) {
          builder.symbol = 'JSObject';
          builder.url = config.libraryUrlForType(builder.symbol);
        });
      });
      builder.implements.add(TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = config.libraryUrlForType(builder.symbol);
      }));
      builder.implements.addAll(_transpileNodes<Reference>(interfaceDeclaration.heritageClauses.value).toSpec(config));
      builder.fields.addAll(members.whereType<Field>());
      builder.methods.addAll(members.whereType<Method>());
    });
    return [extensionType].toDartNode;
  }

  List<DartNode<Spec>> _transpileIntersectionType(TsIntersectionType intersectionType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileLiteralType(TsLiteralType literalType) {
    return _transpileNode(literalType.literal.value);
  }

  List<DartNode<Spec>> _transpileMethodSignature(TsMethodSignature methodSignature) {
    final methodName = methodSignature.name.value.nodeQualifier;
    if (methodName == null) {
      return [];
    }
    return [
      Method((builder) {
        builder.external = true;
        builder.name = methodSignature.name.value.nodeQualifier;
        builder.returns = _transpileNode<Reference>(typeEvaluator.evaluateType(methodSignature.type.value))
            .toSpec(config)
            .firstOrNull;
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileNumberKeyword(TsNumberKeyword numberKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSNumber';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileNumericLiteral(TsNumericLiteral numericLiteral) {
    return [
      literalNum(num.parse(numericLiteral.text)),
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpilePackage(TsPackage package) {
    return [
      Library((builder) {
        builder.body.addAll(_transpileNodes(package.sourceFiles.value).toSpec(config));
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileParameter(TsParameter parameter) {
    return [
      DartParameter(
        Parameter((builder) {
          builder.name = parameter.name.value.nodeQualifier ?? '';
          builder.type = _transpileNode<Reference>(parameter.type.value).toSpec(config).firstOrNull;
        }),
        parameter.questionToken.value != null,
      )
    ];
  }

  List<DartNode<Spec>> _transpilePropertySignature(TsPropertySignature propertySignature) {
    final readonly = _containsNodeKind(propertySignature.modifiers.value, TsNodeKind.readonlyKeyword);
    if (readonly) {
      return [
        Method((builder) {
          builder.type = MethodType.getter;
          builder.external = true;
          builder.name = propertySignature.name.value.nodeQualifier;
          builder.returns = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(config)
              .firstOrNull;
        }),
      ].toDartNode;
    } else {
      return [
        Field((builder) {
          builder.external = true;
          builder.name = propertySignature.name.value.nodeQualifier;
          builder.type = _transpileNode<Reference>(typeEvaluator.evaluateType(propertySignature.type.value))
              .toSpec(config)
              .firstOrNull;
        }),
      ].toDartNode;
    }
  }

  List<DartNode<Spec>> _transpileSourceFile(TsSourceFile sourceFile) {
    return _transpileNodes(sourceFile.statements.value);
  }

  List<DartNode<Spec>> _transpileStringKeyword(TsStringKeyword stringKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSString';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileStringLiteral(TsStringLiteral stringKeyword) {
    return [
      Code(stringKeyword.text),
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileTupleType(TsTupleType tupleType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = config.libraryUrlForType(builder.symbol);
        builder.types.add(TypeReference((builder) {
          builder.symbol = 'JSAny';
          builder.url = config.libraryUrlForType(builder.symbol);
        }));
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration) {
    final typeDef = TypeDef((builder) {
      builder.docs.add('/// typedef ${typeAliasDeclaration.name.value.nodeQualifier}');
      builder.name = typeAliasDeclaration.name.value.nodeQualifier;
      builder.types.addAll(_transpileNodes<Reference>(typeAliasDeclaration.typeParameters.value).toSpec(config));
      builder.definition =
          _transpileNode<Expression>(typeEvaluator.evaluateType(typeAliasDeclaration.type.value)).first.toSpec(config);
    });
    return [typeDef].toDartNode;
  }

  List<DartNode<Spec>> _transpileTypeLiteral(TsTypeLiteral typeLiteral) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSObject';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.value.nodeQualifier;
    final extendsClause = _transpileNode<Reference>(typeParameter.constraint.value).toSpec(config);
    return [
      TypeReference((builder) {
        builder.symbol = name;
        builder.bound = extendsClause.firstOrNull ??
            TypeReference((builder) {
              builder.symbol = 'JSAny';
              builder.url = config.libraryUrlForType(builder.symbol);
            });
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileTypeReference(TsTypeReference typeReference) {
    if (typeReference.typeName.value.nodeQualifier == '__<VOID>__') {
      return _transpileVoidKeyword(TsVoidKeyword());
    }
    final isNullable = typeReference.typeName.value.nodeQualifier?.endsWith('?') ?? false;
    final name = isNullable
        ? typeReference.typeName.value.nodeQualifier!
            .substring(0, typeReference.typeName.value.nodeQualifier!.length - 1)
        : typeReference.typeName.value.nodeQualifier;

    return [
      TypeReference((builder) {
        builder.symbol = name;
        builder.url = config.libraryUrlForType(name);
        builder.isNullable = isNullable;
        builder.types.addAll(_transpileNodes<Reference>(typeReference.typeArguments.value).toSpec(config));
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileUnionType(TsUnionType unionType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = config.libraryUrlForType(builder.symbol);
      })
    ].toDartNode;
  }

  List<DartNode<Spec>> _transpileVoidKeyword(TsVoidKeyword voidKeyword) {
    return [
      _voidType,
    ].toDartNode;
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
      TsPropertySignature() => _transpilePropertySignature(node),
      TsSourceFile() => _transpileSourceFile(node),
      TsStringKeyword() => _transpileStringKeyword(node),
      TsStringLiteral() => _transpileStringLiteral(node),
      TsTupleType() => _transpileTupleType(node),
      TsTypeAliasDeclaration() => _transpileTypeAliasDeclaration(node),
      TsTypeLiteral() => _transpileTypeLiteral(node),
      TsTypeParameter() => _transpileTypeParameter(node),
      TsTypeReference() => _transpileTypeReference(node),
      TsUnionType() => _transpileUnionType(node),
      TsVoidKeyword() => _transpileVoidKeyword(node),
      _ => [],
    };
    if (transpiledNodes.isEmpty && node.kind != TsNodeKind.$removed) {
      print('WARNING: No transpiled nodes for ${node.toShortString()}');
    }
    for (final transpiledNode in transpiledNodes) {
      final spec = transpiledNode.toSpec(config);
      if (spec is T) {
        result.add(transpiledNode as DartNode<T>);
      } else {
        throw StateError(
            'Transpiled node ${spec.runtimeType} is not of type $T. Source node=${node.kind.name}:${node.nodeQualifier}, mapped=${node.kind}:${node.nodeQualifier}');
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
