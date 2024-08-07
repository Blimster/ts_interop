import '../model/ts_node.dart';

const _standardTypes = {
  'Promise': 'JSPromise',
  'Int8Array': 'JSInt8Array',
  'Uint8Array': 'JSUint8Array',
  'Uint32Array': 'JSUint32Array',
  'Float32Array': 'JSFloat32Array',
  'ArrayBuffer': 'JSArrayBuffer',
};

TsNode standardTypesMapper(TsNode node) {
  if (node case TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: final name)))) {
    if (_standardTypes.keys.contains(name)) {
      final newType = _standardTypes[name]!;
      return TsTypeReference(
        TsIdentifier(newType).toSingleNode(),
        node.typeArguments,
      );
    }
  }
  return node;
}
