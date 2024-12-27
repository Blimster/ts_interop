import '../../ts_interop.dart';
import '../transpiler/type_evaluator.dart';

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
