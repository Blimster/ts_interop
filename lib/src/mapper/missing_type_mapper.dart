import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNode missingTypeMapper(TsNode node, TypeEvaluator typeEvaluator) {
  return switch (node) {
    TsParameter(type: NullableNode(value: null)) => TsParameter(
        node.modifiers,
        node.name,
        node.questionToken,
        TsTypeReference(
          TsIdentifier('JSAny').toSingleNode(),
          <TsNode>[].toListNode(),
        ).toNullableNode(),
        node.initializer,
      ),
    _ => node,
  };
}
