import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ts_interop/src/mapper/module_mappers.dart';
import 'package:ts_interop/src/transpiler/type_evaluator.dart';
import 'package:ts_interop/ts_interop.dart';

void main() async {
  final dependencies = Dependencies(dependencies: [await dartDependency('js_interop', 'js_interop')]);

  final typeEvaluator = TypeEvaluator();

  final sw = Stopwatch()..start();
  stdout.write('Reading input file... ');
  final inFile = File('example/es2023@v5.5.4.json');
  final content = inFile.readAsStringSync();
  final json = jsonDecode(content);
  final package = TsPackage.fromJson(json);
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  stdout.write('Sanitizing... ');
  final sanitizedPackage = Sanitizer(typeEvaluator)
      .addPhase(
        SanitizerPhase('removeDependencies', PhaseDirection.topDown, [
          // removeNodesByDependency(webDependency),
        ]),
      )
      .addPhase(
        SanitizerPhase('mergeModules', PhaseDirection.topDown, [
          mergeDuplicateModulesMapper,
          removeDuplicateModulesMapper,
        ]),
      )
      .addPhase(
        SanitizerPhase('mergeInterfaces', PhaseDirection.topDown, [
          mergeDuplicateInterfacesMapper,
          removeDuplicateInterfacesMapper,
        ]),
      )
      .addPhase(
        SanitizerPhase('mergeInterfaceIntoClassMapper', PhaseDirection.topDown, [
          // mergeInterfaceIntoClassMapper,
        ]),
      )
      .addPhase(
        SanitizerPhase('defaultMappers', PhaseDirection.bottomUp, [
          // missingTypeMapper,
          // literalAsTypeArgumentMapper,
          // instanceTypeMapper,
          // missingTypeArgumentMapper,
        ]),
      )
      .sanitize(package);

  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();

  stdout.write('Transpiling... ');
  final transpiler = Transpiler(typeEvaluator, dependencies);
  final libs = transpiler.transpile(sanitizedPackage);

  for (final lib in libs) {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final DartFormatter formatter = DartFormatter(languageVersion: DartFormatter.latestLanguageVersion, pageWidth: 120);

    final mainLibName = sanitizedPackage.name.toLowerCase();
    final libName = lib.name!.toLowerCase();
    final fileName = libName == mainLibName ? mainLibName : '${mainLibName}_$libName';
    final outFile = File('web/$fileName.dart');
    try {
      outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
    } catch (e) {
      print(e);
      outFile.writeAsStringSync(lib.accept(emitter).toString());
    }
  }
  print('done (${(sw.elapsedMicroseconds / 1000).toStringAsFixed(2)} ms)');
  sw.reset();
}
