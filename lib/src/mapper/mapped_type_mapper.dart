import '../model/ts_node.dart';

TsNode mappedTypeMapper(TsNode node) {
  if (node case TsMappedType()) {
    return TsTypeReference(
      TsIdentifier('JSObject'),
      [],
    );
  }
  return node;
}
