import 'package:ts_interop/ts_interop.dart';

class TranspilerConfig {
  final Map<String, String> libs;
  final List<TsNodeMapper> nodeMappers;

  TranspilerConfig._(this.libs, this.nodeMappers);

  factory TranspilerConfig({Map<String, String> libs = const {}, List<TsNodeMapper>? nodeMappers}) {
    return TranspilerConfig._(
      Map.of(libs),
      nodeMappers != null ? List.of(nodeMappers) : [],
    );
  }

  String? libForType(String? typeName) {
    if (typeName == null) {
      return null;
    }
    return libs[typeName];
  }

  TsNode? mapNode(TsNode? node) {
    if (node == null) {
      return null;
    }
    if (nodeMappers.isEmpty) {
      return node;
    }

    final loopDetector = <int, int>{};
    TsNode mappedNode = node;
    while (true) {
      var mapped = 0;
      for (final (index, nodeMapper) in nodeMappers.indexed) {
        final tempNode = nodeMapper(mappedNode);
        if (tempNode == null) {
          return null;
        }
        if (tempNode != mappedNode) {
          mappedNode = tempNode;
          mapped++;
          loopDetector[index] = loopDetector.putIfAbsent(index, () => 0) + 1;
          for (final executions in loopDetector.values) {
            if (executions > 3) {
              throw StateError(
                  'ERROR: Loop detected in node mappers! Node mapper $index was called more than 3 times for node ${node.kind.name}:${node.nodeQualifier}.');
            }
          }
        }
      }
      if (mapped == 0) {
        return mappedNode;
      }
    }
  }
}
