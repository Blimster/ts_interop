import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../../ts_interop.dart';
import '../dependency/dependency.dart';
import '../model/ts_node.dart';
import '../sanitizer/sanitizer.dart';
import '../transpiler/transpiler.dart';
import '../transpiler/type_evaluator.dart';
import 'config.dart';

class Generator {
  Future<void> generate(GeneratorConfig config) async {
    final typeEvaluator = TypeEvaluator();
    final dependencies = config.dependencies;

    stdout.write('Reading input file... ');
    final inputFile = File(config.inputFile);
    final content = inputFile.readAsStringSync();
    final json = jsonDecode(content);
    final package = TsPackage.fromJson(json);
    stdout.writeln('Done');

    final packageDependencies = dependencies.dependencies
        .whereType<PackageDependency>()
        .map((dep) => dep.package)
        .toList();
    package.dependencies.set(packageDependencies);
    for (final packageDependency in packageDependencies) {
      updateParentAndChilds(packageDependency, package);
    }

    stdout.write('Sanitizing... ');
    final sanitizer = Sanitizer(typeEvaluator);
    sanitizer.addPhases(config.sanitizerPhases);
    final sanitizedPackage = sanitizer.sanitize(package);
    stdout.writeln('Done');

    stdout.write('Transpiling... ');
    final transpiler = Transpiler(typeEvaluator, dependencies);
    final libraries = transpiler.transpile(sanitizedPackage);
    stdout.writeln('Done');

    final mainLibName = sanitizedPackage.name.toLowerCase().split('/').last;
    for (final lib in libraries) {
      stdout.write('Writing library ${lib.name}... ');
      final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
      final DartFormatter formatter = DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
        pageWidth: 120,
      );

      final libName = lib.name!.toLowerCase().split('/').last;
      final fileName = libName == mainLibName ? mainLibName : '${mainLibName}_$libName';
      final outFile = File('${config.outputDir}/$fileName.dart');
      try {
        outFile.writeAsStringSync(formatter.format(lib.accept(emitter).toString()));
      } catch (e) {
        outFile.writeAsStringSync(lib.accept(emitter).toString());
      }
      stdout.writeln('Done');
    }

    stdout.write('Creating meta.json... ');
    File(config.inputFile).copySync('${config.outputDir}/meta.json');
    stdout.writeln('Done');
  }
}
