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

TsNodeMapper removeNodesByIdentifierPrefix(String prefix) {
  return (TsNode node, TypeEvaluator typeEvaluator) {
    final isTopLevelFunction = switch (node) {
      TsFunctionDeclaration(
        name: SingleNode(value: TsIdentifier(text: final text)),
        parent: TsSourceFile() || TsModuleBlock(),
      ) =>
        text.startsWith(prefix),
      _ => false,
    };

    if (isTopLevelFunction) {
      return Ts$Removed(node);
    }

    final isTopLevelVariable = switch (node) {
      TsVariableDeclaration(
        name: SingleNode(value: TsIdentifier(text: final text)),
        parent: TsVariableDeclarationList(
          parent: TsVariableStatement(parent: TsSourceFile() || TsModuleBlock()),
        ),
      ) =>
        text.startsWith(prefix),
      _ => false,
    };

    if (isTopLevelVariable) {
      return Ts$Removed(node);
    }

    final isMethodOrPropertyNode = switch (node) {
      TsMethodDeclaration() || TsMethodSignature() || TsPropertyDeclaration() || TsPropertySignature() => true,
      _ => false,
    };

    if (!isMethodOrPropertyNode) {
      return node;
    }

    final hasMatchingIdentifierChild = node.children.any(
      (child) => switch (child) {
        TsIdentifier(text: final text) => text.startsWith(prefix),
        _ => false,
      },
    );

    if (hasMatchingIdentifierChild) {
      return Ts$Removed(node);
    }
    return node;
  };
}

final TsNodeMapper removeNodesWithUnderscoreIdentifierMapper = removeNodesByIdentifierPrefix('_');

const _defaultKinds = {
  TsNodeKind.interfaceDeclaration,
  TsNodeKind.classDeclaration,
  TsNodeKind.typeAliasDeclaration,
  TsNodeKind.enumDeclaration,
};

TsNodeMapper removeNodesByDependency(StaticDependency dependency, {Set<TsNodeKind> kinds = _defaultKinds}) {
  return (TsNode node, TypeEvaluator typeEvaluator) {
    if (kinds.contains(node.kind) && dependency.types.contains(node.nodeName)) {
      return Ts$Removed(node);
    }
    return node;
  };
}
