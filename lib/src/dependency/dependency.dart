import 'package:html/parser.dart' as html;
import 'package:http/http.dart' as http;

class Dependency {
  final String url;
  final Set<String> types;

  Dependency(this.url, this.types);
}

Future<Dependency> _remoteDependency(
  Uri Function() docUriProvider,
  String Function() packageUriProvider,
  String package,
  String library,
  String? version,
) async {
  final response = await http.get(docUriProvider());
  final document = html.parse(response.body);
  final types = {
    ...document.querySelectorAll('#extension-types dt').map((element) => element.id),
    ...document.querySelectorAll('#typedefs dt').map((element) => element.id),
    ...document.querySelectorAll('#classes dt').map((element) => element.id),
  };
  return Dependency(packageUriProvider(), types);
}

Future<Dependency> pubDevDependency(String package, String library, {String? packageVersion}) async {
  return _remoteDependency(
    () => Uri.https(
        'pub.dev',
        [
          'documentation',
          package,
          packageVersion ?? 'latest',
          library,
          '$library-library.html',
        ].join('/')),
    () => 'package:$package/$library.dart',
    package,
    library,
    packageVersion,
  );
}

Future<Dependency> dartDependency(String package, String library, {String? dartVersion}) async {
  return _remoteDependency(
    () => Uri.https(
        'api.dart.dev',
        [
          'stable',
          if (dartVersion != null) dartVersion,
          'dart-$library',
          'dart-$library-library.html',
        ].join('/')),
    () => 'dart:$package',
    package,
    library,
    dartVersion,
  );
}

class Dependencies {
  final List<Dependency> dependencies;

  Dependencies._(this.dependencies);

  factory Dependencies({List<Dependency> dependencies = const []}) {
    return Dependencies._(
      List.of(dependencies),
    );
  }

  String? libraryUrlForType(String? typeName) {
    for (final dependency in dependencies) {
      if (dependency.types.contains(typeName)) {
        return dependency.url;
      }
    }
    return null;
  }
}
