import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

TsNode mergeDuplicateModulesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node is TsModuleDeclaration) {
    final moduleName = node.name.value.nodeName;
    if (moduleName != null) {
      final modules = node.root.searchDown<TsModuleDeclaration>(hasName(moduleName));
      if (modules.length > 1) {
        modules.sort((a, b) => a.id - b.id);
        if (modules.first.id == node.id) {
          final statements = <TsNode>[];
          for (final module in modules) {
            statements.addAll(module.body.value?.children ?? []);
          }
          (node.body.value as TsModuleBlock?)?.statements.set(statements);
        }
      }
    }
  }
  return node;
}

TsNode removeDuplicateModulesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node is TsModuleDeclaration) {
    final moduleName = node.name.value.nodeName;
    if (moduleName != null) {
      final modules = node.root.searchDown<TsModuleDeclaration>(hasName(moduleName));
      modules.sort((a, b) => a.id - b.id);
      if (node.id != modules.first.id) {
        return Ts$Removed(node);
      }
    }
  }
  return node;
}
