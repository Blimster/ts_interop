import '../../ts_interop.dart';
import '../transpiler/type_evaluator.dart';

TsNode constructorCopyMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? interfaceName)))) {
    final constructorInterfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName('${interfaceName}Constructor'));
    for (final constructorInterface in constructorInterfaces) {
      node.members.set([
        ...node.members.value,
        ...constructorInterface.members.value.whereType<TsConstructSignature>().map((e) => e.copy()),
      ]);
    }
    final identifiers = node.parent?.searchDown<TsIdentifier>(hasName(interfaceName)) ?? [];
    for (final identifier in identifiers) {
      final parent = identifier.parent;
      if (parent case TsVariableDeclaration(
        type: NullableNode(value: TsTypeLiteral(members: ListNode(value: List<TsNode> members))),
      )) {
        node.members.set([...node.members.value, ...members.whereType<TsConstructSignature>().map((e) => e.copy())]);
        // TODO copy methods as statics methods to the interface
        // print(members.whereType<TsMethodSignature>());
      }
    }
  }
  return node;
}

TsNode constructorInterfaceFixJsBindingMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? interfaceName)))) {
    final constructSignatures = node.searchChilds<TsConstructSignature>();
    if (constructSignatures.isNotEmpty) {
      final constructorTypes = <String>{};
      for (final constructSignature in constructSignatures) {
        final type = constructSignature.type.value?.meta.originalName ?? constructSignature.type.value?.nodeName;
        if (type != null) {
          constructorTypes.add(type);
        }
      }
      if (constructorTypes.isNotEmpty) {
        if (constructorTypes.first != interfaceName) {
          node.meta.originalName = constructorTypes.first;
        }
      }
    }
  }
  return node;
}

TsNode constructorRemoveInterfaceMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? interfaceName)))) {
    if (interfaceName.endsWith('Constructor')) {
      final constructorInterfaces = node.root.searchDown<TsInterfaceDeclaration>(
        hasName(interfaceName.substring(0, interfaceName.lastIndexOf('Constructor'))),
      );
      if (constructorInterfaces.isNotEmpty) {
        return Ts$Removed(node);
      }
    }
  }
  return node;
}

TsNode constructorRemoveVariableMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsVariableDeclaration(
    name: SingleNode(value: TsIdentifier(text: String? name)),
    type: NullableNode(value: TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: String? type)))),
  )) {
    if (type == '${name}Constructor') {
      return Ts$Removed(node);
    }
  } else if (node case TsVariableDeclaration(
    name: SingleNode(value: TsIdentifier(text: String? name)),
    type: NullableNode(value: TsTypeLiteral(members: ListNode(value: List<TsNode> members))),
  )) {
    if (members.any((e) {
      if (e case TsConstructSignature(
        type: NullableNode(value: TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: String type)))),
      )) {
        return type == name;
      }
      return false;
    })) {
      return Ts$Removed(node);
    }
  }
  return node;
}
