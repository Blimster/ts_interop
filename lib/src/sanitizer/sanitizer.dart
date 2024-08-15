import 'package:ts_interop/src/transpiler/type_evaluator.dart';

import '../model/ts_node.dart';
import '../util/ts_node_search.dart';

enum PhaseDirection {
  topDown,
  bottomUp,
}

class SanitizerPhase {
  final String name;
  final PhaseDirection direction;
  final List<TsNodeMapper> nodeMappers;

  SanitizerPhase(this.name, this.direction, this.nodeMappers);

  TsNode _applyMappers(TsNode node, TypeEvaluator typeEvaluator) {
    if (nodeMappers.isEmpty) {
      return node;
    }

    final loopDetector = <int, int>{};
    TsNode mappedNode = node;
    while (true) {
      var mapped = 0;
      for (final (index, nodeMapper) in nodeMappers.indexed) {
        final tempNode = nodeMapper(mappedNode, typeEvaluator);
        updateParentAndChilds(mappedNode, node.parent);
        if (tempNode != mappedNode) {
          mappedNode = tempNode;
          mapped++;
          loopDetector[index] = loopDetector.putIfAbsent(index, () => 0) + 1;
          for (final executions in loopDetector.values) {
            if (executions > 3) {
              throw StateError(
                  'Loop detected in sanitizer! Node mapper $index was called more than 3 times in phase $index for node ${node.kind.name}:${node.nodeName}.');
            }
          }
        }
      }
      if (mapped == 0) {
        return mappedNode;
      }
    }
  }

  void _appleWrappers(TsNode node, TypeEvaluator typeEvaluator) {
    final wrappers = node.nodeWrappers;
    for (final wrapper in wrappers) {
      final (added, removed) = switch (wrapper) {
        SingleNode() => wrapper.update((node) => _sanitizeNode(node, typeEvaluator)),
        NullableNode() => wrapper.update((node) => _sanitizeNullableNode(node, typeEvaluator)),
        ListNode() => wrapper.update((nodes) => _sanitizeNodes(nodes, typeEvaluator)),
      };
      updateCache(added, removed);
      updateParentAndChilds(node, node.parent);
    }
  }

  TsNode _sanitizeNode(TsNode node, TypeEvaluator typeEvaluator) {
    switch (direction) {
      case PhaseDirection.topDown:
        final mappedNode = _applyMappers(node, typeEvaluator);
        _appleWrappers(mappedNode, typeEvaluator);
        return mappedNode;
      case PhaseDirection.bottomUp:
        _appleWrappers(node, typeEvaluator);
        return _applyMappers(node, typeEvaluator);
    }
  }

  TsNode? _sanitizeNullableNode(TsNode? node, TypeEvaluator typeEvaluator) {
    if (node == null) {
      return null;
    }
    return _sanitizeNode(node, typeEvaluator);
  }

  List<TsNode> _sanitizeNodes(List<TsNode> nodes, TypeEvaluator typeEvaluator) {
    final result = <TsNode>[];
    for (final node in nodes) {
      final sanitizedNode = _sanitizeNullableNode(node, typeEvaluator);
      if (sanitizedNode != null) {
        result.add(sanitizedNode);
      }
    }
    return result;
  }
}

class Sanitizer {
  final TypeEvaluator typeEvaluator;
  final void Function(String name)? _beforePhase;
  final void Function(String name)? _afterPhase;
  final List<SanitizerPhase> _phases = [];

  Sanitizer(this.typeEvaluator, {void Function(String name)? beforePhase, void Function(String name)? afterPhase})
      : _beforePhase = beforePhase,
        _afterPhase = afterPhase;

  Sanitizer addPhase(SanitizerPhase phase) {
    _phases.add(phase);
    return this;
  }

  Sanitizer addPhases(List<SanitizerPhase> phases) {
    _phases.addAll(phases);
    return this;
  }

  TsPackage sanitize(TsPackage package) {
    buildCache(package);
    TsPackage sanitizedPackage = package;
    for (final phase in _phases) {
      _beforePhase?.call(phase.name);
      final tempPackage = phase._sanitizeNode(sanitizedPackage, typeEvaluator);
      if (tempPackage is! TsPackage) {
        throw StateError('Node of type $TsPackage must be sanitized to a TsPackage.');
      }
      sanitizedPackage = tempPackage;
      _afterPhase?.call(phase.name);
    }
    return sanitizedPackage;
  }
}
