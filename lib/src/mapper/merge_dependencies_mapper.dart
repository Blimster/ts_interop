import '../dependency/dependency.dart';
import '../model/ts_node.dart';

TsNodeMapper mergeDependenciesMapper(Dependencies dependencies, {Set<String> excludes = const {}}) {
  return (TsNode node) {
    if (node case TsInterfaceDeclaration(nodeName: var name?)) {
      if (!excludes.contains(name) && dependencies.containsType(name)) {
        node.heritageClauses.update((heritageClauses) {
          final result = List.of(heritageClauses);
          result.add(TsHeritageClause(
            TsImplementsKeyword().toSingleNode(),
            [
              TsTypeReference(
                TsIdentifier(name).toSingleNode(),
                ListNode([]),
                meta: TsNodeMeta(external: true),
              )
            ].toListNode(),
          ));
          return result;
        });
      }
    }
    if (node case TsClassDeclaration(nodeName: var name?)) {
      if (!excludes.contains(name) && dependencies.containsType(name)) {
        node.heritageClauses.update((heritageClauses) {
          final result = List.of(heritageClauses);
          result.add(TsHeritageClause(
            TsImplementsKeyword().toSingleNode(),
            [
              TsTypeReference(
                TsIdentifier(name).toSingleNode(),
                ListNode([]),
                meta: TsNodeMeta(external: true),
              )
            ].toListNode(),
          ));
          return result;
        });
      }
    }
    return node;
  };
}
