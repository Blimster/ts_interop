import 'package:ts_interop/src/util/ts_node_search.dart';

import '../model/ts_node.dart';

final _notFound = <String>{};
final _found = <String, TsNode>{};

TsNode? missingTypeArgumentMapper(TsNode node) {
  if (node is WithTypeArguments) {
    final typeArguments = (node as WithTypeArguments).typeArguments;
    final referencedName = node.nodeQualifier;
    if (referencedName != null) {
      if (_notFound.contains(referencedName)) {
        return node;
      }
      final cachedNode = _found[referencedName];
      var referencedNodes = cachedNode != null
          ? [cachedNode]
          : node.root.searchDown(
              and([
                hasQualifier(referencedName),
                hasTypeParameters(),
              ]),
            );
      if (referencedNodes.isNotEmpty) {
        _found[referencedName] = referencedNodes.first;
        final typeParameters = (referencedNodes.first as WithTypeParameters).typeParameters;
        if (typeArguments.length < typeParameters.length) {
          final additionalTypeArguments = <TsNode>[];
          for (var i = typeArguments.length; i < typeParameters.length; i++) {
            final tp = typeParameters[i] as TsTypeParameter;
            final defaultType = tp.defaultType;
            if (defaultType != null) {
              additionalTypeArguments.add(defaultType);
            }
            //additionalTypeArguments.add(TsTypeReference(TsIdentifier('JSAny'), []));
          }
          return (node as WithTypeArguments).copyWithTypeArguments([
            ...typeArguments,
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
