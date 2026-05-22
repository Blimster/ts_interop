import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

String _scopeId(TsNode node) {
  return 'package';
}

bool _isDuplicateInScope<T extends TsNode>(T node) {
  final name = node.nodeName;
  if (name == null) {
    return false;
  }

  final scopeId = _scopeId(node);
  final duplicates = node.root
      .searchDown<T>(hasName(name))
      .where((candidate) => _scopeId(candidate) == scopeId)
      .toList()
    ..sort((a, b) => a.id - b.id);

  return duplicates.length > 1 && duplicates.first.id != node.id;
}

TsNode removeDuplicateDeclarationMapper(TsNode node, TypeEvaluator typeEvaluator) {
  return switch (node) {
    TsClassDeclaration() when _isDuplicateInScope<TsClassDeclaration>(node) => Ts$Removed(node),
    TsEnumDeclaration() when _isDuplicateInScope<TsEnumDeclaration>(node) => Ts$Removed(node),
    TsFunctionDeclaration() when _isDuplicateInScope<TsFunctionDeclaration>(node) => Ts$Removed(node),
    TsInterfaceDeclaration() when _isDuplicateInScope<TsInterfaceDeclaration>(node) => Ts$Removed(node),
    TsTypeAliasDeclaration() when _isDuplicateInScope<TsTypeAliasDeclaration>(node) => Ts$Removed(node),
    TsVariableDeclaration() when _isDuplicateInScope<TsVariableDeclaration>(node) => Ts$Removed(node),
    _ => node,
  };
}
