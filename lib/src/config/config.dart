import 'package:ts_interop/ts_interop.dart';

typedef TsNodeMapper = List<TsNode> Function(TsNode node);

class TranspilerConfig {
  final Map<String, String> libs;
  final TsNodeMapper? nodeMapper;

  TranspilerConfig._(this.libs, this.nodeMapper);

  factory TranspilerConfig({Map<String, String> libs = const {}, TsNodeMapper? typeNodeConverter}) {
    return TranspilerConfig._(Map.of(libs), typeNodeConverter);
  }

  String? libForType(String? typeName) {
    if (typeName == null) {
      return null;
    }
    return libs[typeName];
  }

  List<TsNode> mapNode(TsNode? node) {
    if (node == null) {
      return [];
    }
    return nodeMapper?.call(node) ?? [node];
  }
}
