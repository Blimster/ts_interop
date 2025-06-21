import 'package:ts_interop/src/transpiler/type_evaluator.dart';
import 'package:ts_interop/ts_interop.dart';

String _sanitizeTypeName(String? name) {
  const invalidNames = {
    'assert',
    'class',
    'default',
    'false',
    'Function',
    'is',
    'new',
    'null',
    'return',
    'super',
    'this',
    'throw',
    'true',
    'void',
    'with',
  };
  if (invalidNames.contains(name)) {
    return '$name\$';
  }
  return name ?? '_';
}

String _sanitizePropertyName(String? name, String? typeName) {
  if (name == null) {
    return 'null\$';
  }
  if (name.startsWith('"') && name.endsWith('"')) {
    name = name.substring(1, name.length - 1);
  }
  final invalidCharacters = {
    '&': 'ampersand',
    '@': 'at',
    '#': 'hash',
    '^': 'caret',
    "'": 'singlequote',
    '"': 'doublequote',
    '`': 'backquote',
    '´': 'acute',
    '!': 'exclamation',
    '?': 'question',
    ':': 'colon',
    ';': 'semicolon',
    '~': 'tilde',
    '+': 'plus',
    '-': 'minus',
    '*': 'asterisk',
    '/': 'slash',
    '=': 'equals',
    '0': 'zero',
    '1': 'one',
    '2': 'two',
    '3': 'three',
    '4': 'four',
    '5': 'five',
    '6': 'six',
    '7': 'seven',
    '8': 'eight',
    '9': 'nine',
    ' ': 'space',
  };
  invalidCharacters.forEach((key, value) {
    name = name?.replaceAll(key, value);
  });

  const invalidNames = {
    'assert',
    'class',
    'default',
    'hashCode',
    'false',
    'is',
    'new',
    'null',
    'return',
    'runtimeType',
    'super',
    'this',
    'throw',
    'true',
    'void',
    'with',
  };
  if (invalidNames.contains(name) || name == typeName) {
    return '$name\$';
  }
  return name!;
}

String _sanitizeMethodName(String? name) {
  const invalidNames = {
    'assert',
    'catch',
    'class',
    'default',
    'false',
    'finally',
    'for',
    'if',
    'is',
    'new',
    'noSuchMethod',
    'null',
    'return',
    'super',
    'switch',
    'this',
    'throw',
    'toString',
    'true',
    'try',
    'void',
    'while',
    'with',
  };
  if (invalidNames.contains(name)) {
    return '$name\$';
  }
  return name ?? '_';
}

