import 'package:ts_interop/src/model/typescript/ast.dart';

TsPackage readTypeScriptAst(Map<String, dynamic> json) {
  return TsPackage.fromJson(json);
}
