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
    [],
    TsIdentifier([], name).toSingleNode(affectsParent: true),
    typeArguments.toListNode(),
    meta: meta,
  );
}

class TypeEvaluator {
  TsTypeReference _typeOperator(TsTypeOperator node) {
    final operator = node.operator.value;
    return switch (operator) {
      TsKeyOfKeyword() => _typeRef('JSString'),
      TsReadonlyKeyword() => evaluateType(node.type.value),
      TsUniqueKeyword() => evaluateType(node.type.value),
      _ => throw UnimplementedError(operator.toString()),
    };
  }

  TsTypeReference _typeReference(TsTypeReference node) {
    const standardTypes = {
      'Symbol': ('JSSymbol', 0),
      'BigInt': ('JSBigInt', 0),
      'Promise': ('JSPromise', 1),
      'ArrayBuffer': ('JSArrayBuffer', 0),
      'Int8Array': ('JSInt8Array', 0),
      'Int16Array': ('JSInt16Array', 0),
      'Int32Array': ('JSInt32Array', 0),
      'Uint8Array': ('JSUint8Array', 0),
      'Uint16Array': ('JSUint16Array', 0),
      'Uint32Array': ('JSUint32Array', 0),
      'Float32Array': ('JSFloat32Array', 0),
      'Float64Array': ('JSFloat64Array', 0),
      'Uint8ClampedArray': ('JSUint8ClampedArray', 0),
    };

    if (node case TsTypeReference(nodeName: final name?)) {
      if (standardTypes.keys.contains(name)) {
        final (newType, typeParamCount) = standardTypes[name]!;

        // Create type arguments based on typeParamCount
        final limitedTypeArgs = ListNode([]);

        // For types with exactly 1 type parameter, apply special void/null/undefined handling
        if (typeParamCount == 1 && node.typeArguments.value.isNotEmpty) {
          final typeArg = node.typeArguments.value.first.kind;
          if (![TsNodeKind.voidKeyword, TsNodeKind.nullKeyword, TsNodeKind.undefinedKeyword].contains(typeArg)) {
            limitedTypeArgs.value.add(node.typeArguments.value.first);
          }
        } else if (typeParamCount > 0 && node.typeArguments.value.isNotEmpty) {
          // For other types with type parameters, take the specified number of parameters
          limitedTypeArgs.value.addAll(node.typeArguments.value.take(typeParamCount));
        }

        return TsTypeReference([], TsIdentifier([], newType).toSingleNode(), limitedTypeArgs);
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
        [],
        TsIdentifier([], name).toSingleNode(),
        types.first.typeArguments,
        meta: TsNodeMeta(documentation: [doc]),
      );
    }

    return _typeRef('JSAny${hasNull ? '?' : ''}', meta: TsNodeMeta(documentation: [doc]));
  }

  TsTypeReference evaluateType(TsNode? node) {
    return switch (node) {
      TsAnyKeyword() => _typeRef('JSAny'),
      TsArrayType() => _typeRef('JSArray', typeArguments: [evaluateType(node.elementType.value)]),
      TsBigIntKeyword() => _typeRef('JSBigInt'),
      TsBooleanKeyword() => _typeRef('JSBoolean'),
      TsConditionalType() => _typeRef('JSAny'),
      TsConstructorType() => evaluateType(node.type.value),
      TsFalseKeyword() => _typeRef('JSBoolean'),
      TsFunctionType() => _typeRef('JSFunction'),
      TsIdentifier() => _typeRef(node.text),
      TsIndexedAccessType() => _typeRef('JSAny'),
      TsImportType() => evaluateType(node.qualifier.value),
      TsIntersectionType() => _typeRef('JSAny'),
      TsIntrinsicKeyword() => _typeRef('JSAny'),
      TsLiteralType() => evaluateType(node.literal.value),
      TsMappedType() => _typeRef('JSObject'),
      TsNeverKeyword() => _typeRef('JSAny'),
      TsNullKeyword() => _typeRef('Null'),
      TsNumberKeyword() => _typeRef('JSNumber'),
      TsNumericLiteral() => _typeRef('JSNumber'),
      TsObjectKeyword() => _typeRef('JSObject'),
      TsParenthesizedType() => evaluateType(node.type.value),
      TsStringKeyword() => _typeRef('JSString'),
      TsStringLiteral() => _typeRef('JSString'),
      TsSymbolKeyword() => _typeRef('JSSymbol'),
      TsTemplateLiteralType() => _typeRef('JSString'),
      TsThisType() => _typeRef('JSAny'),
      TsTrueKeyword() => _typeRef('JSBoolean'),
      TsTupleType() => _typeRef(
        'JSArray',
        typeArguments: [
          TsTypeParameter(
            [],
            ListNode([]),
            SingleNode(TsIdentifier([], 'JSAny')),
            NullableNode(null),
            NullableNode(null),
          ),
        ],
      ),
      TsTypeLiteral() => _typeRef('JSObject'),
      TsTypeOperator() => _typeOperator(node),
      TsTypePredicate() => _typeRef('JSBoolean'),
      TsTypeReference() => _typeReference(node),
      TsTypeQuery() => _typeRef('JSString'),
      TsUndefinedKeyword() => _typeRef('Null'),
      TsUnionType() => _unionType(node),
      TsUnknownKeyword() => _typeRef('JSAny'),
      TsVoidKeyword() => _typeRef('__<VOID>__'),
      null => _typeRef('JSAny'),
      _ => throw UnimplementedError(node.toString()),
    };
  }

  List<TsTypeReference> evaluateTypes(List<TsNode> nodes) {
    return nodes.map((node) => evaluateType(node)).toList();
  }
}
