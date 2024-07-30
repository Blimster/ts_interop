import '../model/ts_node.dart';

TsNode instanceTypeMapper(TsNode node) {
  if (node case TsTypeReference(typeName: TsIdentifier(text: 'InstanceType'))) {
    return TsTypeReference(TsIdentifier('C'), []);
  }
  return node;
}
