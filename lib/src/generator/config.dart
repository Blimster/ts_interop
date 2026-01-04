import 'dart:convert';
import 'dart:io';

import 'package:package_config/package_config.dart';
import 'package:path/path.dart';
import 'package:yaml/yaml.dart';

import '../dependency/dependency.dart';
import '../mapper/constructor_mapper.dart';
import '../mapper/interface_mappers.dart';
import '../mapper/invalid_name_mapper.dart';
import '../mapper/literal_as_type_argument_mapper.dart';
import '../mapper/merge_interface_into_class_mapper.dart';
import '../mapper/missing_type_argument_mapper.dart';
import '../mapper/missing_type_parameter_mapper.dart';
import '../mapper/module_mappers.dart';
import '../model/ts_node.dart';
import '../sanitizer/sanitizer.dart';

class GeneratorConfig {
  final String inputFile;
  final String outputDir;
  final Dependencies dependencies;
  final List<SanitizerPhase> sanitizerPhases;

  GeneratorConfig({
    required this.inputFile,
    required this.outputDir,
    required this.dependencies,
    required this.sanitizerPhases,
  });
}

Future<GeneratorConfig> fromYaml(String configFile, String inputFile, String outputDir) async {
  final yamlString = await File(configFile).readAsString();
  final yaml = loadYaml(yamlString);

  return GeneratorConfig(
    inputFile: inputFile,
    outputDir: outputDir,
    dependencies: Dependencies(dependencies: await _parseDependencies(yaml)),
    sanitizerPhases: _parseSanitizerPhases(yaml),
  );
}

Future<List<Dependency>> _parseDependencies(dynamic yaml) async {
  final result = <Dependency>[];

  if (yaml case {'dependencies': List dependencies}) {
    for (final dep in dependencies) {
      if (dep case {'dart': {'package': String package, 'library': String library}}) {
        result.add(await dartDependency(package, library));
      } else if (dep case {'pubDev': {'package': String package, 'library': String library}}) {
        result.add(await pubDevDependency(package, library));
      } else if (dep case {'static': {'package': String package, 'types': List types}}) {
        result.add(StaticDependency(package, Set<String>.from(types.whereType<String>())));
      } else if (dep case {'package': {'name': String name}}) {
        result.add(await _createPackageDependency(name));
      } else {
        throw ArgumentError('Unknown dependency format: $dep');
      }
    }
  }

  return result;
}

Future<Dependency> _createPackageDependency(String packageName) async {
  Directory currentDir = Directory.current;

  final entries = currentDir.listSync();
  for (final entry in entries) {
    if (entry is Directory && entry.path.endsWith('.dart_tool')) {
      final packageConfig = await loadPackageConfig(File(join(entry.path, 'package_config.json')));
      for (final package in packageConfig.packages) {
        if (package.name == packageName) {
          final packageRoot = Directory(package.root.toFilePath());
          final metaFile = _searchFile(packageRoot.parent, 'meta.json')!;
          return PackageDependency(TsPackage.fromJson(jsonDecode(metaFile.readAsStringSync())));
        }
      }
    }
  }

  throw ArgumentError('Could not find meta file for package: $packageName');
}

File? _searchFile(Directory dir, String fileName) {
  final entries = dir.listSync();
  for (final entry in entries) {
    if (entry is File && entry.path.endsWith(fileName)) {
      return entry;
    } else if (entry is Directory) {
      final result = _searchFile(entry, fileName);
      if (result != null) {
        return result;
      }
    }
  }
  return null;
}

_parseSanitizerPhases(dynamic yaml) {
  final result = <SanitizerPhase>[];

  if (yaml case {'sanitizer': {'phases': List phases}}) {
    for (final phase in phases) {
      if (phase case String phaseName) {
        final predefinedPhase = _predefinedPhases[phaseName];
        if (predefinedPhase != null) {
          result.addAll(predefinedPhase);
        } else {
          throw ArgumentError('Unknown predefined sanitizer phase: $phaseName');
        }
      }
    }
  }

  return result;
}

final _predefinedPhases = {
  'mergeModules': [
    SanitizerPhase('mergeModules', PhaseDirection.topDown, [
      mergeDuplicateModulesMapper,
      removeDuplicateModulesMapper,
    ]),
  ],
  'mergeInterfaces': [
    SanitizerPhase('mergeInterfaces', PhaseDirection.topDown, [
      mergeDuplicateInterfacesMapper,
      removeDuplicateInterfacesMapper,
    ]),
  ],
  'mergeInterfacesIntoClasses': [
    SanitizerPhase('mergeInterfacesIntoClasses1', PhaseDirection.topDown, [
      mergeInterfaceIntoClassMapper,
    ]),
    SanitizerPhase('mergeInterfacesIntoClasses2', PhaseDirection.topDown, [
      deleteInterfaceAfterMergeIntoClassMapper,
    ]),
  ],
  'missingTypeArgsAndParams': [
    SanitizerPhase('missingTypeArgsAndParams', PhaseDirection.bottomUp, [
      missingTypeArgumentMapper,
      missingTypeParameterMapper,
    ]),
  ],
  'constructorInterfaces': [
    SanitizerPhase('constructorInterfaces1', PhaseDirection.topDown, [
      constructorInterfaceFixJsBindingMapper,
      constructorCopyMapper,
    ]),
    SanitizerPhase('constructorInterfaces2', PhaseDirection.topDown, [
      constructorRemoveVariableMapper,
      constructorRemoveInterfaceMapper,
    ]),
  ],
  'invalidIdentifiers': [
    SanitizerPhase('invalidIdentifiers', PhaseDirection.bottomUp, [
      invalidNameMapper,
    ]),
  ],
  'literalAsTypeArgument': [
    SanitizerPhase('literalAsTypeArgument', PhaseDirection.bottomUp, [
      literalAsTypeArgumentMapper,
    ]),
  ],
};
