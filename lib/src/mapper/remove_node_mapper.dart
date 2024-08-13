import '../dependency/dependency.dart';
import '../model/ts_node.dart';

TsNodeMapper removeNodesByKindAndQualifier(Set<TsNodeKind> kinds, Set<String> nodeQualifiers) {
  return (TsNode node) {
    if (kinds.contains(node.kind) && nodeQualifiers.contains(node.nodeQualifier)) {
      return Ts$Removed(node);
    }
    return node;
  };
}

const _defaultKinds = {
  TsNodeKind.interfaceDeclaration,
  TsNodeKind.classDeclaration,
  TsNodeKind.typeAliasDeclaration,
  TsNodeKind.enumDeclaration,
};

TsNodeMapper removeNodesByDependency(Dependency dependency, {Set<TsNodeKind> kinds = _defaultKinds}) {
  return (TsNode node) {
    if (kinds.contains(node.kind) && dependency.types.contains(node.nodeQualifier)) {
      return Ts$Removed(node);
    }
    return node;
  };
}
