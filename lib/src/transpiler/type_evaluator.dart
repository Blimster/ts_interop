import '../model/ts_node.dart';

(List<TsTypeReference>, bool) _distinctTypes(List<TsTypeReference> types) {
  bool hasNull = false;
  final result = <String, TsTypeReference>{};
  for (final type in types) {
    final name = type.nodeName;
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

TsTypeReference _typeRef(String name, {List<TsNode> typeArguments = const [], TsNodeMeta? meta}) {
  return TsTypeReference(
    TsIdentifier(name).toSingleNode(affectsParent: true),
    typeArguments.toListNode(),
    meta: meta,
  );
}

class TypeEvaluator {
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
      _ => throw UnimplementedError(operator.toString()),
    };
  }

  TsTypeReference _typeReference(TsTypeReference node) {
    const standardTypes = {
      'Symbol': 'JSSymbol',
      'BigInt': 'JSBigInt',
      'Promise': 'JSPromise',
      'ArrayBuffer': 'JSArrayBuffer',
      'Int8Array': 'JSInt8Array',
      'Int16Array': 'JSInt16Array',
      'Int32Array': 'JSInt32Array',
      'Uint8Array': 'JSUint8Array',
      'Uint16Array': 'JSUint16Array',
      'Uint32Array': 'JSUint32Array',
      'Float32Array': 'JSFloat32Array',
      'Float64Array': 'JSFloat64Array',
      'Uint8ClampedArray': 'JSUint8ClampedArray',
    };

    if (node case TsTypeReference(nodeName: final name?)) {
      if (standardTypes.keys.contains(name)) {
        final newType = standardTypes[name]!;
        if (newType == 'JSPromise' && node.typeArguments.value.isNotEmpty) {
          final typeArg = node.typeArguments.value.first.kind;
          return TsTypeReference(
            TsIdentifier(newType).toSingleNode(),
            [TsNodeKind.voidKeyword, TsNodeKind.nullKeyword, TsNodeKind.undefinedKeyword].contains(typeArg)
                ? ListNode([])
                : node.typeArguments,
          );
        } else {
          return TsTypeReference(
            TsIdentifier(newType).toSingleNode(),
            node.typeArguments,
          );
        }
      }
    }
    return node;
  }

  TsTypeReference _unionType(TsUnionType node) {
    final doc = node.types.value.map((node) => node.nodeName).nonNulls.join(' | ');

    final (types, hasNull) = _distinctTypes(evaluateTypes(node.types.value));

    if (types.length == 1) {
      final name = '${types.first.nodeName}${hasNull ? '?' : ''}';
      return TsTypeReference(
        TsIdentifier(name).toSingleNode(),
        types.first.typeArguments,
        meta: TsNodeMeta(documentation: [doc]),
      );
    }

    return _typeRef(
      'JSAny${hasNull ? '?' : ''}',
      meta: TsNodeMeta(documentation: [doc]),
    );
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
      TsObjectKeyword() => _typeRef('JSObject'),
      TsParenthesizedType() => _parenthesizedType(node),
      TsStringKeyword() => _typeRef('JSString'),
      TsStringLiteral() => _typeRef('JSString'),
      TsTrueKeyword() => _typeRef('JSBoolean'),
      TsTypeOperator() => _typeOperator(node),
      TsTypeReference() => _typeReference(node),
      TsUndefinedKeyword() => _typeRef('Null'),
      TsUnionType() => _unionType(node),
      TsVoidKeyword() => _typeRef('__<VOID>__'),
      _ => throw UnimplementedError(node?.toString()),
    };
  }

  List<TsTypeReference> evaluateTypes(List<TsNode> nodes) {
    return nodes.map((node) => evaluateType(node)).toList();
  }
}
