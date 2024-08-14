import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

TsNode removeDuplicateInterfacesMapper(TsNode node) {
  if (node case TsInterfaceDeclaration()) {
    final interfaceName = node.nodeName;
    if (interfaceName != null) {
      final classes = node.root.searchDown<TsClassDeclaration>(hasName(interfaceName));
      if (classes.isNotEmpty) {
        return Ts$Removed(node);
      }
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName(interfaceName));
      if (interfaces.length >= 2) {
        interfaces.sort((a, b) => a.id - b.id);
        if (node.id != interfaces.first.id) {
          return Ts$Removed(node);
        }
      }
    }
  }
  return node;
}
