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
  final Map<String, TsNode> _nodeCache = {};
  final Set<String> _relativeImportNames = {};

  PackageDependency(this.package) {
    _cacheNodes(package);
  }

  bool containsType(String? typeName) => _nodeCache.containsKey(typeName);

  bool containsUnresolvedImport(String? typeName) {
    return _relativeImportNames.contains(typeName) && !containsType(typeName);
  }

  @override
  String? libraryUrlForType(String? typeName, TsNode currentNode) {
    if (typeName == null) {
      return null;
    }

    if (typeName.contains('.')) {
      return '${package.name}_${typeName.split('.').first.toLowerCase()}.dart';
    }

    final node = _nodeCache[typeName];
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

  void _cacheNodes(TsNode node) {
    if (node case TsImportDeclaration(
      importClause: NullableNode(
        value: TsImportClause(
          name: NullableNode(value: final defaultImport),
          namedBindings: NullableNode(value: final bindings),
        ),
      ),
      moduleSpecifier: SingleNode(value: TsStringLiteral(text: final moduleSpecifier)),
    )) {
      if (moduleSpecifier.replaceAll('"', '').replaceAll("'", '').startsWith('.')) {
        if (defaultImport?.nodeName case final name?) {
          _relativeImportNames.add(name);
        }
        if (bindings is TsNamedImports) {
          _relativeImportNames.addAll(bindings.elements.value.map((element) => element.nodeName).nonNulls);
        }
      }
    }

    final nodeName = node.nodeName;
    if (_nodeKinds.contains(node.kind) && nodeName != null) {
      _nodeCache.putIfAbsent(nodeName, () => node);
    }
    for (final child in node.children) {
      _cacheNodes(child);
    }
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
    ...document.querySelectorAll('#extension-types dt').map((element) => element.id),
    ...document.querySelectorAll('#typedefs dt').map((element) => element.id),
    ...document.querySelectorAll('#classes dt').map((element) => element.id),
  };
  return StaticDependency(packageUriProvider(), types);
}

Future<StaticDependency> pubDevDependency(String package, String library, {String? packageVersion}) async {
  return _remoteDependency(
    () => Uri.https(
      'pub.dev',
      ['documentation', package, packageVersion ?? 'latest', library, '$library-library.html'].join('/'),
    ),
    () => 'package:$package/$library.dart',
    package,
    library,
    packageVersion,
  );
}

Future<StaticDependency> dartDependency(String package, String library, {String? dartVersion}) async {
  if (package == 'js_interop' && library == 'js_interop') {
    return StaticDependency('dart:js_interop', _jsInteropTypes);
  }

  return _remoteDependency(
    () => Uri.https('api.dart.dev', ['stable', dartVersion ?? 'latest', 'dart-$library', 'index.html'].join('/')),
    () => 'dart:$package',
    package,
    library,
    dartVersion,
  );
}

const _jsInteropTypes = {
  'JS',
  'JSAny',
  'JSArray',
  'JSArrayBuffer',
  'JSBigInt',
  'JSBoolean',
  'JSBoxedDartObject',
  'JSDataView',
  'JSDate',
  'JSExportedDartFunction',
  'JSFloat32Array',
  'JSFloat64Array',
  'JSFunction',
  'JSInt8Array',
  'JSInt16Array',
  'JSInt32Array',
  'JSNumber',
  'JSObject',
  'JSPromise',
  'JSString',
  'JSSymbol',
  'JSTypedArray',
  'JSUint8Array',
  'JSUint8ClampedArray',
  'JSUint16Array',
  'JSUint32Array',
};

class Dependencies {
  final Dependencies? parent;
  final List<Dependency> dependencies;

  Dependencies._(this.dependencies, this.parent);

  factory Dependencies({List<Dependency> dependencies = const [], Dependencies? parent}) {
    return Dependencies._(List.of(dependencies), parent);
  }

  String? libraryUrlForType(String? typeName, TsNode currentNode) {
    for (final dependency in dependencies) {
      if (dependency case PackageDependency() when dependency.containsType(typeName)) {
        return dependency.libraryUrlForType(typeName, currentNode);
      }
      final url = dependency.libraryUrlForType(typeName, currentNode);
      if (url != null) {
        return url;
      }
    }
    return parent?.libraryUrlForType(typeName, currentNode);
  }

  bool containsPackageType(String? typeName) {
    return dependencies.whereType<PackageDependency>().any((dependency) => dependency.containsType(typeName));
  }

  bool isUnresolvedPackageImport(String? typeName) {
    return dependencies.whereType<PackageDependency>().any(
      (dependency) => dependency.containsUnresolvedImport(typeName),
    );
  }

  bool containsType(String typeName, TsNode currentNode) {
    return libraryUrlForType(typeName, currentNode) != null;
  }
}
