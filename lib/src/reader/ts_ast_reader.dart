import 'package:ts_interop/src/model/ts/ts_ast_nodes.dart';

TsPackage readTypeScriptAst(Map<String, dynamic> json) {
  return TsPackage.fromJson(json);
}
