import '../../ts_interop.dart';
import '../transpiler/type_evaluator.dart';

TsNode constructorInterfaceMapper(TsNode node, TypeEvaluator typeEvaluator) {
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
          print('------ ${constructorTypes.first}');
          node.meta.originalName = constructorTypes.first;
        }
      }
    }
  }
  return node;
}
