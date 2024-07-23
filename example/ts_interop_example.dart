import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/src/config/config.dart';
import 'package:ts_interop/src/transpiler/transpiler.dart';
import 'package:ts_interop/ts_interop.dart';

TsNode? nodeConverter(TsNode node) {
  return switch (node) {
    TsTypeReference(typeName: TsIdentifier(text: 'InstanceType')) => TsTypeReference(TsIdentifier('C'), []),
    _ => node,
  };
}

void main() {
  final inFile = File('example/@babylonjs_core@7.16.0.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = readTypeScriptAst(json);

  final config = TranspilerConfig(
    libs: {
      'XRFrame': './types.dart',
      'WebGLContextAttributes': './types.dart',
      'ReadonlyArray': './types.dart',
      'GPURequestAdapterOptions': './types.dart',
    },
    typeNodeConverter: nodeConverter,
  );

  final transpiler = Transpiler(config);
  final lib = transpiler.transpile(package, TranspilerConfig());

  final emitter = DartEmitter.scoped();
  final DartFormatter formatter = DartFormatter();

  final outFile = File('example/babylonjs.dart');

  outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
}
