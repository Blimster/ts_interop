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

  Spec transpile(TsPackage package, TranspilerConfig config) {
    final result = <Spec>[];
    transpilePackage(package, result);
    return Library((builder) {
      builder.body.addAll(result);
    });
  }

  TypeReference? _transpileType(TsNode node) {
    final TsNode? type = config.convertTypeNode(node);
    if (type == null) {
      return null;
    }
    if (type is TsTypeReference) {
      final typeName = type.typeName;
      final symbol = switch (typeName) {
        TsIdentifier() => typeName.text,
        _ => null,
      };
      return TypeReference((builder) {
        builder.symbol = symbol;
        builder.url = config.libForType(symbol);
        builder.types.addAll(_transpileTypes(type.typeArguments));
      });
    } else if (type is TsExpressionWithTypeArguments) {
      final expression = type.expression;
      if (expression is TsIdentifier) {
        return TypeReference((builder) {
          builder.symbol = expression.text;
          builder.url = config.libForType(expression.text);
          builder.types.addAll(_transpileTypes(type.typeArguments));
        });
      }
    } else if (type is TsArrayType) {
      return TypeReference((builder) {
        builder.symbol = 'JSArray';
        builder.url = 'dart:js_interop';
        final elementType = _transpileType(type.elementType);
        if (elementType != null) {
          builder.types.add(elementType);
        }
      });
    } else if (type is TsAnyKeyword) {
      return TypeReference((builder) {
        builder.symbol = 'JSAny';
        builder.url = 'dart:js_interop';
      });
    }
    print('WARNING: unsupport node for type: ${type.kind} (converted from ${node.kind})');
    return null;
  }

  List<Reference> _transpileTypes(List<TsNode> types) {
    final result = <Reference>[];
    for (final type in types) {
      final reference = _transpileType(type);
      if (reference != null) {
        result.add(reference);
      }
    }
    return result;
  }

  TypeReference transpileTypeParameter(TsTypeParameter typeParameter) {
    final name = typeParameter.name.text;
    final constraint = typeParameter.constraint;
    final extendsClause = switch (constraint) {
      TsTypeReference() => _transpileType(constraint),
      _ => null,
    };
    return TypeReference((builder) {
      builder.symbol = name;
      builder.bound = extendsClause;
    });
  }

  List<Reference> transpileTypeParameters(List<TsTypeParameter> typeParameters) {
    final result = <Reference>[];
    for (final typeParameter in typeParameters) {
      result.add(transpileTypeParameter(typeParameter));
    }
    return result;
  }

  List<Reference> _transpileHeritageClauses(
    List<TsHeritageClause> heritageClauses,
    bool extendsClauses,
    bool implementsClauses,
  ) {
    final result = <Reference>[];
    for (final heritageClause in heritageClauses) {
      if (heritageClause.token is TsExtendsKeyword && extendsClauses) {
        for (final type in heritageClause.types) {
          final reference = _transpileType(type);
          if (reference != null) {
            result.add(reference);
          } else {
            print('WARNING: unsupport node in heritage clause: ${type.kind}');
          }
        }
      }
      if (heritageClause.token is TsImplementsKeyword && implementsClauses) {
        for (final type in heritageClause.types) {
          final reference = _transpileType(type);
          if (reference != null) {
            result.add(reference);
          } else {
            print('WARNING: unsupport node in heritage clause: ${type.kind}');
          }
        }
      }
    }
    return result;
  }

  void transpileTypeAliasDeclaration(TsTypeAliasDeclaration typeAliasDeclaration, List<Spec> result) {
    final typeDef = TypeDef((builder) {
      builder.name = typeAliasDeclaration.name.text;
      builder.types.addAll(transpileTypeParameters(typeAliasDeclaration.typeParameters));
      builder.definition = TypeReference((builder) {
        builder.symbol = 'Object';
      });
    });
    result.add(typeDef);
  }

  void transpileEnumDeclaration(TsEnumDeclaration enumDeclaration, List<Spec> result) {
    final clazz = Class((builder) {
      builder.name = enumDeclaration.name.text;
    });
    result.add(clazz);
  }

  void transpileInterfaceDeclaration(TsInterfaceDeclaration interfaceDeclaration, List<Spec> result) {
    final clazz = Class((builder) {
      builder.abstract = true;
      builder.name = interfaceDeclaration.name.text;
      builder.types.addAll(transpileTypeParameters(interfaceDeclaration.typeParameters));
      builder.implements.addAll(_transpileHeritageClauses(interfaceDeclaration.heritageClauses, true, true));
    });
    result.add(clazz);
  }

  void transpileClassDeclaration(TsClassDeclaration classDeclaration, List<Spec> result) {
    final clazz = Class((builder) {
      builder.abstract = _containsNodeKind(classDeclaration.modifiers, TsNodeKind.abstractKeyword);
      builder.name = classDeclaration.name.text;
      builder.types.addAll(transpileTypeParameters(classDeclaration.typeParameters));
      //builder.implements.addAll(_transpileHeritageClauses(classDeclaration.heritageClauses, true, true));
    });
    result.add(clazz);
  }

  void transpileStatement(TsNode node, List<Spec> result) {
    switch (node) {
      case TsTypeAliasDeclaration():
        transpileTypeAliasDeclaration(node, result);
      case TsEnumDeclaration():
        transpileEnumDeclaration(node, result);
      case TsInterfaceDeclaration():
        transpileInterfaceDeclaration(node, result);
      case TsClassDeclaration():
        transpileClassDeclaration(node, result);
      case _:
        return;
    }
  }

  void transpileSourceFile(TsSourceFile sourceFile, List<Spec> result) {
    for (final statement in sourceFile.statements) {
      transpileStatement(statement, result);
    }
  }

  void transpilePackage(TsPackage package, List<Spec> result) {
    for (final sourceFile in package.sourceFiles) {
      transpileSourceFile(sourceFile, result);
    }
  }
}
