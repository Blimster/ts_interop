import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNode typeQueryMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsTypeQuery()) {
    return TsTypeReference(
      TsIdentifier('JSString').toSingleNode(),
      <TsNode>[].toListNode(),
    );
  }
  return node;
}
