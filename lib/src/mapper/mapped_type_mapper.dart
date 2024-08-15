import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNode mappedTypeMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsMappedType()) {
    return TsTypeReference(
      TsIdentifier('JSObject').toSingleNode(),
      <TsNode>[].toListNode(),
    );
  }
  return node;
}
