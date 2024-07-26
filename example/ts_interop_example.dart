import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/ts_interop.dart';

TsNode literalAsTypeArgumentMapper(TsNode node) {
  if (node case TsTypeReference()) {
    final typeArguments = node.typeArguments;
    final newTypeArguments = <TsNode>[];
    bool changed = false;
    for (final typeArgument in typeArguments) {
      switch (typeArgument) {
        case TsLiteralType(literal: TsNumericLiteral()):
          changed = true;
          newTypeArguments.add(TsNumberKeyword());
          break;
        default:
          newTypeArguments.add(typeArgument);
      }
    }
    if (changed) {
      final result = TsTypeReference(
        node.typeName,
        newTypeArguments,
      );
      return result;
    }
  }
  return node;
}

TsNode instanceTypeMapper(TsNode node) {
  if (node case TsTypeReference(typeName: TsIdentifier(text: 'InstanceType'))) {
    return TsTypeReference(TsIdentifier('C'), []);
  }
  return node;
}

TsNode physicsEngineMapper(TsNode node) {
  if (node case TsClassDeclaration(name: TsIdentifier(text: 'PhysicsEngine'))) {
    final parent = node.firstParent<TsSourceFile>();
    if (parent != null) {
      if (parent.path.contains('v2')) {
        return TsClassDeclaration(
          node.modifiers,
          TsIdentifier('PhysicsEngineV2'),
          node.typeParameters,
          node.heritageClauses,
          node.members,
        );
      }
    }
  }
  return node;
}

final libs = {
  'XRFrame': './types.dart',
  'WebGLContextAttributes': './types.dart',
  'ReadonlyArray': './types.dart',
  'Array': './types.dart',
  'Error': './types.dart',
  'GPURequestAdapterOptions': './types.dart',
};

void main() {
  final inFile = File('example/@babylonjs_core@7.16.0.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = TsPackage.fromJson(json);

  final config = TranspilerConfig(
    libs: libs,
    nodeMappers: [
      literalAsTypeArgumentMapper,
      instanceTypeMapper,
      physicsEngineMapper,
    ],
  );

  final transpiler = Transpiler(config);
  final lib = transpiler.transpile(package, TranspilerConfig()).first;

  final emitter = DartEmitter.scoped();
  final DartFormatter formatter = DartFormatter();

  final outFile = File('example/babylonjs.dart');

  outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
}
