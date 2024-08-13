import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

TsNode deleteDuplicateInterfacesMapper(TsNode node) {
  if (node case TsInterfaceDeclaration()) {
    final interfaceName = node.nodeQualifier;
    if (interfaceName != null) {
      final classes = node.root.searchDown<TsClassDeclaration>(hasQualifier(interfaceName));
      if (classes.isNotEmpty) {
        return Ts$Removed(node);
      }
      final interfaces = node.root.searchDown<TsInterfaceDeclaration>(hasQualifier(interfaceName));
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
