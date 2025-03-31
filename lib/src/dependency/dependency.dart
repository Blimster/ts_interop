import 'package:html/parser.dart' as html;
import 'package:http/http.dart' as http;

import '../model/ts_node.dart';

abstract class Dependency {
  String? libraryUrlForType(String? typeName, TsNode currentNode);
}

const _nodeKinds = {
  TsNodeKind.classDeclaration,
  TsNodeKind.enumDeclaration,
  TsNodeKind.functionDeclaration,
  TsNodeKind.interfaceDeclaration,
  TsNodeKind.typeAliasDeclaration,
};

class PackageDependency implements Dependency {
  final TsPackage package;

  PackageDependency(this.package);

  @override
  String? libraryUrlForType(String? typeName, TsNode currentNode) {
    if (typeName == null) {
      return null;
    }
    if (typeName.endsWith('\$')) {
      typeName = typeName.substring(0, typeName.length - 1);
    }

    if (typeName.contains('.')) {
      return '${package.name}_${typeName.split('.').first.toLowerCase()}.dart';
    }

    final node = _findNode(package, typeName);
    if (node != null) {
      if (_isInSameModule(currentNode, node)) {
        return null;
      }
      if (_isInModule(currentNode) && !_isInModule(node)) {
        return '${package.name}.dart';
      }
      if (_isInModule(currentNode) && _isInModule(node)) {
        return '${package.name}_${_findModule(node)!.nodeName}.dart';
      }
    }

    return null;
  }

  TsNode? _findNode(TsNode node, String name) {
    if (node.nodeName == name && _nodeKinds.contains(node.kind)) {
      return node;
    }
    for (final child in node.children) {
      final result = _findNode(child, name);
      if (result != null) {
        return result;
      }
    }
    return null;
  }

  bool _isInSameModule(TsNode node1, TsNode node2) {
    return _findModule(node1) == _findModule(node2);
  }

  TsNode? _findModule(TsNode node) {
    while (node.parent != null) {
      if (node.kind == TsNodeKind.moduleDeclaration) {
        return node;
      }
      node = node.parent!;
    }
    return null;
  }

  bool _isInModule(TsNode node) {
    return _findModule(node) != null;
  }
}

class StaticDependency implements Dependency {
  final String url;
  final Set<String> types;

  StaticDependency(this.url, this.types);

  @override
  String? libraryUrlForType(String? typeName, TsNode currentNode) {
    return types.contains(typeName) ? url : null;
  }
}

Future<StaticDependency> _remoteDependency(
  Uri Function() docUriProvider,
  String Function() packageUriProvider,
  String package,
  String library,
  String? version,
) async {
  final response = await http.get(docUriProvider());
  final document = html.parse(response.body);
  final types = {
    ...document
        .querySelectorAll('#extension-types dt')
        .map((element) => element.id),
    ...document.querySelectorAll('#typedefs dt').map((element) => element.id),
    ...document.querySelectorAll('#classes dt').map((element) => element.id),
  };
  return StaticDependency(packageUriProvider(), types);
}

Future<StaticDependency> pubDevDependency(String package, String library,
    {String? packageVersion}) async {
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

Future<StaticDependency> dartDependency(String package, String library,
    {String? dartVersion}) async {
  return _remoteDependency(
    () => Uri.https(
        'api.dart.dev',
        [
          'stable',
          dartVersion ?? 'latest',
          'dart-$library',
          'index.html',
        ].join('/')),
    () => 'dart:$package',
    package,
    library,
    dartVersion,
  );
}

class Dependencies {
  final Dependencies? parent;
  final List<Dependency> dependencies;

  Dependencies._(this.dependencies, this.parent);

  factory Dependencies(
      {List<Dependency> dependencies = const [], Dependencies? parent}) {
    return Dependencies._(
      List.of(dependencies),
      parent,
    );
  }

  String? libraryUrlForType(String? typeName, TsNode currentNode) {
    for (final dependency in dependencies) {
      final url = dependency.libraryUrlForType(typeName, currentNode);
      if (url != null) {
        return url;
      }
    }
    return parent?.libraryUrlForType(typeName, currentNode);
  }

  bool containsType(String typeName, TsNode currentNode) {
    return libraryUrlForType(typeName, currentNode) != null;
  }
}
