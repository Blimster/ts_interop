import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/src/mapper/missing_type_argument_mapper.dart';
import 'package:ts_interop/src/util/ts_node_search.dart';
import 'package:ts_interop/ts_interop.dart';

TsNode physicsEngineMapper(TsNode node) {
  if (node case TsClassDeclaration(name: TsIdentifier(text: 'PhysicsEngine'))) {
    final parent = node.searchUp<TsSourceFile>();
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

TsNode tupleMapper(TsNode node) {
  if (node case TsTypeAliasDeclaration(name: TsIdentifier(text: '_Tuple'), type: TsConditionalType())) {
    return TsTypeAliasDeclaration(
      node.modifiers,
      node.name,
      node.typeParameters,
      TsTypeReference(
        TsIdentifier('JSArray'),
        [TsTypeReference(TsIdentifier('N'), [])],
      ),
    );
  }
  return node;
}

final libs = {
  'JSAny': 'dart:js_interop',
  'JSObject': 'dart:js_interop',
  'JSBoolean': 'dart:js_interop',
  'JSString': 'dart:js_interop',
  'JSNumber': 'dart:js_interop',
  'JSArray': 'dart:js_interop',
  'JSArrayBuffer': 'dart:js_interop',
  'JSFunction': 'dart:js_interop',
  'JSPromise': 'dart:js_interop',
  'JSInt8Array': 'dart:js_interop',
  'JSUint8Array': 'dart:js_interop',
  'JSUint32Array': 'dart:js_interop',
  'JSFloat32Array': 'dart:js_interop',
  'Document': 'package:web/web.dart',
  'HTMLElement': 'package:web/web.dart',
  'HTMLCanvasElement': 'package:web/web.dart',
  'WebGLProgram': 'package:web/web.dart',
  'WebGLShader': 'package:web/web.dart',
  'Worker': 'package:web/web.dart',
  'WebGLContextAttributes': 'package:web/web.dart',
  'JSVoid': './types.dart',
  'Parameters': './types.dart',
  'Record': './types.dart',
  'ArrayBufferView': './types.dart',
  'ImageBitmap': './types.dart',
  'ImageBitmapOptions': './types.dart',
  'XRFrame': './types.dart',
  'XRInputSource': './types.dart',
  'ReadonlyArray': './types.dart',
  'Array': './types.dart',
  'Error': './types.dart',
  'GPURequestAdapterOptions': './types.dart',
  'IteratorResult': './types.dart',
  'AbortSignal': './types.dart',
  'TypedPropertyDescriptor': './types.dart',
};

class ComparableTsNode implements Comparable<ComparableTsNode> {
  final TsNode? node;
  final String value;

  ComparableTsNode.byNode(this.node, String Function(TsNode node) valueProvider) : value = valueProvider(node!);

  ComparableTsNode.byValue(this.value) : node = null;

  @override
  int compareTo(ComparableTsNode other) {
    return value.compareTo(other.value);
  }
}

void main() {
  final sw = Stopwatch()..start();

  stdout.write('Reading input file... ');
  final inFile = File('example/@babylonjs_core@7.16.0.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = TsPackage.fromJson(json);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  stdout.write('Building cache... ');
  populateCache(package);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  stdout.write('Sanitizing... ');
  final sanitizedPackage = Sanitizer().addPhase([
    standardTypesMapper,
    missingTypeMapper,
    literalAsTypeArgumentMapper,
    typeQueryMapper,
    mappedTypeMapper,
    instanceTypeMapper,
    physicsEngineMapper,
    tupleMapper,
  ]).addPhase([
    missingTypeArgumentMapper,
  ]).sanitize(package);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  final transpiler = Transpiler(TranspilerConfig(libs: libs));
  final lib = transpiler.transpile(sanitizedPackage, TranspilerConfig()).first;

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
