import 'dart:convert';
import 'dart:io';

import 'package:ts_interop/ts_interop.dart';

void main() {
  final file = File('example/@babylonjs_core@7.15.1.json');
  final content = file.readAsStringSync();
  final json = jsonDecode(content);
  final package = readTypeScriptAst(json);
  //print(package);
}
