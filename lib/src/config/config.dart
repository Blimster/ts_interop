import 'package:ts_interop/ts_interop.dart';

typedef TsNodeConverter = TsNode? Function(TsNode node);

class TranspilerConfig {
  final Map<String, String> libs;
  final TsNodeConverter? typeNodeConverter;

  TranspilerConfig._(this.libs, this.typeNodeConverter);

  factory TranspilerConfig({Map<String, String> libs = const {}, TsNodeConverter? typeNodeConverter}) {
    return TranspilerConfig._(Map.of(libs), typeNodeConverter);
  }

  String? libForType(String? typeName) {
    if (typeName == null) {
      return null;
    }
    return libs[typeName];
  }

  TsNode? convertTypeNode(TsNode? node) {
    if (node == null) {
      return null;
    }
    if (typeNodeConverter != null) {
      return typeNodeConverter?.call(node);
    }
    return node;
  }
}
