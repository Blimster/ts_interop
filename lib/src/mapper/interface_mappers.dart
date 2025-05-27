import 'dart:collection';

import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

TsNode mergeDuplicateInterfacesMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration()) {
    final interfaceName = node.nodeName;
    if (interfaceName != null) {
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(interfaceName));
      if (interfaces.length >= 2) {
        interfaces.sort((a, b) => a.id - b.id);
        if (node.id == interfaces.first.id) {
          final foo = HashSet<TsNode>(
            equals: (e1, e2) => e1.nodeName == e2.nodeName,
            hashCode: (e) => e.nodeName.hashCode,
          );
          foo.addAll(interfaces.expand((source) => source.members.value));
          node.members.set(foo.toList());
          return node;
        }
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
