import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

TsNode missingTypeParameterMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsInterfaceDeclaration()) {
    final constructSignatures = node.searchChilds<TsConstructSignature>();
    if (constructSignatures.isNotEmpty) {
      for (final constructSignatures in constructSignatures) {
        final typeParameters = constructSignatures.typeParameters;
        if (typeParameters.value.isNotEmpty) {
          final interfaceTypeParamNames = node.typeParameters.value
              .whereType<TsTypeParameter>()
              .map((e) => e.nodeName)
              .toSet();
          final additionalTypeParameters = <TsTypeParameter>[];
          for (final typeParameter in typeParameters.value.whereType<TsTypeParameter>()) {
            if (!interfaceTypeParamNames.contains(typeParameter.nodeName)) {
              additionalTypeParameters.add(typeParameter);
            }
          }
          node.typeParameters.set([...node.typeParameters.value, ...additionalTypeParameters]);
        }
      }
    }
  }
  return node;
}
