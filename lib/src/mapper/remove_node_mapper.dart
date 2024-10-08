import '../dependency/dependency.dart';
import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

TsNodeMapper removeNodesByKindAndQualifier(Set<TsNodeKind> kinds, Set<String> nodeQualifiers) {
  return (TsNode node, TypeEvaluator typeEvaluator) {
    if (kinds.contains(node.kind) && nodeQualifiers.contains(node.nodeName)) {
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
  return (TsNode node, TypeEvaluator typeEvaluator) {
    if (kinds.contains(node.kind) && dependency.types.contains(node.nodeName)) {
      return Ts$Removed(node);
    }
    return node;
  };
}
