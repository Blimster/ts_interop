import 'package:ts_interop/src/util/ts_node_search.dart';

import '../model/ts_node.dart';

final _notFound = <String>{};
final _found = <String, TsNode>{};

TsNode missingTypeArgumentMapper(TsNode node) {
  if (node is WithTypeArguments) {
    final typeArguments = (node as WithTypeArguments).typeArguments;
    final referencedName = node.nodeName;
    if (referencedName != null) {
      if (_notFound.contains(referencedName)) {
        return node;
      }
      final cachedNode = _found[referencedName];
      var referencedNodes = cachedNode != null
          ? [cachedNode]
          : node.root.searchDown(
              and([
                hasName(referencedName),
                hasTypeParameters(),
              ]),
            );
      if (referencedNodes.isNotEmpty) {
        _found[referencedName] = referencedNodes.first;
        final typeParameters = (referencedNodes.first as WithTypeParameters).typeParameters;
        if (typeArguments.value.length < typeParameters.value.length) {
          final additionalTypeArguments = <TsNode>[];
          for (var i = typeArguments.value.length; i < typeParameters.value.length; i++) {
            final tp = typeParameters.value[i] as TsTypeParameter;
            final defaultType = tp.defaultType;
            if (defaultType.value != null) {
              additionalTypeArguments.add(defaultType.value!);
            }
          }
          (node as WithTypeArguments).updateTypeArguments([
            ...typeArguments.value,
            ...additionalTypeArguments,
          ]);
        }
      } else {
        _notFound.add(referencedName);
      }
    }
  }
  return node;
}
