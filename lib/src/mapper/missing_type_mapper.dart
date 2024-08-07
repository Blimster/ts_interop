import '../model/ts_node.dart';

TsNode missingTypeMapper(TsNode node) {
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
