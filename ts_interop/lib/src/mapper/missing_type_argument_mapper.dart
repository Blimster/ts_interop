import '../util/ts_node_search.dart';

import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';

final _notFound = <String>{};
final _found = <String, TsNode>{};

TsNode missingTypeArgumentMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node is WithTypeArguments) {
    final typeArguments = node.typeArguments;
    final referencedName = node.nodeName;
    if (referencedName != null) {
      if (_notFound.contains(referencedName)) {
        return node;
      }
      final cachedNode = _found[referencedName];
      var referencedNodes =
          cachedNode != null ? [cachedNode] : node.root.searchDown(and([hasName(referencedName), hasTypeParameters()]));
      if (referencedNodes.isNotEmpty) {
        _found[referencedName] = referencedNodes.first;
        final typeParameters = (referencedNodes.first as WithTypeParameters).typeParameters;
        if (typeArguments.value.length < typeParameters.value.length) {
          final additionalTypeArguments = <TsNode>[];
          for (var i = typeArguments.value.length; i < typeParameters.value.length; i++) {
            final tp = typeParameters.value[i] as TsTypeParameter;
            final defaultType = tp.defaultType;
            final constraint = tp.constraint;
            additionalTypeArguments.add(defaultType.value ?? constraint.value ?? TsAnyKeyword());
          }
          (node).updateTypeArguments([...typeArguments.value, ...additionalTypeArguments]);
        }
      } else {
        _notFound.add(referencedName);
      }
    }
  }
  return node;
}
