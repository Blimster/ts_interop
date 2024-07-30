import '../model/ts_node.dart';

TsNode standardTypesMapper(TsNode node) {
  final types = {
    'Promise': 'JSPromise',
    'Int8Array': 'JSInt8Array',
    'Uint8Array': 'JSUint8Array',
    'Uint32Array': 'JSUint32Array',
    'Float32Array': 'JSFloat32Array',
    'ArrayBuffer': 'JSArrayBuffer',
  };

  if (node case TsTypeReference(typeName: TsIdentifier(text: final name))) {
    if (types.keys.contains(name)) {
      return TsTypeReference(
        TsIdentifier(types[name]!),
        node.typeArguments,
      );
    }
  }
  return node;
}
