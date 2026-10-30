import '../model/ts_node.dart';

extension TsNodeForEach on TsNode {
  void forEachDown(void Function(TsNode) callback) {
    callback(this);
    for (final child in children) {
      child.forEachDown(callback);
    }
  }
}
