import '../model/ts_node.dart';

TsNode literalAsTypeArgumentMapper(TsNode node) {
  if (node case TsTypeReference()) {
    final typeArguments = node.typeArguments;
    final newTypeArguments = <TsNode>[];
    bool changed = false;
    for (final typeArgument in typeArguments) {
      switch (typeArgument) {
        case TsLiteralType(literal: TsNumericLiteral()):
          changed = true;
          newTypeArguments.add(TsNumberKeyword());
          break;
        case TsLiteralType(literal: TsStringLiteral()):
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
        newTypeArguments,
      );
      return result;
    }
  }
  return node;
}
