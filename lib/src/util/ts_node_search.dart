import 'package:binary_tree/binary_tree.dart';
import 'package:ts_interop/src/util/ts_node_foreach.dart';

import '../model/ts_node.dart';

final _cache = <String, BinaryTree<TsNode>>{};

class _IsTypeConstraint<T extends TsNode> implements SearchConstraint {
  @override
  BinaryTree<TsNode> _matchingNodes() {
    return _cache['t:${T.toString()}'] ?? BinaryTree<T>();
  }

  @override
  String toString() => 'isType($T)';
}

class _HasQualifierConstraint implements SearchConstraint {
  final String qualifier;

  _HasQualifierConstraint(this.qualifier);

  @override
  BinaryTree<TsNode> _matchingNodes() {
    return _cache['q:$qualifier'] ?? BinaryTree<TsNode>();
  }

  @override
  String toString() => 'hasQualifier($qualifier)';
}

class _HasTypeParameters implements SearchConstraint {
  @override
  BinaryTree<TsNode> _matchingNodes() {
    return _cache['tp'] ?? BinaryTree<TsNode>();
  }

  @override
  String toString() => 'hasTypeParameters()';
}

class _HasTypeArguments implements SearchConstraint {
  @override
  BinaryTree<TsNode> _matchingNodes() {
    return _cache['ta'] ?? BinaryTree<TsNode>();
  }

  @override
  String toString() => 'hasTypeArguments()';
}

class _AndConstraint implements SearchConstraint {
  final List<SearchConstraint> constraints;

  _AndConstraint(this.constraints);

  @override
  BinaryTree<TsNode> _matchingNodes() {
    final constraintResults = constraints.map((c) => c._matchingNodes()).toList();
    if (constraintResults.isEmpty) {
      return BinaryTree<TsNode>();
    }
    if (constraintResults.length == 1) {
      return constraintResults.first;
    }
    constraintResults.sort((a, b) => a.length.compareTo(b.length));
    final result = BinaryTree<TsNode>();
    for (var node in constraintResults[0]) {
      for (int i = 1; i < constraintResults.length; i++) {
        bool found = true;
        if (!constraintResults[i].contains(node)) {
          found = false;
          break;
        }
        if (found) {
          result.insert(node);
        }
      }
    }
    return result;
  }

  @override
  String toString() => 'and(${constraints.map((c) => c.toString()).join(', ')})';
}

class _OrConstraint implements SearchConstraint {
  final List<SearchConstraint> constraints;

  _OrConstraint(this.constraints);

  @override
  BinaryTree<TsNode> _matchingNodes() {
    final constraintResults = constraints.map((c) => c._matchingNodes()).toList();
    if (constraintResults.isEmpty) {
      return BinaryTree<TsNode>();
    }
    if (constraintResults.length == 1) {
      return constraintResults.first;
    }
    final result = BinaryTree<TsNode>();
    for (final constraintResult in constraintResults) {
      result.insertAll(constraintResult);
    }
    return BinaryTree();
  }

  @override
  String toString() => 'or(${constraints.map((c) => c.toString()).join(', ')})';
}

abstract class SearchConstraint {
  BinaryTree<TsNode> _matchingNodes();
}

SearchConstraint hasQualifier(String qualifier) {
  return _HasQualifierConstraint(qualifier);
}

SearchConstraint hasTypeParameters() {
  return _HasTypeParameters();
}

SearchConstraint hasTypeArguments() {
  return _HasTypeArguments();
}

SearchConstraint and(List<SearchConstraint> constraints) {
  return _AndConstraint(constraints);
}

SearchConstraint or(List<SearchConstraint> constraints) {
  return _OrConstraint(constraints);
}

void buildCache(TsPackage package) {
  _cache.clear();
  package.forEachDown((node) {
    final all = _cache.putIfAbsent('t:TsNode', () => BinaryTree<TsNode>());
    all.insert(node);

    final isType = _cache.putIfAbsent('t:${node.runtimeType.toString()}', () => BinaryTree<TsNode>());
    isType.insert(node);

    final hasQualifier = _cache.putIfAbsent('q:${node.nodeQualifier}', () => BinaryTree<TsNode>());
    hasQualifier.insert(node);

    if (node is WithTypeParameters) {
      final hasTypeParameters = _cache.putIfAbsent('tp', () => BinaryTree<TsNode>());
      hasTypeParameters.insert(node);
    }
    if (node is WithTypeArguments) {
      final hasTypeArguments = _cache.putIfAbsent('ta', () => BinaryTree<TsNode>());
      hasTypeArguments.insert(node);
    }
  });
}

void updateCache(List<TsNode> added, List<TsNode> removed) {
  final all = _cache.putIfAbsent('t:TsNode', () => BinaryTree<TsNode>());
  for (final node in removed) {
    all.remove(node);

    final isType = _cache.putIfAbsent('t:${node.runtimeType.toString()}', () => BinaryTree<TsNode>());
    isType.remove(node);

    final hasQualifier = _cache.putIfAbsent('q:${node.nodeQualifier}', () => BinaryTree<TsNode>());
    hasQualifier.remove(node);

    if (node is WithTypeParameters) {
      final hasTypeParameters = _cache.putIfAbsent('tp', () => BinaryTree<TsNode>());
      hasTypeParameters.remove(node);
    }
    if (node is WithTypeArguments) {
      final hasTypeArguments = _cache.putIfAbsent('ta', () => BinaryTree<TsNode>());
      hasTypeArguments.remove(node);
    }
  }
  for (final node in removed) {
    all.insert(node);

    final isType = _cache.putIfAbsent('t:${node.runtimeType.toString()}', () => BinaryTree<TsNode>());
    isType.insert(node);

    final hasQualifier = _cache.putIfAbsent('q:${node.nodeQualifier}', () => BinaryTree<TsNode>());
    hasQualifier.insert(node);

    if (node is WithTypeParameters) {
      final hasTypeParameters = _cache.putIfAbsent('tp', () => BinaryTree<TsNode>());
      hasTypeParameters.insert(node);
    }
    if (node is WithTypeArguments) {
      final hasTypeArguments = _cache.putIfAbsent('ta', () => BinaryTree<TsNode>());
      hasTypeArguments.insert(node);
    }
  }
}

List<T> searchCache<T extends TsNode>([SearchConstraint? constraint]) {
  return and([
    _IsTypeConstraint<T>(),
    if (constraint != null) constraint,
  ])._matchingNodes().cast<T>().toList();
}

extension TsNodeSearch on TsNode {
  List<T> _search<T extends TsNode>(bool Function(TsNode) predicate, [SearchConstraint? constraint]) {
    return and([
      _IsTypeConstraint<T>(),
      if (constraint != null) constraint,
    ])._matchingNodes().where((node) => predicate(node)).cast<T>().toList();
  }

  List<T> searchUp<T extends TsNode>([SearchConstraint? constraint]) {
    return _search(isChildOf, constraint);
  }

  List<T> searchDown<T extends TsNode>([SearchConstraint? constraint]) {
    return _search(isParentOf, constraint);
  }
}
