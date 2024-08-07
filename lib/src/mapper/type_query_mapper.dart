import '../model/ts_node.dart';

TsNode typeQueryMapper(TsNode node) {
  if (node case TsTypeQuery()) {
    return TsTypeReference(
      TsIdentifier('String').toSingleNode(),
      <TsNode>[].toListNode(),
    );
  }
  return node;
}
