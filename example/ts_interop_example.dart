import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/ts_interop.dart';

TsNode standardTypesMapper(TsNode node) {
  final types = {
    'Promise': 'JSPromise',
    'Uint32Array': 'JSUint32Array',
    'Uint8Array': 'JSUint8Array',
    'ArrayBuffer': 'JSArrayBuffer',
  };

  if (node case TsTypeReference(typeName: TsIdentifier(text: final name))) {
    if (types.keys.contains(name)) {
      return TsTypeReference(
        TsIdentifier(types[name]!),
        node.typeArguments,
      );
    }
  }
  return node;
}

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

TsNode typeQueryMapper(TsNode node) {
  if (node case TsTypeQuery()) {
    return TsTypeReference(
      TsIdentifier('String'),
      [],
    );
  }
  return node;
}

TsNode mappedTypeMapper(TsNode node) {
  if (node case TsMappedType()) {
    return TsTypeReference(
      TsIdentifier('JSObject'),
      [],
    );
  }
  return node;
}

TsNode missingTypeMapper(TsNode node) {
  return switch (node) {
    TsParameter(type: null) => TsParameter(
        node.modifiers,
        node.name,
        node.questionToken,
        TsTypeReference(TsIdentifier('JSAny'), []),
        node.initializer,
      ),
    _ => node,
  };
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
  'JSAny': 'dart:js_interop',
  'JSObject': 'dart:js_interop',
  'JSArray': 'dart:js_interop',
  'JSArrayBuffer': 'dart:js_interop',
  'JSFunction': 'dart:js_interop',
  'JSPromise': 'dart:js_interop',
  'JSUint32Array': 'dart:js_interop',
  'JSUint8Array': 'dart:js_interop',
  'Document': 'package:web/web.dart',
  'WebGLProgram': 'package:web/web.dart',
  'Worker': 'package:web/web.dart',
  'ArrayBufferView': './types.dart',
  'ImageBitmap': './types.dart',
  'XRFrame': './types.dart',
  'XRInputSource': './types.dart',
  'WebGLContextAttributes': './types.dart',
  'ReadonlyArray': './types.dart',
  'Array': './types.dart',
  'Error': './types.dart',
  'GPURequestAdapterOptions': './types.dart',
  'IteratorResult': './types.dart',
};

void main() {
  final inFile = File('example/@babylonjs_core@7.16.0.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = TsPackage.fromJson(json);

  final config = TranspilerConfig(
    libs: libs,
    nodeMappers: [
      standardTypesMapper,
      missingTypeMapper,
      literalAsTypeArgumentMapper,
      typeQueryMapper,
      mappedTypeMapper,
      instanceTypeMapper,
      physicsEngineMapper,
    ],
  );

  final transpiler = Transpiler(config);
  final lib = transpiler.transpile(package, TranspilerConfig()).first;

  final emitter = DartEmitter.scoped();
  final DartFormatter formatter = DartFormatter();

  final outFile = File('example/babylonjs.dart');

  try {
    outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
  } catch (e) {
    print(e);
    outFile.writeAsStringSync(lib.accept(emitter).toString());
  }
}
