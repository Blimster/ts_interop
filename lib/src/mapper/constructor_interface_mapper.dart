import '../../ts_interop.dart';
import '../transpiler/type_evaluator.dart';

TsNode constructorInterfaceCopyMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? interfaceName)))) {
    final constructorInterfaces = node.root.searchDown<TsInterfaceDeclaration>(hasName('${interfaceName}Constructor'));
    if (constructorInterfaces.isNotEmpty) {
      for (final constructorInterface in constructorInterfaces) {
        final result = node.members.set([
          ...node.members.value,
          ...constructorInterface.members.value.whereType<TsConstructSignature>().map((e) => e.copy()),
        ]);
        updateCache(result.$1, result.$2);
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