TsNode invalidNameMapper(TsNode node, TypeEvaluator typeEvaluator) {
  switch (node) {
    case TsClassDeclaration(name: SingleNode(value: TsIdentifier(text: String? originalName))):
      final sanitizedName = _sanitizeTypeName(originalName);
      if (sanitizedName != originalName) {
        node.meta.originalName = originalName;
        node.name.set(TsIdentifier(sanitizedName));
      }
      return node;
    case TsInterfaceDeclaration(name: SingleNode(value: TsIdentifier(text: String? originalName))):
      final sanitizedName = _sanitizeTypeName(originalName);
      if (sanitizedName != originalName) {
        node.meta.originalName = originalName;
        node.name.set(TsIdentifier(sanitizedName));
      }
      return node;
    case TsExpressionWithTypeArguments(expression: SingleNode(value: TsIdentifier(text: String originalName))):
      final sanitizedName = _sanitizeTypeName(originalName);
      if (sanitizedName != originalName) {
        node.meta.originalName = originalName;
        node.expression.set(TsIdentifier(sanitizedName));
      }
      return node;
    case TsTypeReference(typeName: SingleNode(value: TsIdentifier(text: String? originalName))):
      final isNullable = originalName.endsWith('?');
      final sanitizedName = _sanitizeTypeName(
        isNullable ? originalName.substring(0, originalName.length - 1) : originalName,
      );
      if (sanitizedName != originalName) {
        node.meta.originalName = originalName;
        node.typeName.set(TsIdentifier(sanitizedName));
      }
      return node;
    case TsPropertyDeclaration(name: SingleNode(value: TsNode nameNode)):
      final typeName = node.type.value?.nodeName;
      final originalName = nameNode.nodeName;
      final sanitizedName = _sanitizePropertyName(originalName, typeName);
      if (sanitizedName != originalName) {
        node.meta.originalName = originalName;
        node.name.set(TsIdentifier(sanitizedName));
      }
      return node;
    case TsPropertySignature(name: SingleNode(value: TsNode nameNode)):
      final typeName = node.type.value?.nodeName;
      final originalName = nameNode.nodeName;
      final sanitizedName = _sanitizePropertyName(originalName, typeName);
      final overloadIds = <int>[];
      if (originalName != null) {
        if (node.parent case final parent?) {
          final overloads = parent.searchChilds<TsPropertySignature>(hasName(originalName));
          for (final overload in overloads) {
            overloadIds.add(overload.id);
          }
        }
        overloadIds.sort();
      }
      if (sanitizedName != originalName || overloadIds.length > 1) {
        node.meta.originalName = originalName;
        node.name.set(
          TsIdentifier(overloadIds.length > 1 ? '$originalName\$${overloadIds.indexOf(node.id) + 1}' : sanitizedName),
        );
      }
      return node;
    case TsFunctionDeclaration(name: SingleNode(value: TsNode nameNode)):
      final originalName = nameNode.nodeName;
      final sanitizedName = _sanitizeMethodName(originalName);
      if (originalName != null) {
        final overloadIds = <int>[];
        if (node.parent case final parent?) {
          final overloads = parent.searchChilds<TsFunctionDeclaration>(hasName(originalName));
          for (final overload in overloads) {
            overloadIds.add(overload.id);
          }
        }
        overloadIds.sort();

        if (sanitizedName != originalName || overloadIds.length > 1) {
          node.meta.originalName = originalName;
          node.name.set(
            TsIdentifier(overloadIds.length > 1 ? '$originalName\$${overloadIds.indexOf(node.id) + 1}' : sanitizedName),
          );
        }
      }
      return node;
    case TsMethodDeclaration(name: SingleNode(value: TsNode nameNode)):
      final originalName = nameNode.nodeName;
      final sanitizedName = _sanitizeMethodName(originalName);
      if (originalName != null) {
        final overloadIds = <int>[];
        if (node.parent case final parent?) {
          final overloads = parent.searchChilds<TsMethodSignature>(hasName(originalName));
          for (final overload in overloads) {
            overloadIds.add(overload.id);
          }
        }
        overloadIds.sort();

        if (sanitizedName != originalName || overloadIds.length > 1) {
          node.meta.originalName = originalName;
          node.name.set(
            TsIdentifier(overloadIds.length > 1 ? '$originalName\$${overloadIds.indexOf(node.id) + 1}' : sanitizedName),
          );
        }
      }
      return node;
    case TsMethodSignature(name: SingleNode(value: TsNode nameNode)):
      final originalName = nameNode.nodeName;
      final sanitizedName = _sanitizeMethodName(originalName);
      if (originalName != null) {
        final overloadIds = <int>[];
        if (node.parent case final parent?) {
          final overloads = parent.searchChilds<TsMethodSignature>(hasName(originalName));
          for (final overload in overloads) {
            overloadIds.add(overload.id);
          }
        }
        overloadIds.sort();

        if (sanitizedName != originalName || overloadIds.length > 1) {
          node.meta.originalName = originalName;
          node.name.set(
            TsIdentifier(overloadIds.length > 1 ? '$originalName\$${overloadIds.indexOf(node.id) + 1}' : sanitizedName),
          );
        }
      }
      return node;
    case _:
      return node;
  }
}
