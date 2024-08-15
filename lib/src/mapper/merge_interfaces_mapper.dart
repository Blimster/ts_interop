import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

TsNode mergeInterfacesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration()) {
    final interfaceName = node.nodeName;
    if (interfaceName != null) {
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(interfaceName));
      if (interfaces.length >= 2) {
        interfaces.sort((a, b) => a.id - b.id);
        if (node.id != interfaces.first.id) {
          // TODO merge into 2 mappers:
          // 1.) merge members, modifiers and heritage clauses
          // 2.) remove interface
        }
      }
    }
  }
  return node;
}
