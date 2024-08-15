import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNode instanceTypeMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: 'InstanceType')))) {
    return TsTypeReference(
      TsIdentifier('C').toSingleNode(),
      <TsNode>[].toListNode(),
    );
  }
  return node;
}
