import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

TsNode mergeInterfaceIntoClassMapper(TsNode node) {
  if (node case TsClassDeclaration()) {
    final className = node.nodeQualifier;
    if (className != null) {
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasQualifier(className));
      if (interfaces.isNotEmpty) {
        // TODO merge modifiers and heritage clauses into class
        final members = List.of(node.members.value);
        for (final interfaze in interfaces) {
          members.addAll(interfaze.members.value);
        }
        node.members.set(members);
      }
      final newHeritageClauses = <TsNode>[];
      for (final currentHeritageClause in node.heritageClauses.value
          .cast<TsHeritageClause>()
          .expand((node) => node.types.value)
          .cast<TsExpressionWithTypeArguments>()
          .map((node) => node.expression.value)) {
        if (currentHeritageClause.nodeQualifier != className) {
          newHeritageClauses.add(currentHeritageClause);
        }
      }
      node.heritageClauses.set(newHeritageClauses);
      return node;
    }
  }
  return node;
}
