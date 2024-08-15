import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNode literalAsTypeArgumentMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsTypeReference()) {
    final typeArguments = node.typeArguments;
    final newTypeArguments = <TsNode>[];
    bool changed = false;
    for (final typeArgument in typeArguments.value) {
      switch (typeArgument) {
        case TsLiteralType(literal: SingleNode(value: TsNumericLiteral())):
          changed = true;
          newTypeArguments.add(TsNumberKeyword());
          break;
        case TsLiteralType(literal: SingleNode(value: TsStringLiteral())):
          changed = true;
          newTypeArguments.add(TsStringKeyword());
          break;
        default:
          newTypeArguments.add(typeArgument);
      }
    }
    if (changed) {
      final result = TsTypeReference(
        node.typeName,
        newTypeArguments.toListNode(),
      );
      return result;
    }
  }
  return node;
}
