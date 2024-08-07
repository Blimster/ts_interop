import '../model/ts_node.dart';

TsNode instanceTypeMapper(TsNode node) {
  if (node case TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: 'InstanceType')))) {
    return TsTypeReference(
      TsIdentifier('C').toSingleNode(),
      <TsNode>[].toListNode(),
    );
  }
  return node;
}
