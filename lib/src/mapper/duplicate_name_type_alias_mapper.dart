import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

/// Detects and fixes the pattern where a const object and a type alias have the same name.
///
/// TypeScript allows this because types and values have separate namespaces:
/// ```typescript
/// export const TimestampQuery: { COMPUTE: "compute"; RENDER: "render"; };
/// export type TimestampQuery = typeof TimestampQuery.COMPUTE | typeof TimestampQuery.RENDER;
/// ```
///
/// Dart does not allow this, so this mapper renames the type alias by appending `$Type`.
/// The type alias becomes `TimestampQuery$Type`.
TsNode duplicateNameTypeAliasMapper(TsNode node, TypeEvaluator typeEvaluator) {
  // Check if this is a type alias declaration with export modifier
  if (node case TsTypeAliasDeclaration(
    name: SingleNode(value: TsIdentifier(text: String? aliasName)),
    modifiers: ListNode(value: final aliasModifiers),
  )) {
    // Check if it has export modifier
    final hasExportModifier = aliasModifiers.whereType<TsExportKeyword>().isNotEmpty;

    if (!hasExportModifier) {
      return node;
    }

    // Search for a variable declaration with the same name
    final conflictingDeclarations = node.root.searchDown<TsVariableDeclaration>(hasName(aliasName)).where((varDecl) {
      // Check if this declaration is within an exported variable statement
      TsNode? current = varDecl.parent;
      while (current != null) {
        if (current case TsVariableStatement(
          modifiers: ListNode(value: final stmtModifiers),
        )) {
          return stmtModifiers.whereType<TsExportKeyword>().isNotEmpty;
        }
        current = current.parent;
      }
      return false;
    });

    // If a conflicting variable exists, rename the type alias
    if (conflictingDeclarations.isNotEmpty) {
      final newName = '$aliasName\$Type';
      node.name.update((nameNode) {
        if (nameNode case TsIdentifier(text: _)) {
          return TsIdentifier(nameNode.flags, newName);
        }
        return nameNode;
      });
    }
  }

  return node;
}
