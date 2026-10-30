import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

TsNode mergeDuplicateInterfacesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? interfaceName)))) {
    final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(interfaceName));
    if (interfaces.length >= 2) {
      interfaces.sort((a, b) => a.id - b.id);
      if (node.id == interfaces.first.id) {
        final members = <TsNode>{};
        members.addAll(interfaces.expand((interface) => interface.members.value.map((e) => e.copy())));
        node.members.set(members.toList());
      }
    }
  }
  return node;
}

TsNode removeDuplicateInterfacesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(nodeName: final interfaceName?)) {
    final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(interfaceName));
    if (interfaces.length >= 2) {
      interfaces.sort((a, b) => a.id - b.id);
      if (node.id != interfaces.first.id) {
        return Ts$Removed(node);
      }
    }
  }
  return node;
}
