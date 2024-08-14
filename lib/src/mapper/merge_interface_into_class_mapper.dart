import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

TsNode mergeInterfaceIntoClassMapper(TsNode node) {
  if (node case TsClassDeclaration()) {
    final className = node.nodeName;
    if (className != null) {
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(className));
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
          .whereType<TsHeritageClause>()
          .expand((node) => node.types.value)
          .where((node) => node.nodeName != className)) {
        if (currentHeritageClause.nodeName != className) {
          newHeritageClauses.add(currentHeritageClause);
        }
      }
      node.heritageClauses.set([
        TsHeritageClause(
          SingleNode(TsImplementsKeyword()),
          ListNode(newHeritageClauses),
        )
      ]);
      return node;
    }
  }
  return node;
}
