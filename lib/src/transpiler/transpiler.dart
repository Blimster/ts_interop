import 'package:code_builder/code_builder.dart';
import 'package:ts_interop/src/config/config.dart';
import 'package:ts_interop/src/model/ts_node.dart';
import 'package:ts_interop/ts_interop.dart';

bool _containsNodeKind(List<TsNode> nodes, TsNodeKind kind) {
  for (final node in nodes) {
    if (node.kind == kind) {
      return true;
    }
  }
  return false;
}

class Transpiler {
  final TranspilerConfig config;

  Transpiler(this.config);

  List<Spec> transpile(TsPackage package, TranspilerConfig config) {
    return _transpileNode<Library>(package);
  }

  List<TypeReference> _transpileAnyKeyword(TsAnyKeyword anyKeyword) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = 'dart:js_interop';
      })
    ];
  }

  List<Spec> _transpileArrayType(TsArrayType arrayType) {
    return [
      TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = 'dart:js_interop';
        builder.types.add(_transpileNode<Reference>(arrayType.elementType).first);
      })
    ];
  }

  List<Spec> _transpileClassDeclaration(TsClassDeclaration classDeclaration) {
    final clazz = Class((builder) {
      builder.abstract = _containsNodeKind(classDeclaration.modifiers, TsNodeKind.abstractKeyword);
      builder.name = classDeclaration.name.text;
      builder.types.addAll(_transpileNodes(classDeclaration.typeParameters));
      //builder.implements.addAll(_transpileHeritageClauses(classDeclaration.heritageClauses, true, true));
    });
    return [clazz];
  }

  List<Spec> _transpileEnumDeclaration(TsEnumDeclaration enumDeclaration) {
    final clazz = Class((builder) {
      builder.name = enumDeclaration.name.text;
    });
    return [clazz];
  }

  List<Spec> _transpileExpressionWithTypeArguments(TsExpressionWithTypeArguments expressionWithTypeArgument) {
    final expression = expressionWithTypeArgument.expression;
    return switch (expression) {
      TsIdentifier() => [
          TypeReference((builder) {
            builder.symbol = expression.text;
            builder.url = config.libForType(expression.nodeQualifier);
            builder.types.addAll(_transpileNodes(expressionWithTypeArgument.typeArguments));
          })
        ],
      _ => [],
    };
  }

  List<Reference> _transpileHeritageClause(TsHeritageClause heritageClause) {
    final result = <Reference>[];
    for (final type in heritageClause.types) {
      result.addAll(_transpileNode(type));
    }
    return result;
  }

  List<Spec> _transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration) {
    final clazz = Class((builder) {
      builder.abstract = true;
      builder.name = interfaceDeclaration.name.text;
      builder.types.addAll(_transpileNodes(interfaceDeclaration.typeParameters));
      builder.implements.addAll(_transpileNodes(interfaceDeclaration.heritageClauses));
    });
    return [clazz];
  }

  List<Spec> _transpileTypeReference(TsTypeReference typeReferencde) {
    final typeName = typeReferencde.typeName;
    final symbol = switch (typeName) {
      TsIdentifier() => typeName.text,
      _ => null,
    };
    return [
      TypeReference((builder) {
        builder.symbol = symbol;
        builder.url = config.libForType(symbol);
        builder.types.addAll(_transpileNodes(typeReferencde.typeArguments));
      })
    ];
  }

  List<Spec> _transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.text;
    final constraint = typeParameter.constraint;
    final extendsClause = switch (constraint) {
      TsTypeReference() => _transpileNode<Reference>(constraint),
      _ => <Reference>[],
    };
    return [
      TypeReference((builder) {
        builder.symbol = name;
        builder.bound = extendsClause.firstOrNull;
      })
    ];
  }

  List<Spec> _transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration) {
    final typeDef = TypeDef((builder) {
      builder.name = typeAliasDeclaration.name.text;
      builder.types.addAll(_transpileNodes(typeAliasDeclaration.typeParameters));
      builder.definition = TypeReference((builder) {
        builder.symbol = 'Object';
      });
    });
    return [typeDef];
  }

  List<Spec> _transpileSourceFile(TsSourceFile sourceFile) {
    return _transpileNodes(sourceFile.statements);
  }

  List<Spec> _transpilePackage(TsPackage package) {
    return [
      Library((builder) {
        builder.body.addAll(_transpileNodes(package.sourceFiles));
      })
    ];
  }

  List<T> _transpileNode<T extends Spec>(TsNode? node) {
    if (node == null) {
      return [];
    }
    final mappedNodes = config.mapNode(node);
    if (mappedNodes.isEmpty) {
      return [];
    }
    final result = <T>[];
    for (final mappedNode in mappedNodes) {
      final List<Spec> transpiledNodes = switch (mappedNode) {
        TsAnyKeyword() => _transpileAnyKeyword(mappedNode),
        TsArrayType() => _transpileArrayType(mappedNode),
        TsClassDeclaration() => _transpileClassDeclaration(mappedNode),
        TsEnumDeclaration() => _transpileEnumDeclaration(mappedNode),
        TsExpressionWithTypeArguments() => _transpileExpressionWithTypeArguments(mappedNode),
        TsHeritageClause() => _transpileHeritageClause(mappedNode),
        TsInterfaceDeclaration() => _transpileInterfaceDeclaration(mappedNode),
        TsPackage() => _transpilePackage(mappedNode),
        TsSourceFile() => _transpileSourceFile(mappedNode),
        TsTypeAliasDeclaration() => _transpileTypeAliasDeclaration(mappedNode),
        TsTypeParameter() => _transpileTypeParameter(mappedNode),
        TsTypeReference() => _transpileTypeReference(mappedNode),
        _ => [],
      };
      for (final transpiledNode in transpiledNodes) {
        if (transpiledNode is T) {
          result.add(transpiledNode);
        } else {
          throw 'ERROR: Transpiled node ${transpiledNode.runtimeType} is not of type $T. Source node${node.nodeQualifier}, mapped=${mappedNode.nodeQualifier}';
        }
      }
    }
    return result;
  }

  List<T> _transpileNodes<T extends Spec>(List<TsNode> nodes) {
    final result = <T>[];
    for (final node in nodes) {
      final resultNodes = _transpileNode<T>(node);
      result.addAll(resultNodes);
    }
    return result;
  }
}
