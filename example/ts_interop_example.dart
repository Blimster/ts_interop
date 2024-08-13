import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/ts_interop.dart';

TsNode onlyBabylonModulesMapper(TsNode node) {
  if (node case TsModuleDeclaration(name: SingleNode(value: TsIdentifier(text: var name)))) {
    if (name != 'BABYLON') {
      return Ts$Removed(node);
    }
  }
  return node;
}

TsNode excludeXrMapper(TsNode node) {
  if (node.nodeQualifier?.startsWith('XR') ?? false) {
    return Ts$Removed(node);
  }
  return node;
}

TsNode physicsEngineMapper(TsNode node) {
  if (node case TsClassDeclaration(name: SingleNode(value: TsIdentifier(text: 'PhysicsEngine')))) {
    final parent = node.searchUp<TsSourceFile>();
    if (parent.isNotEmpty) {
      if (parent.first.path.contains('v2')) {
        return TsClassDeclaration(
          node.modifiers,
          TsIdentifier('PhysicsEngineV2').toSingleNode(),
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
  if (node
      case TsTypeAliasDeclaration(
        name: SingleNode(value: TsIdentifier(text: '_Tuple')),
        type: NullableNode(value: TsConditionalType())
      )) {
    return TsTypeAliasDeclaration(
      node.modifiers,
      node.name,
      node.typeParameters,
      TsTypeReference(
        TsIdentifier('JSArray').toSingleNode(),
        [
          TsTypeReference(
            SingleNode(TsIdentifier('N')),
            ListNode([]),
          ),
        ].toListNode(),
      ).toNullableNode(),
    );
  }
  return node;
}

final typesDependency = Dependency('./types.dart', {
  'JSVoid',
  'Parameters',
  'Record',
  'ArrayBufferView',
  'ImageBitmap',
  'ImageBitmapOptions',
  'XRFrame',
  'XRInputSource',
  'ReadonlyArray',
  'Array',
  'Error',
  'GPURequestAdapterOptions',
  'IteratorResult',
  'AbortSignal',
  'TypedPropertyDescriptor',
});

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

void main() async {
  final sw = Stopwatch()..start();

  stdout.write('Reading input file... ');
  //final inFile = File('example/babylonjs@7.19.1.json');
  final inFile = File('example/@types_webxr@0.5.19.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = TsPackage.fromJson(json);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  await pubDevDependency('web', 'web');

  stdout.write('Sanitizing... ');
  final sanitizedPackage = Sanitizer()
      .addPhase(SanitizerPhase('mergeInterfaces', PhaseDirection.topDown, [
        mergeInterfacesMapper,
      ]))
      .addPhase(SanitizerPhase('mergeInterfaceIntoClassMapper', PhaseDirection.topDown, [
        mergeInterfaceIntoClassMapper,
      ]))
      .addPhase(SanitizerPhase('deleteDuplicateInterfacesMapper', PhaseDirection.topDown, [
        deleteDuplicateInterfacesMapper,
      ]))
      .addPhase(SanitizerPhase('defaultMappers', PhaseDirection.bottomUp, [
        standardTypesMapper,
        missingTypeMapper,
        literalAsTypeArgumentMapper,
        typeQueryMapper,
        mappedTypeMapper,
        instanceTypeMapper,
        tupleMapper,
      ]))
      .addPhase(SanitizerPhase('missingTypeArgumentMapper', PhaseDirection.bottomUp, [
        missingTypeArgumentMapper,
      ]))
      .sanitize(package);
  // final sanitizedPackage = Sanitizer().addPhase(PhaseDirection.topDown, [
  //   //onlyBabylonModulesMapper,
  // ]).addPhase(PhaseDirection.bottomUp, [
  //   mergeInterfacesMapper,
  //   mergeInterfaceWithClassMapper,
  //   deleteDuplicateInterfacesMapper,
  //   //excludeXrMapper,
  //   standardTypesMapper,
  //   missingTypeMapper,
  //   literalAsTypeArgumentMapper,
  //   typeQueryMapper,
  //   mappedTypeMapper,
  //   instanceTypeMapper,
  //   //physicsEngineMapper,
  //   tupleMapper,
  // ]).addPhase(PhaseDirection.bottomUp, [
  //   missingTypeArgumentMapper,
  // ]).sanitize(package);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  stdout.write('Transpiling... ');
  final transpiler = Transpiler(Dependencies(dependencies: [
    await dartDependency('js_interop', 'js_interop'),
    await pubDevDependency('web', 'web'),
    typesDependency,
  ]));
  final lib = transpiler.transpile(sanitizedPackage, Dependencies()).first;

  final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
  final DartFormatter formatter = DartFormatter();

  //final outFile = File('example/babylonjs.dart');
  final outFile = File('example/webxr.dart');

  try {
    outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
  } catch (e) {
    print(e);
    outFile.writeAsStringSync(lib.accept(emitter).toString());
  }
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();
}
