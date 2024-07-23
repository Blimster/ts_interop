import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/src/config/config.dart';
import 'package:ts_interop/src/transpiler/transpiler.dart';
import 'package:ts_interop/ts_interop.dart';

void main() {
  final inFile = File('example/@babylonjs_core@7.16.0.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = readTypeScriptAst(json);

  final transpiler = Transpiler();
  final lib = transpiler.transpile(package, Config());

  final emitter = DartEmitter.scoped();
  final DartFormatter formatter = DartFormatter();

  final outFile = File('example/babylonjs.dart');

  outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
}
