import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

const _standardTypes = {
  'Promise': 'JSPromise',
  'Int8Array': 'JSInt8Array',
  'Uint8Array': 'JSUint8Array',
  'Uint32Array': 'JSUint32Array',
  'Float32Array': 'JSFloat32Array',
  'ArrayBuffer': 'JSArrayBuffer',
};

TsNode standardTypesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: final name)))) {
    if (_standardTypes.keys.contains(name)) {
      final newType = _standardTypes[name]!;
      if (newType == 'JSPromise' && node.typeArguments.value.isNotEmpty) {
        final typeArg = node.typeArguments.value.first.kind;
        return TsTypeReference(
          TsIdentifier(newType).toSingleNode(),
          typeArg == TsNodeKind.voidKeyword ? ListNode([]) : node.typeArguments,
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
