import '../model/ts_node.dart';

TsNode missingTypeMapper(TsNode node) {
  return switch (node) {
    TsParameter(type: null) => TsParameter(
        node.modifiers,
        node.name,
        node.questionToken,
        TsTypeReference(TsIdentifier('JSAny'), []),
        node.initializer,
      ),
    _ => node,
  };
}
