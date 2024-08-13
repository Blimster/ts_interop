import '../config/config.dart';
import '../model/ts_node.dart';

(List<TsTypeReference>, bool) _distinctTypes(List<TsTypeReference> types) {
  bool hasNull = false;
  final result = <String, TsTypeReference>{};
  for (final type in types) {
    final name = type.nodeQualifier;
    if (name != null) {
      if (name != 'Null') {
        result[name] = type;
      } else {
        hasNull = true;
      }
    }
  }
  return (result.values.toList(), hasNull);
}

class TypeEvaluator {
  final TranspilerConfig config;

  TypeEvaluator(this.config);

  TsTypeReference _literalType(TsLiteralType node) {
    return evaluateType(node.literal.value);
  }

  TsTypeReference _parenthesizedType(TsParenthesizedType node) {
    return evaluateType(node.type.value);
  }

  TsTypeReference _typeOperator(TsTypeOperator node) {
    final operator = node.operator.value;
    return switch (operator) {
      TsReadonlyKeyword() => evaluateType(node.type.value),
      TsKeyOfKeyword() => _typeRef('JSString'),
      _ => throw UnimplementedError(operator.toShortString()),
    };
  }

  TsTypeReference _typeRef(String name, {List<TsNode> typeArguments = const []}) {
    return TsTypeReference(
      TsIdentifier(name).toSingleNode(affectsParent: true),
      typeArguments.toListNode(),
    );
  }

  TsTypeReference _unionType(TsUnionType node) {
    final (types, hasNull) = _distinctTypes(evaluateTypes(node.types.value));

    if (types.length == 1) {
      final name = '${types.first.nodeQualifier}${hasNull ? '?' : ''}';
      return TsTypeReference(
        TsIdentifier(name).toSingleNode(),
        types.first.typeArguments,
      );
    }

    return _typeRef('JSAny${hasNull ? '?' : ''}');
  }

  TsTypeReference evaluateType(TsNode? node) {
    if (node == null) {}

    return switch (node) {
      TsAnyKeyword() => _typeRef('JSAny'),
      TsArrayType() => _typeRef('JSArray', typeArguments: [evaluateType(node.elementType.value)]),
      TsBooleanKeyword() => _typeRef('JSBoolean'),
      TsFalseKeyword() => _typeRef('JSBoolean'),
      TsFunctionType() => _typeRef('JSFunction'),
      TsLiteralType() => _literalType(node),
      TsNullKeyword() => _typeRef('Null'),
      TsNumberKeyword() => _typeRef('JSNumber'),
      TsNumericLiteral() => _typeRef('JSNumber'),
      TsParenthesizedType() => _parenthesizedType(node),
      TsStringKeyword() => _typeRef('JSString'),
      TsStringLiteral() => _typeRef('JSString'),
      TsTrueKeyword() => _typeRef('JSBoolean'),
      TsTypeOperator() => _typeOperator(node),
      TsTypeReference() => node,
      TsUndefinedKeyword() => _typeRef('Null'),
      TsUnionType() => _unionType(node),
      _ => throw UnimplementedError(node?.toShortString()),
    };
  }

  List<TsTypeReference> evaluateTypes(List<TsNode> nodes) {
    return nodes.map((node) => evaluateType(node)).toList();
  }
}
