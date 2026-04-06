import '../model/ts_node.dart';
import '../transpiler/type_evaluator.dart';
import '../util/ts_node_foreach.dart';
import '../util/ts_node_search.dart';

// ─── Phase 1 ──────────────────────────────────────────────────────────────────

/// Converts a [TsTypeAliasDeclaration] that directly wraps a [TsTypeLiteral]
/// into a [TsInterfaceDeclaration] bearing the alias's name and type
/// parameters.
///
/// Before: `type Foo = { bar: string; baz: number }`
/// After:  `interface Foo { bar: string; baz: number }`
TsNode typeLiteralTypeAliasMapper(TsNode node, TypeEvaluator typeEvaluator) {
  if (node case TsTypeAliasDeclaration(
    flags: final flags,
    modifiers: final modifiers,
    name: final name,
    typeParameters: final typeParameters,
    type: NullableNode(value: TsTypeLiteral(members: final members)),
    meta: final meta,
  )) {
    return TsInterfaceDeclaration(
      flags,
      modifiers.copy(),
      name.copy(),
      typeParameters.copy(),
      ListNode([]),
      members.copy(),
      meta: meta.copy(),
    );
  }
  return node;
}

// ─── Phase 2 ──────────────────────────────────────────────────────────────────

/// Creates a pair of sanitizer mappers that together replace inline
/// [TsTypeLiteral] nodes with named [TsInterfaceDeclaration]s.
///
/// Both returned mappers must be placed in the **same** [SanitizerPhase] with
/// [PhaseDirection.bottomUp] so that nested type literals are processed before
/// outer ones and scope nodes ([TsSourceFile], [TsModuleBlock]) are handled
/// last.
///
/// - [extract]: replaces each [TsTypeLiteral] with a [TsTypeReference] to a
///   freshly created [TsInterfaceDeclaration]; registers that interface in the
///   shared scope registry.
/// - [insert]: when a [TsSourceFile] or [TsModuleBlock] is visited, appends
///   all registered interfaces to its statements list.
({TsNodeMapper extract, TsNodeMapper insert}) typeLiteralMappers() {
  // Maps each scope node (TsSourceFile | TsModuleBlock) to the list of
  // interfaces generated from inline type literals within that scope.
  final registry = <TsNode, List<TsInterfaceDeclaration>>{};
  Set<String>? usedTypeNames;
  var counter = 0;

  TsNode extract(TsNode node, TypeEvaluator typeEvaluator) {
    if (node is! TsTypeLiteral) return node;

    usedTypeNames ??= _collectDeclaredTypeNames(node.root);

    final baseName = '${_deriveTypeName(node, () => 'InlineType${++counter}')}\$TypeLiteral';
    final name = _ensureUniqueTypeName(baseName, usedTypeNames!);

    final interface = TsInterfaceDeclaration(
      [],
      ListNode([]),
      SingleNode(TsIdentifier([], name), affectsParent: true),
      ListNode([]),
      ListNode([]),
      node.members.copy(),
    );

    final scope = _findScope(node);
    if (scope != null) {
      registry.putIfAbsent(scope, () => []).add(interface);
    }

    return TsTypeReference(
      [],
      SingleNode(TsIdentifier([], name), affectsParent: true),
      ListNode([]),
    );
  }

  TsNode insert(TsNode node, TypeEvaluator typeEvaluator) {
    final pending = registry.remove(node);
    if (pending == null || pending.isEmpty) return node;

    final ListNode? statements = switch (node) {
      TsSourceFile() => node.statements,
      TsModuleBlock() => node.statements,
      _ => null,
    };
    if (statements == null) return node;

    statements.set([...statements.value, ...pending]);
    for (final interface in pending) {
      updateParentAndChilds(interface, node);
      // Add all descendants of the new interface to the search cache so that
      // subsequent sanitizer phases can find them.
      final descendants = <TsNode>[];
      interface.forEachDown(descendants.add);
      updateCache(descendants, []);
    }
    return node;
  }

  return (extract: extract, insert: insert);
}

// ─── Private helpers ─────────────────────────────────────────────────────────

/// Derives a context-aware Dart identifier for the extension type that will
/// replace [node] by walking the parent chain.  Falls back to [fallback] when
/// no suitable context is found.
String _deriveTypeName(TsTypeLiteral node, String Function() fallback) {
  final segments = <String>[];
  TsNode? current = node.parent;
  while (current != null) {
    if (current is TsPropertySignature) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsPropertyDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsParameter) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsVariableDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsMethodSignature) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsMethodDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsFunctionDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsTypeAliasDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsInterfaceDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsClassDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    } else if (current is TsEnumDeclaration) {
      final name = current.name.value.nodeName;
      if (name != null) segments.add(_capitalize(name));
    }
    current = current.parent;
  }

  if (segments.isEmpty) return fallback();

  // Build an outer-to-inner path to minimize collisions for nested literals.
  final ordered = segments.reversed.toList();
  return ordered.join(r'$');
}

/// Capitalises the first character of [s].
String _capitalize(String s) => s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';

Set<String> _collectDeclaredTypeNames(TsNode root) {
  final names = <String>{};
  for (final node in root.searchDown<TsNode>()) {
    final name = node.nodeName;
    if (name == null || name.isEmpty) continue;
    if (node is TsInterfaceDeclaration ||
        node is TsClassDeclaration ||
        node is TsTypeAliasDeclaration ||
        node is TsEnumDeclaration) {
      names.add(name);
    }
  }
  return names;
}

String _ensureUniqueTypeName(String baseName, Set<String> usedNames) {
  if (!usedNames.contains(baseName)) {
    usedNames.add(baseName);
    return baseName;
  }

  var index = 2;
  while (true) {
    final candidate = '$baseName\$$index';
    if (!usedNames.contains(candidate)) {
      usedNames.add(candidate);
      return candidate;
    }
    index++;
  }
}

/// Finds the nearest enclosing [TsSourceFile] or [TsModuleBlock] ancestor of
/// [node], or `null` when [node] has no such ancestor.
TsNode? _findScope(TsNode node) {
  TsNode? current = node.parent;
  while (current != null) {
    if (current is TsSourceFile || current is TsModuleBlock) return current;
    current = current.parent;
  }
  return null;
}
