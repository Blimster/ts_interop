import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

class SanitizerPhase {
  final int phase;
  final List<TsNodeMapper> nodeMappers;

  SanitizerPhase._(this.phase, this.nodeMappers);

  TsNode _applyMappers(TsNode node) {
    if (nodeMappers.isEmpty) {
      return node;
    }

    final loopDetector = <int, int>{};
    TsNode mappedNode = node;
    while (true) {
      var mapped = 0;
      for (final (index, nodeMapper) in nodeMappers.indexed) {
        final tempNode = nodeMapper(mappedNode);
        updateParentAndChilds(mappedNode, node.parent);
        if (tempNode != mappedNode) {
          mappedNode = tempNode;
          mapped++;
          loopDetector[index] = loopDetector.putIfAbsent(index, () => 0) + 1;
          for (final executions in loopDetector.values) {
            if (executions > 3) {
              throw StateError(
                  'Loop detected in sanitizer! Node mapper $index was called more than 3 times in phase $index for node ${node.kind.name}:${node.nodeQualifier}.');
            }
          }
        }
      }
      if (mapped == 0) {
        return mappedNode;
      }
    }
  }

  TsNode _sanitizeNode(TsNode node) {
    final wrappers = node.nodeWrappers;
    for (final wrapper in wrappers) {
      final (added, removed) = switch (wrapper) {
        SingleNode() => wrapper.update(_sanitizeNode),
        NullableNode() => wrapper.update(_sanitizeNullableNode),
        ListNode() => wrapper.update(_sanitizeNodes),
      };
      updateCache(added, removed);
      updateParentAndChilds(node, node.parent);
    }

    return _applyMappers(node);
  }

  TsNode? _sanitizeNullableNode(TsNode? node) {
    if (node == null) {
      return null;
    }
    return _sanitizeNode(node);
  }

  List<TsNode> _sanitizeNodes(List<TsNode> nodes) {
    final result = <TsNode>[];
    for (final node in nodes) {
      final sanitizedNode = _sanitizeNullableNode(node);
      if (sanitizedNode != null) {
        result.add(sanitizedNode);
      }
    }
    return result;
  }
}

class Sanitizer {
  final void Function(int phase)? _beforePhase;
  final void Function(int phase)? _afterPhase;
  final List<SanitizerPhase> _phases = [];

  Sanitizer({void Function(int phase)? beforePhase, void Function(int phase)? afterPhase})
      : _beforePhase = beforePhase,
        _afterPhase = afterPhase;

  Sanitizer addPhase(List<TsNodeMapper> nodeMappers) {
    _phases.add(SanitizerPhase._(_phases.length, nodeMappers));
    return this;
  }

  TsPackage sanitize(TsPackage package) {
    buildCache(package);
    TsPackage sanitizedPackage = package;
    for (final phase in _phases) {
      _beforePhase?.call(phase.phase);
      final tempPackage = phase._sanitizeNode(sanitizedPackage);
      if (tempPackage is! TsPackage) {
        throw StateError('Node of type $TsPackage must be sanitized to a TsPackage.');
      }
      sanitizedPackage = tempPackage;
      _afterPhase?.call(phase.phase);
    }
    return sanitizedPackage;
  }
}
