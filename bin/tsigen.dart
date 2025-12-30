import 'package:args/args.dart';
import 'package:ts_interop/ts_interop.dart';

void main(List<String> args) async {
  try {
    final (inputFile, configFile, outputDir) = parseArgs(args);
    final config = await fromYaml(configFile, inputFile, outputDir);
    final generator = Generator();
    await generator.generate(config);
  } catch (_) {
    // error messages are handled in parseArgs()
  }
}

(String, String, String) parseArgs(List<String> args) {
  final parser = ArgParser();
  try {
    parser.addOption(
      'input',
      abbr: 'i',
      mandatory: true,
      help: 'Name of the input file',
    );
    parser.addOption(
      'output',
      abbr: 'o',
      mandatory: true,
      help: 'Name of the output directory',
    );
    parser.addOption(
      'config',
      abbr: 'c',
      mandatory: false,
      defaultsTo: 'config.yaml',
      help: 'Name of the config file',
    );
    final result = parser.parse(args);
    final inputFile = result['input'] as String;
    final configFile = result['config'] as String;
    final outputDir = result['output'] as String;
    return (inputFile, configFile, outputDir);
  } on FormatException catch (e) {
    print(e.message);
    print('');
    print(parser.usage);
    rethrow;
  } on ArgumentError catch (e) {
    print(e.message);
    print('');
    print(parser.usage);
    rethrow;
  }
}
