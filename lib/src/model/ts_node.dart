import 'package:binary_tree/binary_tree.dart';

import '../transpiler/type_evaluator.dart';
import '../util/ts_node_search.dart';

class IllegalKindError extends Error {
  final TsNodeKind kind;

  IllegalKindError(this.kind);

  @override
  String toString() => 'IllegalKindError: Node with kind ${kind.name} is not allowed here.';
}

String _toFirstLower(String text) => "${text[0].toLowerCase()}${text.substring(1)}";

T _fromJsonObject<T extends TsNode>(Map<String, dynamic> json) {
  try {
    final kind = TsNodeKind.values.byName(_toFirstLower(json['kind'] as String));
    switch (kind) {
      case TsNodeKind.$null:
        throw IllegalKindError(TsNodeKind.$null);
      case TsNodeKind.$unsupported:
        throw IllegalKindError(TsNodeKind.$unsupported);
      case TsNodeKind.$removed:
        throw IllegalKindError(TsNodeKind.$removed);
      case TsNodeKind.$dependencies:
        throw IllegalKindError(TsNodeKind.$dependencies);
      case TsNodeKind.abstractKeyword:
        return TsAbstractKeyword() as T;
      case TsNodeKind.anyKeyword:
        return TsAnyKeyword() as T;
      case TsNodeKind.arrayBindingPattern:
        return TsArrayBindingPattern.fromJson(json) as T;
      case TsNodeKind.arrayType:
        return TsArrayType.fromJson(json) as T;
      case TsNodeKind.bigIntKeyword:
        return TsBigIntKeyword() as T;
      case TsNodeKind.bindingElement:
        return TsBindingElement.fromJson(json) as T;
      case TsNodeKind.booleanKeyword:
        return TsBooleanKeyword() as T;
      case TsNodeKind.callSignature:
        return TsCallSignature.fromJson(json) as T;
      case TsNodeKind.classDeclaration:
        return TsClassDeclaration.fromJson(json) as T;
      case TsNodeKind.computedPropertyName:
        return TsComputedPropertyName.fromJson(json) as T;
      case TsNodeKind.conditionalType:
        return TsConditionalType.fromJson(json) as T;
      case TsNodeKind.constructor:
        return TsConstructorDeclaration.fromJson(json) as T;
      case TsNodeKind.constructorType:
        return TsConstructorType.fromJson(json) as T;
      case TsNodeKind.constructSignature:
        return TsConstructSignature.fromJson(json) as T;
      case TsNodeKind.declareKeyword:
        return TsDeclareKeyword() as T;
      case TsNodeKind.enumDeclaration:
        return TsEnumDeclaration.fromJson(json) as T;
      case TsNodeKind.enumMember:
        return TsEnumMember.fromJson(json) as T;
      case TsNodeKind.exclamationToken:
        return TsExclamationToken() as T;
      case TsNodeKind.exportDeclaration:
        return TsExportDeclaration.fromJson(json) as T;
      case TsNodeKind.exportKeyword:
        return TsExportKeyword() as T;
      case TsNodeKind.expressionWithTypeArguments:
        return TsExpressionWithTypeArguments.fromJson(json) as T;
      case TsNodeKind.extendsKeyword:
        return TsExtendsKeyword() as T;
      case TsNodeKind.falseKeyword:
        return TsFalseKeyword() as T;
      case TsNodeKind.functionType:
        return TsFunctionType.fromJson(json) as T;
      case TsNodeKind.functionDeclaration:
        return TsFunctionDeclaration.fromJson(json) as T;
      case TsNodeKind.getAccessor:
        return TsGetAccessor.fromJson(json) as T;
      case TsNodeKind.heritageClause:
        return TsHeritageClause.fromJson(json) as T;
      case TsNodeKind.identifier:
        return TsIdentifier.fromJson(json) as T;
      case TsNodeKind.importAttribute:
        return TsImportAttribute.fromJson(json) as T;
      case TsNodeKind.importAttributes:
        return TsImportAttributes.fromJson(json) as T;
      case TsNodeKind.importClause:
        return TsImportClause.fromJson(json) as T;
      case TsNodeKind.importDeclaration:
        return TsImportDeclaration.fromJson(json) as T;
      case TsNodeKind.importSpecifier:
        return TsImportSpecifier.fromJson(json) as T;
      case TsNodeKind.importType:
        return TsImportType.fromJson(json) as T;
      case TsNodeKind.implementsKeyword:
        return TsImplementsKeyword() as T;
      case TsNodeKind.indexedAccessType:
        return TsIndexedAccessType.fromJson(json) as T;
      case TsNodeKind.indexSignature:
        return TsIndexSignature.fromJson(json) as T;
      case TsNodeKind.inferType:
        return TsInferType.fromJson(json) as T;
      case TsNodeKind.interfaceDeclaration:
        return TsInterfaceDeclaration.fromJson(json) as T;
      case TsNodeKind.intersectionType:
        return TsIntersectionType.fromJson(json) as T;
      case TsNodeKind.intrinsicKeyword:
        return TsIntrinsicKeyword() as T;
      case TsNodeKind.keyOfKeyword:
        return TsKeyOfKeyword() as T;
      case TsNodeKind.literalType:
        return TsLiteralType.fromJson(json) as T;
      case TsNodeKind.mappedType:
        return TsMappedType.fromJson(json) as T;
      case TsNodeKind.methodDeclaration:
        return TsMethodDeclaration.fromJson(json) as T;
      case TsNodeKind.methodSignature:
        return TsMethodSignature.fromJson(json) as T;
      case TsNodeKind.minusToken:
        return TsMinusToken() as T;
      case TsNodeKind.minusMinusToken:
        return TsMinusMinusToken() as T;
      case TsNodeKind.moduleBlock:
        return TsModuleBlock.fromJson(json) as T;
      case TsNodeKind.moduleDeclaration:
        return TsModuleDeclaration.fromJson(json) as T;
      case TsNodeKind.namedImports:
        return TsNamedImports.fromJson(json) as T;
      case TsNodeKind.namedTupleMember:
        return TsNamedTupleMember.fromJson(json) as T;
      case TsNodeKind.namespaceImport:
        return TsNamespaceImport.fromJson(json) as T;
      case TsNodeKind.neverKeyword:
        return TsNeverKeyword() as T;
      case TsNodeKind.nullKeyword:
        return TsNullKeyword() as T;
      case TsNodeKind.numberKeyword:
        return TsNumberKeyword() as T;
      case TsNodeKind.numericLiteral:
        return TsNumericLiteral.fromJson(json) as T;
      case TsNodeKind.objectKeyword:
        return TsObjectKeyword() as T;
      case TsNodeKind.optionalType:
        return TsOptionalType.fromJson(json) as T;
      case TsNodeKind.overrideKeyword:
        return TsOverrideKeyword() as T;
      case TsNodeKind.package:
        return TsPackage.fromJson(json) as T;
      case TsNodeKind.parameter:
        return TsParameter.fromJson(json) as T;
      case TsNodeKind.parenthesizedType:
        return TsParenthesizedType.fromJson(json) as T;
      case TsNodeKind.plusToken:
        return TsPlusToken() as T;
      case TsNodeKind.plusPlusToken:
        return TsPlusPlusToken() as T;
      case TsNodeKind.prefixUnaryExpression:
        return TsPrefixUnaryExpression.fromJson(json) as T;
      case TsNodeKind.privateKeyword:
        return TsPrivateKeyword() as T;
      case TsNodeKind.propertyAccessExpression:
        return TsPropertyAccessExpression.fromJson(json) as T;
      case TsNodeKind.propertyDeclaration:
        return TsPropertyDeclaration.fromJson(json) as T;
      case TsNodeKind.propertySignature:
        return TsPropertySignature.fromJson(json) as T;
      case TsNodeKind.protectedKeyword:
        return TsProtectedKeyword() as T;
      case TsNodeKind.qualifiedName:
        return TsQualifiedName.fromJson(json) as T;
      case TsNodeKind.questionToken:
        return TsQuestionToken() as T;
      case TsNodeKind.readonlyKeyword:
        return TsReadonlyKeyword() as T;
      case TsNodeKind.restType:
        return TsRestType.fromJson(json) as T;
      case TsNodeKind.setAccessor:
        return TsSetAccessor.fromJson(json) as T;
      case TsNodeKind.sourceFile:
        return TsSourceFile.fromJson(json) as T;
      case TsNodeKind.staticKeyword:
        return TsStaticKeyword() as T;
      case TsNodeKind.stringKeyword:
        return TsStringKeyword() as T;
      case TsNodeKind.stringLiteral:
        return TsStringLiteral.fromJson(json) as T;
      case TsNodeKind.symbolKeyword:
        return TsSymbolKeyword() as T;
      case TsNodeKind.templateHead:
        return TsTemplateHead.fromJson(json) as T;
      case TsNodeKind.templateLiteralType:
        return TsTemplateLiteralType.fromJson(json) as T;
      case TsNodeKind.templateLiteralTypeSpan:
        return TsTemplateLiteralTypeSpan.fromJson(json) as T;
      case TsNodeKind.templateMiddle:
        return TsTemplateMiddle.fromJson(json) as T;
      case TsNodeKind.templateTail:
        return TsTemplateTail.fromJson(json) as T;
      case TsNodeKind.thisType:
        return TsThisType() as T;
      case TsNodeKind.tildeToken:
        return TsTildeToken() as T;
      case TsNodeKind.trueKeyword:
        return TsTrueKeyword() as T;
      case TsNodeKind.tupleType:
        return TsTupleType.fromJson(json) as T;
      case TsNodeKind.typeAliasDeclaration:
        return TsTypeAliasDeclaration.fromJson(json) as T;
      case TsNodeKind.typeLiteral:
        return TsTypeLiteral.fromJson(json) as T;
      case TsNodeKind.typeOperator:
        return TsTypeOperator.fromJson(json) as T;
      case TsNodeKind.typeParameter:
        return TsTypeParameter.fromJson(json) as T;
      case TsNodeKind.typePredicate:
        return TsTypePredicate.fromJson(json) as T;
      case TsNodeKind.typeQuery:
        return TsTypeQuery.fromJson(json) as T;
      case TsNodeKind.typeReference:
        return TsTypeReference.fromJson(json) as T;
      case TsNodeKind.undefinedKeyword:
        return TsUndefinedKeyword() as T;
      case TsNodeKind.unionType:
        return TsUnionType.fromJson(json) as T;
      case TsNodeKind.uniqueKeyword:
        return TsUniqueKeyword() as T;
      case TsNodeKind.unknownKeyword:
        return TsUnknownKeyword() as T;
      case TsNodeKind.variableDeclaration:
        return TsVariableDeclaration.fromJson(json) as T;
      case TsNodeKind.variableDeclarationList:
        return TsVariableDeclarationList.fromJson(json) as T;
      case TsNodeKind.variableStatement:
        return TsVariableStatement.fromJson(json) as T;
      case TsNodeKind.voidKeyword:
        return TsVoidKeyword() as T;
    }
  } on IllegalKindError catch (e) {
    print('WARNING: Unsupported node kind: ${e.kind.name}');
    return Ts$Unsupported(_toFirstLower(json['kind'].toString())) as T;
  } catch (e, s) {
    print(e);
    print(s);
    rethrow;
  }
}

T? _fromNullableJsonObject<T extends TsNode>(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  }
  return _fromJsonObject(json);
}

List<T> _fromJsonObjectArray<T extends TsNode>(Iterable? json) {
  if (json == null) {
    return [];
  }
  return json.map((e) => _fromJsonObject<T>(e as Map<String, dynamic>)).toList();
}

List<String> _fromJsonStringArray(Iterable? json) {
  if (json == null) {
    return [];
  }
  return json.cast<String>().toList();
}

void updateParentAndChilds(TsNode node, TsNode? parent) {
  node._parent = parent;
  node._applyParentToChilds();
}

typedef TsNodeMapper = TsNode Function(TsNode node, TypeEvaluator typeEvaluator);

enum TsNodeKind {
  $null,
  $unsupported,
  $removed,
  $dependencies,
  abstractKeyword,
  anyKeyword,
  arrayBindingPattern,
  arrayType,
  bigIntKeyword,
  bindingElement,
  booleanKeyword,
  callSignature,
  classDeclaration,
  computedPropertyName,
  conditionalType,
  constructor,
  constructorType,
  constructSignature,
  declareKeyword,
  enumDeclaration,
  enumMember,
  exclamationToken,
  exportDeclaration,
  exportKeyword,
  expressionWithTypeArguments,
  extendsKeyword,
  falseKeyword,
  functionType,
  functionDeclaration,
  getAccessor,
  heritageClause,
  identifier,
  implementsKeyword,
  importAttribute,
  importAttributes,
  importClause,
  importDeclaration,
  importSpecifier,
  importType,
  indexedAccessType,
  indexSignature,
  inferType,
  interfaceDeclaration,
  intersectionType,
  intrinsicKeyword,
  keyOfKeyword,
  literalType,
  mappedType,
  methodDeclaration,
  methodSignature,
  minusToken,
  minusMinusToken,
  moduleBlock,
  moduleDeclaration,
  namedImports,
  namedTupleMember,
  namespaceImport,
  neverKeyword,
  nullKeyword,
  numberKeyword,
  numericLiteral,
  objectKeyword,
  optionalType,
  overrideKeyword,
  parameter,
  parenthesizedType,
  prefixUnaryExpression,
  package,
  plusToken,
  plusPlusToken,
  privateKeyword,
  propertyAccessExpression,
  propertyDeclaration,
  propertySignature,
  protectedKeyword,
  qualifiedName,
  questionToken,
  readonlyKeyword,
  restType,
  setAccessor,
  sourceFile,
  staticKeyword,
  stringKeyword,
  stringLiteral,
  symbolKeyword,
  templateHead,
  templateLiteralType,
  templateLiteralTypeSpan,
  templateMiddle,
  templateTail,
  thisType,
  tildeToken,
  trueKeyword,
  tupleType,
  typeAliasDeclaration,
  typeLiteral,
  typeOperator,
  typeParameter,
  typePredicate,
  typeQuery,
  typeReference,
  undefinedKeyword,
  unionType,
  uniqueKeyword,
  unknownKeyword,
  variableDeclaration,
  variableDeclarationList,
  variableStatement,
  voidKeyword,
}

mixin WithTypeParameters on TsNode {
  ListNode get typeParameters;

  void updateTypeParameters(List<TsNode> typeArguments) {
    final (added, removed) = typeParameters.set(typeArguments);
    updateCache(added, removed);
  }
}

mixin WithTypeArguments<T extends TsNode> on TsNode {
  ListNode get typeArguments;

  void updateTypeArguments(List<TsNode> typeArguments) {
    final (added, removed) = this.typeArguments.set(typeArguments);
    updateCache(added, removed);
  }
}

sealed class TsNodeWrapper<T> {
  final bool affectsParent;
  T _value;

  TsNodeWrapper(this.affectsParent, this._value);

  T get value => _value;

  (List<TsNode>, List<TsNode>) set(T value);

  (List<TsNode>, List<TsNode>) update(T Function(T) updater) {
    return set(updater(_value));
  }

  List<TsNode> get nodes;

  @override
  String toString() => _value.toString();
}

final class SingleNode extends TsNodeWrapper<TsNode> {
  SingleNode(TsNode value, {bool affectsParent = false}) : super(affectsParent, value);

  @override
  (List<TsNode>, List<TsNode>) set(TsNode value) {
    final result = ([value], [_value]);
    _value = value;
    updateCache(result.$1, result.$2);
    return result;
  }

  @override
  List<TsNode> get nodes => [_value];

  String toCode() => _value.toCode();

  SingleNode copy() => SingleNode(_value.copy(), affectsParent: affectsParent);
}

final class NullableNode extends TsNodeWrapper<TsNode?> {
  NullableNode(TsNode? value, {bool affectsParent = false}) : super(affectsParent, value);

  @override
  (List<TsNode>, List<TsNode>) set(TsNode? value) {
    final result = ([if (value != null) value], [if (_value != null) _value!]);
    _value = value;
    updateCache(result.$1, result.$2);
    return result;
  }

  @override
  List<TsNode> get nodes => [if (_value != null) _value!];

  String toCode(String code) => value != null ? code.replaceAll('&', value!.toCode()) : '';

  NullableNode copy() => NullableNode(_value?.copy(), affectsParent: affectsParent);
}

final class ListNode extends TsNodeWrapper<List<TsNode>> {
  ListNode(List<TsNode> node) : super(false, node);

  @override
  (List<TsNode>, List<TsNode>) set(List<TsNode> value) {
    final removed = BinaryTree<TsNode>(_value);
    final added = BinaryTree<TsNode>(value);
    for (final node in value) {
      removed.remove(node);
    }
    for (final node in _value) {
      added.remove(node);
    }
    _value = value;
    final result = (added.toList(), removed.toList());
    updateCache(result.$1, result.$2);
    return result;
  }

  @override
  List<TsNode> get nodes => _value;

  String toCode({String separator = ', ', String prefix = '', String suffix = ''}) =>
      '${_value.isNotEmpty ? prefix : ''}${_value.map((e) => e.toCode()).join(separator)}${_value.isNotEmpty ? suffix : ''}';

  ListNode copy() => ListNode(_value.map((e) => e.copy()).toList());
}

extension ToListNode on List<TsNode> {
  ListNode toListNode() => ListNode(this);
}

class TsNodeMeta {
  List<String> documentation = [];
  bool external = false;
  String? originalName;

  TsNodeMeta({List<String>? documentation, bool? external, String? originalName}) {
    this.documentation = documentation ?? this.documentation;
    this.external = external ?? this.external;
    this.originalName = originalName ?? this.originalName;
  }

  TsNodeMeta copy({List<String>? documentation, bool? external, String? originalName}) {
    return TsNodeMeta()
      ..documentation = documentation ?? List.of(this.documentation)
      ..external = external ?? this.external
      ..originalName = originalName ?? this.originalName;
  }

  void ifNotOriginalName(String? name, void Function(String? originalName) action) {
    if (originalName != null && originalName != name) {
      action(originalName);
    }
  }

  void withOriginalName(String? name, void Function(String? originalName) action) {
    action(originalName ?? name);
  }
}

sealed class TsNode implements Comparable<TsNode> {
  static int _idCounter = 0;
  final int id;
  final TsNodeKind kind;
  final TsNodeMeta meta;
  final List<String> flags;
  TsNode? _parent;

  TsNode(this.kind, this.flags, this.meta) : id = _idCounter++;

  String? get nodeName => null;

  String toCode() => nodeName ?? '';

  List<TsNode> get children {
    return nodeWrappers.expand((wrapper) => wrapper.nodes).toList();
  }

  TsNode? get parent => _parent;

  TsNode get root {
    var n = this;
    while (n.parent != null) {
      n = n.parent!;
    }
    return n;
  }

  bool isChildOf(TsNode node) {
    var n = this;
    while (n.parent != null) {
      if (n.parent == node) {
        return true;
      }
      n = n.parent!;
    }
    return false;
  }

  bool isParentOf(TsNode node) {
    return node.isChildOf(this);
  }

  bool isDirectChildOf(TsNode node) {
    return node.parent == this;
  }

  bool isDirectParentOf(TsNode node) {
    return node.isDirectChildOf(node);
  }

  void removeChild(TsNode node) {
    for (final wrapper in nodeWrappers) {
      if (wrapper.nodes.contains(node)) {
        switch (wrapper) {
          case SingleNode():
            throw StateError('Cannot remove child from a single node!');
          case NullableNode():
            wrapper.set(null);
          case ListNode():
            wrapper.set(wrapper.nodes.where((n) => n != node).toList());
        }
        return;
      }
    }
  }

  List<TsNodeWrapper> get nodeWrappers => [];

  SingleNode toSingleNode({bool affectsParent = false}) => SingleNode(this, affectsParent: affectsParent);

  NullableNode toNullableNode({bool affectsParent = false}) => NullableNode(this, affectsParent: affectsParent);

  String printTree([int indent = 2]) {
    final sb = StringBuffer();
    sb.writeln('${'  ' * indent}${toString()}');
    for (final child in children) {
      sb.write(child.printTree(indent + 1));
    }
    return sb.toString();
  }

  void _applyParentToChilds() {
    for (final child in children) {
      child._parent = this;
      child._applyParentToChilds();
    }
  }

  TsNode copy();

  @override
  String toString() => '${kind.name}:$nodeName ($id->${_parent?.id})';

  @override
  int compareTo(TsNode other) {
    return (id - other.id);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is TsNode && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}

class Ts$Null extends TsNode {
  Ts$Null({TsNodeMeta? meta}) : super(TsNodeKind.$unsupported, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => Ts$Null(meta: meta.copy());
}

class Ts$Unsupported extends TsNode {
  final String unsupportedNodeKind;

  Ts$Unsupported(this.unsupportedNodeKind, {TsNodeMeta? meta})
    : super(TsNodeKind.$unsupported, [], meta ?? TsNodeMeta());

  @override
  String? get nodeName => unsupportedNodeKind;

  @override
  TsNode copy() => Ts$Unsupported(unsupportedNodeKind, meta: meta.copy());
}

class Ts$Removed extends TsNode {
  final String removedNode;

  Ts$Removed(TsNode node, {TsNodeMeta? meta})
    : removedNode = node.toString(),
      super(TsNodeKind.$removed, [], meta ?? TsNodeMeta());

  @override
  String get nodeName => removedNode;

  @override
  TsNode copy() => Ts$Removed(this, meta: meta.copy());
}

class Ts$Dependencies extends TsNode {
  final ListNode dependencies;

  Ts$Dependencies(List<TsPackage> dependencies, {TsNodeMeta? meta})
    : dependencies = ListNode(dependencies),
      super(TsNodeKind.$dependencies, [], meta ?? TsNodeMeta());

  @override
  String get nodeName => 'dependencies';

  @override
  List<TsNodeWrapper> get nodeWrappers => [dependencies];

  @override
  TsNode copy() =>
      Ts$Dependencies(dependencies.value.map((n) => n.copy()).whereType<TsPackage>().toList(), meta: meta.copy());
}

class TsAbstractKeyword extends TsNode {
  TsAbstractKeyword({TsNodeMeta? meta}) : super(TsNodeKind.abstractKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'abstract';

  @override
  TsNode copy() => TsAbstractKeyword(meta: meta.copy());
}

class TsAnyKeyword extends TsNode {
  TsAnyKeyword({TsNodeMeta? meta}) : super(TsNodeKind.anyKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'any';

  @override
  TsNode copy() => TsAnyKeyword(meta: meta.copy());
}

class TsArrayBindingPattern extends TsNode {
  final ListNode elements;

  TsArrayBindingPattern(List<String> flags, this.elements, {TsNodeMeta? meta})
    : super(TsNodeKind.arrayBindingPattern, flags, meta ?? TsNodeMeta());

  factory TsArrayBindingPattern.fromJson(Map<String, dynamic> json) {
    return TsArrayBindingPattern(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['elements'])),
    );
  }

  @override
  String toCode() => '[${elements.toCode()}]';

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];

  @override
  TsNode copy() => TsArrayBindingPattern(flags, elements.copy(), meta: meta.copy());
}

class TsArrayType extends TsNode {
  final SingleNode elementType;

  TsArrayType(List<String> flags, this.elementType, {TsNodeMeta? meta})
    : super(TsNodeKind.arrayType, flags, meta ?? TsNodeMeta());

  factory TsArrayType.fromJson(Map<String, dynamic> json) {
    return TsArrayType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['elementType'])),
    );
  }

  @override
  String toCode() => '${elementType.toCode()}[]';

  @override
  List<TsNodeWrapper> get nodeWrappers => [elementType];

  @override
  TsNode copy() => TsArrayType(flags, elementType.copy(), meta: meta.copy());
}

class TsBigIntKeyword extends TsNode {
  TsBigIntKeyword({TsNodeMeta? meta}) : super(TsNodeKind.bigIntKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'bigint';

  @override
  TsNode copy() => TsBigIntKeyword(meta: meta.copy());
}

class TsBindingElement extends TsNode {
  final NullableNode dotDotDotToken;
  final NullableNode propertyName;
  final SingleNode name;
  final NullableNode initializer;

  TsBindingElement(
    List<String> flags,
    this.dotDotDotToken,
    this.propertyName,
    this.name,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.bindingElement, flags, meta ?? TsNodeMeta());

  factory TsBindingElement.fromJson(Map<String, dynamic> json) {
    return TsBindingElement(
      _fromJsonStringArray(json['flags']),
      NullableNode(_fromNullableJsonObject(json['dotDotDotToken'])),
      NullableNode(_fromNullableJsonObject(json['propertyName'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String toCode() =>
      '${dotDotDotToken.toCode('...')}${propertyName.toCode('&')}${name.toCode()}${initializer.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [dotDotDotToken, propertyName, name, initializer];

  @override
  TsNode copy() => TsBindingElement(
    flags,
    dotDotDotToken.copy(),
    propertyName.copy(),
    name.copy(),
    initializer.copy(),
    meta: meta.copy(),
  );
}

class TsBooleanKeyword extends TsNode {
  TsBooleanKeyword({TsNodeMeta? meta}) : super(TsNodeKind.booleanKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'boolean';

  @override
  TsNode copy() => TsBooleanKeyword(meta: meta.copy());
}

class TsCallSignature extends TsNode with WithTypeParameters {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsCallSignature(List<String> flags, this.typeParameters, this.parameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.callSignature, flags, meta ?? TsNodeMeta());

  factory TsCallSignature.fromJson(Map<String, dynamic> json) {
    return TsCallSignature(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameters, parameters, type];

  @override
  TsNode copy() => TsCallSignature(flags, typeParameters.copy(), parameters.copy(), type.copy(), meta: meta.copy());
}

class TsClassDeclaration extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode heritageClauses;
  final ListNode members;

  TsClassDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.typeParameters,
    this.heritageClauses,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.classDeclaration, flags, meta ?? TsNodeMeta());

  factory TsClassDeclaration.fromJson(Map<String, dynamic> json) {
    return TsClassDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['heritageClauses'])),
      ListNode(_fromJsonObjectArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, typeParameters, heritageClauses, members];

  @override
  TsNode copy() => TsClassDeclaration(
    flags,
    modifiers.copy(),
    name.copy(),
    typeParameters.copy(),
    heritageClauses.copy(),
    members.copy(),
    meta: meta.copy(),
  );
}

class TsComputedPropertyName extends TsNode {
  final SingleNode expression;

  TsComputedPropertyName(List<String> flags, this.expression, {TsNodeMeta? meta})
    : super(TsNodeKind.computedPropertyName, flags, meta ?? TsNodeMeta());

  factory TsComputedPropertyName.fromJson(Map<String, dynamic> json) {
    return TsComputedPropertyName(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['expression'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [expression];

  @override
  TsNode copy() => TsComputedPropertyName(flags, expression.copy(), meta: meta.copy());
}

class TsConditionalType extends TsNode {
  final SingleNode checkType;
  final SingleNode extendsType;
  final SingleNode trueType;
  final SingleNode falseType;

  TsConditionalType(
    List<String> flags,
    this.checkType,
    this.extendsType,
    this.trueType,
    this.falseType, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.conditionalType, flags, meta ?? TsNodeMeta());

  factory TsConditionalType.fromJson(Map<String, dynamic> json) {
    return TsConditionalType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['checkType'])),
      SingleNode(_fromJsonObject(json['extendsType'])),
      SingleNode(_fromJsonObject(json['trueType'])),
      SingleNode(_fromJsonObject(json['falseType'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [checkType, extendsType, trueType, falseType];

  @override
  TsNode copy() => TsConditionalType(
    flags,
    checkType.copy(),
    extendsType.copy(),
    trueType.copy(),
    falseType.copy(),
    meta: meta.copy(),
  );
}

class TsConstructorDeclaration extends TsNode with WithTypeParameters {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructorDeclaration(List<String> flags, this.typeParameters, this.parameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.constructor, flags, meta ?? TsNodeMeta());

  factory TsConstructorDeclaration.fromJson(Map<String, dynamic> json) {
    return TsConstructorDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameters, parameters, type];

  @override
  TsNode copy() =>
      TsConstructorDeclaration(flags, typeParameters.copy(), parameters.copy(), type.copy(), meta: meta.copy());
}

class TsConstructSignature extends TsNode with WithTypeParameters {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructSignature(List<String> flags, this.typeParameters, this.parameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.constructSignature, flags, meta ?? TsNodeMeta());

  factory TsConstructSignature.fromJson(Map<String, dynamic> json) {
    return TsConstructSignature(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameters, parameters, type];

  @override
  TsNode copy() =>
      TsConstructSignature(flags, typeParameters.copy(), parameters.copy(), type.copy(), meta: meta.copy());
}

class TsConstructorType extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructorType(
    List<String> flags,
    this.modifiers,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.constructorType, flags, meta ?? TsNodeMeta());

  factory TsConstructorType.fromJson(Map<String, dynamic> json) {
    return TsConstructorType(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, typeParameters, parameters, type];

  @override
  TsNode copy() => TsConstructorType(
    flags,
    modifiers.copy(),
    typeParameters.copy(),
    parameters.copy(),
    type.copy(),
    meta: meta.copy(),
  );
}

class TsDeclareKeyword extends TsNode {
  TsDeclareKeyword({TsNodeMeta? meta}) : super(TsNodeKind.declareKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsDeclareKeyword(meta: meta.copy());
}

class TsEnumDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final ListNode members;

  TsEnumDeclaration(List<String> flags, this.modifiers, this.name, this.members, {TsNodeMeta? meta})
    : super(TsNodeKind.enumDeclaration, flags, meta ?? TsNodeMeta());

  factory TsEnumDeclaration.fromJson(Map<String, dynamic> json) {
    return TsEnumDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name'])),
      ListNode(_fromJsonObjectArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, members];

  @override
  TsNode copy() => TsEnumDeclaration(flags, modifiers.copy(), name.copy(), members.copy(), meta: meta.copy());
}

class TsEnumMember extends TsNode {
  final SingleNode name;
  final NullableNode initializer;

  TsEnumMember(List<String> flags, this.name, this.initializer, {TsNodeMeta? meta})
    : super(TsNodeKind.enumMember, flags, meta ?? TsNodeMeta());

  factory TsEnumMember.fromJson(Map<String, dynamic> json) {
    return TsEnumMember(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  String toCode() => '${name.toCode()}${initializer.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, initializer];

  @override
  TsNode copy() => TsEnumMember(flags, name.copy(), initializer.copy(), meta: meta.copy());
}

class TsExportDeclaration extends TsNode {
  final String? namespaceExport;
  final NullableNode moduleSpecifier;

  TsExportDeclaration(List<String> flags, this.namespaceExport, this.moduleSpecifier, {TsNodeMeta? meta})
    : super(TsNodeKind.exportDeclaration, flags, meta ?? TsNodeMeta());

  factory TsExportDeclaration.fromJson(Map<String, dynamic> json) {
    final moduleSpecifier = json['moduleSpecifier'];
    return TsExportDeclaration(
      _fromJsonStringArray(json['flags']),
      json['namespaceExport'] as String?,
      NullableNode(moduleSpecifier != null ? _fromJsonObject(moduleSpecifier) : null),
    );
  }

  @override
  String? get nodeName => moduleSpecifier.value?.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [moduleSpecifier];

  @override
  TsNode copy() {
    return TsExportDeclaration(flags, namespaceExport, moduleSpecifier.copy(), meta: meta.copy());
  }
}

class TsExportKeyword extends TsNode {
  TsExportKeyword({TsNodeMeta? meta}) : super(TsNodeKind.exportKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsExportKeyword(meta: meta.copy());
}

class TsExclamationToken extends TsNode {
  TsExclamationToken({TsNodeMeta? meta}) : super(TsNodeKind.exclamationToken, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsExclamationToken(meta: meta.copy());
}

class TsExpressionWithTypeArguments extends TsNode with WithTypeArguments<TsExpressionWithTypeArguments> {
  final SingleNode expression;
  @override
  final ListNode typeArguments;

  TsExpressionWithTypeArguments(List<String> flags, this.expression, this.typeArguments, {TsNodeMeta? meta})
    : super(TsNodeKind.expressionWithTypeArguments, flags, meta ?? TsNodeMeta());

  factory TsExpressionWithTypeArguments.fromJson(Map<String, dynamic> json) {
    return TsExpressionWithTypeArguments(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['expression'])),
      ListNode(_fromJsonObjectArray(json['typeArguments'])),
    );
  }

  @override
  String? get nodeName => expression.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [expression, typeArguments];

  @override
  TsNode copy() => TsExpressionWithTypeArguments(flags, expression.copy(), typeArguments.copy(), meta: meta.copy());
}

class TsExtendsKeyword extends TsNode {
  TsExtendsKeyword({TsNodeMeta? meta}) : super(TsNodeKind.extendsKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsExtendsKeyword(meta: meta.copy());
}

class TsFalseKeyword extends TsNode {
  TsFalseKeyword({TsNodeMeta? meta}) : super(TsNodeKind.falseKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'false';

  @override
  TsNode copy() => TsFalseKeyword(meta: meta.copy());
}

class TsFunctionDeclaration extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final NullableNode asteriskToken;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsFunctionDeclaration(
    List<String> flags,
    this.modifiers,
    this.asteriskToken,
    this.name,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.functionDeclaration, flags, meta ?? TsNodeMeta());

  factory TsFunctionDeclaration.fromJson(Map<String, dynamic> json) {
    return TsFunctionDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      NullableNode(_fromNullableJsonObject(json['asteriskToken'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, asteriskToken, name, typeParameters, parameters, type];

  @override
  TsNode copy() => TsFunctionDeclaration(
    flags,
    modifiers.copy(),
    asteriskToken.copy(),
    name.copy(),
    typeParameters.copy(),
    parameters.copy(),
    type.copy(),
    meta: meta.copy(),
  );
}

class TsFunctionType extends TsNode with WithTypeParameters {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsFunctionType(List<String> flags, this.typeParameters, this.parameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.functionType, flags, meta ?? TsNodeMeta());

  factory TsFunctionType.fromJson(Map<String, dynamic> json) {
    return TsFunctionType(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String toCode() =>
      '${typeParameters.toCode(prefix: '<', suffix: '>')}(${parameters.toCode()})${type.toCode(' => &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameters, parameters, type];

  @override
  TsNode copy() => TsFunctionType(flags, typeParameters.copy(), parameters.copy(), type.copy(), meta: meta.copy());
}

class TsGetAccessor extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsGetAccessor(List<String> flags, this.modifiers, this.name, this.typeParameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.getAccessor, flags, meta ?? TsNodeMeta());

  factory TsGetAccessor.fromJson(Map<String, dynamic> json) {
    return TsGetAccessor(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, typeParameters, type];

  @override
  TsNode copy() =>
      TsGetAccessor(flags, modifiers.copy(), name.copy(), typeParameters.copy(), type.copy(), meta: meta.copy());
}

class TsHeritageClause extends TsNode {
  final SingleNode token;
  final ListNode types;

  TsHeritageClause(List<String> flags, this.token, this.types, {TsNodeMeta? meta})
    : super(TsNodeKind.heritageClause, flags, meta ?? TsNodeMeta());

  factory TsHeritageClause.fromJson(Map<String, dynamic> json) {
    return TsHeritageClause(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['token'])),
      ListNode(_fromJsonObjectArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [token, types];

  @override
  TsNode copy() => TsHeritageClause(flags, token.copy(), types.copy(), meta: meta.copy());
}

class TsIdentifier extends TsNode {
  final String text;

  TsIdentifier(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.identifier, flags, meta ?? TsNodeMeta());

  factory TsIdentifier.fromJson(Map<String, dynamic> json) {
    return TsIdentifier(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsIdentifier(flags, text, meta: meta.copy());
}

class TsImportAttribute extends TsNode {
  final SingleNode name;
  final SingleNode value;

  TsImportAttribute(List<String> flags, this.name, this.value, {TsNodeMeta? meta})
    : super(TsNodeKind.importAttribute, flags, meta ?? TsNodeMeta());

  factory TsImportAttribute.fromJson(Map<String, dynamic> json) {
    return TsImportAttribute(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      SingleNode(_fromJsonObject(json['value'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, value];

  @override
  TsNode copy() => TsImportAttribute(flags, name.copy(), value.copy(), meta: meta.copy());
}

class TsImportAttributes extends TsNode {
  final ListNode elements;

  TsImportAttributes(List<String> flags, this.elements, {TsNodeMeta? meta})
    : super(TsNodeKind.importAttributes, flags, meta ?? TsNodeMeta());

  factory TsImportAttributes.fromJson(Map<String, dynamic> json) {
    return TsImportAttributes(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['elements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];

  @override
  TsNode copy() => TsImportAttributes(flags, elements.copy(), meta: meta.copy());
}

class TsImportClause extends TsNode {
  final bool isTypeOnly;
  final NullableNode name;
  final NullableNode namedBindings;

  TsImportClause(List<String> flags, this.isTypeOnly, this.name, this.namedBindings, {TsNodeMeta? meta})
    : super(TsNodeKind.importClause, flags, meta ?? TsNodeMeta());

  factory TsImportClause.fromJson(Map<String, dynamic> json) {
    return TsImportClause(
      _fromJsonStringArray(json['flags']),
      json['isTypeOnly'],
      NullableNode(_fromNullableJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['namedBindings'])),
    );
  }

  @override
  String? get nodeName => name.value?.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, namedBindings];

  @override
  TsNode copy() => TsImportClause(flags, isTypeOnly, name.copy(), namedBindings.copy(), meta: meta.copy());
}

class TsImportDeclaration extends TsNode {
  final ListNode modifiers;
  final NullableNode importClause;
  final SingleNode moduleSpecifier;
  final NullableNode importAttributes;

  TsImportDeclaration(
    List<String> flags,
    this.modifiers,
    this.importClause,
    this.moduleSpecifier,
    this.importAttributes, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importDeclaration, flags, meta ?? TsNodeMeta());

  factory TsImportDeclaration.fromJson(Map<String, dynamic> json) {
    return TsImportDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      NullableNode(_fromNullableJsonObject(json['importClause'])),
      SingleNode(_fromJsonObject(json['moduleSpecifier'])),
      NullableNode(_fromNullableJsonObject(json['importAttributes'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, importClause, moduleSpecifier, importAttributes];

  @override
  TsNode copy() => TsImportDeclaration(
    flags,
    modifiers.copy(),
    importClause.copy(),
    moduleSpecifier.copy(),
    importAttributes.copy(),
    meta: meta.copy(),
  );
}

class TsImportSpecifier extends TsNode {
  final bool isTypeOnly;
  final SingleNode name;
  final NullableNode propertyName;

  TsImportSpecifier(List<String> flags, this.isTypeOnly, this.name, this.propertyName, {TsNodeMeta? meta})
    : super(TsNodeKind.importSpecifier, flags, meta ?? TsNodeMeta());

  factory TsImportSpecifier.fromJson(Map<String, dynamic> json) {
    return TsImportSpecifier(
      _fromJsonStringArray(json['flags']),
      json['isTypeOnly'],
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['propertyName'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, propertyName];

  @override
  TsNode copy() => TsImportSpecifier(flags, isTypeOnly, name.copy(), propertyName.copy(), meta: meta.copy());
}

class TsImportType extends TsNode with WithTypeArguments<TsImportType> {
  final SingleNode argument;
  final NullableNode attributes;
  final NullableNode qualifier;
  @override
  final ListNode typeArguments;

  TsImportType(
    List<String> flags,
    this.argument,
    this.attributes,
    this.qualifier,
    this.typeArguments, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importType, flags, meta ?? TsNodeMeta());

  factory TsImportType.fromJson(Map<String, dynamic> json) {
    return TsImportType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['argument'])),
      NullableNode(_fromNullableJsonObject(json['attributes'])),
      NullableNode(_fromNullableJsonObject(json['qualifier'])),
      ListNode(_fromJsonObjectArray(json['typeArguments'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [argument, attributes, qualifier, typeArguments];

  @override
  TsNode copy() => TsImportType(
    flags,
    argument.copy(),
    attributes.copy(),
    qualifier.copy(),
    typeArguments.copy(),
    meta: meta.copy(),
  );
}

class TsImplementsKeyword extends TsNode {
  TsImplementsKeyword({TsNodeMeta? meta}) : super(TsNodeKind.implementsKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsImplementsKeyword(meta: meta.copy());
}

class TsIndexedAccessType extends TsNode {
  final SingleNode objectType;
  final SingleNode indexType;

  TsIndexedAccessType(List<String> flags, this.objectType, this.indexType, {TsNodeMeta? meta})
    : super(TsNodeKind.indexedAccessType, flags, meta ?? TsNodeMeta());

  factory TsIndexedAccessType.fromJson(Map<String, dynamic> json) {
    return TsIndexedAccessType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['objectType'])),
      SingleNode(_fromJsonObject(json['indexType'])),
    );
  }

  @override
  String toCode() => '${objectType.toCode()}[${indexType.toCode()}]';

  @override
  List<TsNodeWrapper> get nodeWrappers => [objectType, indexType];

  @override
  TsNode copy() => TsIndexedAccessType(flags, objectType.copy(), indexType.copy(), meta: meta.copy());
}

class TsIndexSignature extends TsNode {
  final ListNode modifiers;
  final ListNode parameters;
  final NullableNode type;

  TsIndexSignature(List<String> flags, this.modifiers, this.parameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.indexSignature, flags, meta ?? TsNodeMeta());

  factory TsIndexSignature.fromJson(Map<String, dynamic> json) {
    return TsIndexSignature(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, parameters, type];

  @override
  TsNode copy() => TsIndexSignature(flags, modifiers.copy(), parameters.copy(), type.copy(), meta: meta.copy());
}

class TsInferType extends TsNode {
  final SingleNode typeParameter;

  TsInferType(List<String> flags, this.typeParameter, {TsNodeMeta? meta})
    : super(TsNodeKind.inferType, flags, meta ?? TsNodeMeta());

  factory TsInferType.fromJson(Map<String, dynamic> json) {
    return TsInferType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['typeParameter'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameter];

  @override
  TsNode copy() => TsInferType(flags, typeParameter.copy(), meta: meta.copy());
}

class TsInterfaceDeclaration extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode heritageClauses;
  final ListNode members;

  TsInterfaceDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.typeParameters,
    this.heritageClauses,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.interfaceDeclaration, flags, meta ?? TsNodeMeta());

  factory TsInterfaceDeclaration.fromJson(Map<String, dynamic> json) {
    return TsInterfaceDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['heritageClauses'])),
      ListNode(_fromJsonObjectArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, typeParameters, heritageClauses, members];

  @override
  TsNode copy() => TsInterfaceDeclaration(
    flags,
    modifiers.copy(),
    name.copy(),
    typeParameters.copy(),
    heritageClauses.copy(),
    members.copy(),
    meta: meta.copy(),
  );
}

class TsIntersectionType extends TsNode {
  final ListNode types;

  TsIntersectionType(List<String> flags, this.types, {TsNodeMeta? meta})
    : super(TsNodeKind.intersectionType, flags, meta ?? TsNodeMeta());

  factory TsIntersectionType.fromJson(Map<String, dynamic> json) {
    return TsIntersectionType(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];

  @override
  TsNode copy() => TsIntersectionType(flags, types.copy(), meta: meta.copy());
}

class TsIntrinsicKeyword extends TsNode {
  TsIntrinsicKeyword({TsNodeMeta? meta}) : super(TsNodeKind.intrinsicKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsIntrinsicKeyword(meta: meta.copy());
}

class TsKeyOfKeyword extends TsNode {
  TsKeyOfKeyword({TsNodeMeta? meta}) : super(TsNodeKind.keyOfKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'keyof';

  @override
  TsNode copy() => TsKeyOfKeyword(meta: meta.copy());
}

class TsLiteralType extends TsNode {
  final SingleNode literal;

  TsLiteralType(List<String> flags, this.literal, {TsNodeMeta? meta})
    : super(TsNodeKind.literalType, flags, meta ?? TsNodeMeta());

  factory TsLiteralType.fromJson(Map<String, dynamic> json) {
    return TsLiteralType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['literal']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => literal.value.nodeName;

  @override
  String toCode() => literal.toCode();

  @override
  List<TsNodeWrapper> get nodeWrappers => [literal];

  @override
  TsNode copy() => TsLiteralType(flags, literal.copy(), meta: meta.copy());
}

class TsMappedType extends TsNode {
  final NullableNode readonlyToken;
  final SingleNode typeParameter;
  final NullableNode nameType;
  final NullableNode questionToken;
  final NullableNode type;
  final ListNode members;

  TsMappedType(
    List<String> flags,
    this.readonlyToken,
    this.typeParameter,
    this.nameType,
    this.questionToken,
    this.type,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.mappedType, flags, meta ?? TsNodeMeta());

  factory TsMappedType.fromJson(Map<String, dynamic> json) {
    return TsMappedType(
      _fromJsonStringArray(json['flags']),
      NullableNode(_fromNullableJsonObject(json['readonlyToken'])),
      SingleNode(_fromJsonObject(json['typeParameter']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['nameType'])),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      ListNode(_fromJsonObjectArray(json['members'])),
    );
  }

  @override
  String? get nodeName => nameType.value?.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [readonlyToken, typeParameter, nameType, questionToken, type, members];

  @override
  TsNode copy() => TsMappedType(
    flags,
    readonlyToken.copy(),
    typeParameter.copy(),
    nameType.copy(),
    questionToken.copy(),
    type.copy(),
    members.copy(),
    meta: meta.copy(),
  );
}

class TsMethodDeclaration extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode asteriskToken;
  final NullableNode questionToken;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsMethodDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.asteriskToken,
    this.questionToken,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.methodDeclaration, flags, meta ?? TsNodeMeta());

  factory TsMethodDeclaration.fromJson(Map<String, dynamic> json) {
    return TsMethodDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['asteriskToken'])),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
    modifiers,
    name,
    asteriskToken,
    questionToken,
    typeParameters,
    parameters,
    type,
  ];

  @override
  TsNode copy() => TsMethodDeclaration(
    flags,
    modifiers.copy(),
    name.copy(),
    asteriskToken.copy(),
    questionToken.copy(),
    typeParameters.copy(),
    parameters.copy(),
    type.copy(),
    meta: meta.copy(),
  );
}

class TsMethodSignature extends TsNode with WithTypeParameters {
  final SingleNode name;
  final NullableNode questionToken;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsMethodSignature(
    List<String> flags,
    this.name,
    this.questionToken,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.methodSignature, flags, meta ?? TsNodeMeta());

  factory TsMethodSignature.fromJson(Map<String, dynamic> json) {
    return TsMethodSignature(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      ListNode(_fromJsonObjectArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, questionToken, typeParameters, parameters, type];

  @override
  TsNode copy() => TsMethodSignature(
    flags,
    name.copy(),
    questionToken.copy(),
    typeParameters.copy(),
    parameters.copy(),
    type.copy(),
    meta: meta.copy(),
  );
}

class TsMinusToken extends TsNode {
  TsMinusToken({TsNodeMeta? meta}) : super(TsNodeKind.minusToken, [], meta ?? TsNodeMeta());

  @override
  String toCode() => '-';

  @override
  TsNode copy() => TsMinusToken(meta: meta.copy());
}

class TsMinusMinusToken extends TsNode {
  TsMinusMinusToken({TsNodeMeta? meta}) : super(TsNodeKind.minusMinusToken, [], meta ?? TsNodeMeta());

  @override
  String toCode() => '--';

  @override
  TsNode copy() => TsMinusMinusToken(meta: meta.copy());
}

class TsModuleBlock extends TsNode {
  final ListNode statements;

  TsModuleBlock(List<String> flags, this.statements, {TsNodeMeta? meta})
    : super(TsNodeKind.moduleBlock, flags, meta ?? TsNodeMeta());

  factory TsModuleBlock.fromJson(Map<String, dynamic> json) {
    return TsModuleBlock(_fromJsonStringArray(json['flags']), ListNode(_fromJsonObjectArray(json['statements'])));
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [statements];

  @override
  TsNode copy() => TsModuleBlock(flags, statements.copy(), meta: meta.copy());
}

class TsModuleDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final String declarationKind;
  final NullableNode body;

  TsModuleDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.declarationKind,
    this.body, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.moduleDeclaration, flags, meta ?? TsNodeMeta());

  factory TsModuleDeclaration.fromJson(Map<String, dynamic> json) {
    return TsModuleDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      json['declarationKind'] as String,
      NullableNode(_fromNullableJsonObject(json['body'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, body];

  @override
  TsNode copy() =>
      TsModuleDeclaration(flags, modifiers.copy(), name.copy(), declarationKind, body.copy(), meta: meta.copy());
}

class TsNamedImports extends TsNode {
  final ListNode elements;

  TsNamedImports(List<String> flags, this.elements, {TsNodeMeta? meta})
    : super(TsNodeKind.namedImports, flags, meta ?? TsNodeMeta());

  factory TsNamedImports.fromJson(Map<String, dynamic> json) {
    return TsNamedImports(_fromJsonStringArray(json['flags']), ListNode(_fromJsonObjectArray(json['elements'])));
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];

  @override
  TsNode copy() => TsNamedImports(flags, elements.copy(), meta: meta.copy());
}

class TsNamedTupleMember extends TsNode {
  final SingleNode name;
  final SingleNode type;

  TsNamedTupleMember(List<String> flags, this.name, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.namedTupleMember, flags, meta ?? TsNodeMeta());

  factory TsNamedTupleMember.fromJson(Map<String, dynamic> json) {
    return TsNamedTupleMember(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['name'])),
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, type];

  @override
  TsNode copy() => TsNamedTupleMember(flags, name.copy(), type.copy(), meta: meta.copy());
}

class TsNamespaceImport extends TsNode {
  final SingleNode name;

  TsNamespaceImport(List<String> flags, this.name, {TsNodeMeta? meta})
    : super(TsNodeKind.namespaceImport, flags, meta ?? TsNodeMeta());

  factory TsNamespaceImport.fromJson(Map<String, dynamic> json) {
    return TsNamespaceImport(_fromJsonStringArray(json['flags']), SingleNode(_fromJsonObject(json['name'])));
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name];

  @override
  TsNode copy() => TsNamespaceImport(flags, name.copy(), meta: meta.copy());
}

class TsNeverKeyword extends TsNode {
  TsNeverKeyword({TsNodeMeta? meta}) : super(TsNodeKind.neverKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsNeverKeyword(meta: meta.copy());
}

class TsNullKeyword extends TsNode {
  TsNullKeyword({TsNodeMeta? meta}) : super(TsNodeKind.nullKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'null';

  @override
  TsNode copy() => TsNullKeyword(meta: meta.copy());
}

class TsNumberKeyword extends TsNode {
  TsNumberKeyword({TsNodeMeta? meta}) : super(TsNodeKind.numberKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'number';

  @override
  TsNode copy() => TsNumberKeyword(meta: meta.copy());
}

class TsNumericLiteral extends TsNode {
  final String text;

  TsNumericLiteral(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.numericLiteral, flags, meta ?? TsNodeMeta());

  factory TsNumericLiteral.fromJson(Map<String, dynamic> json) {
    return TsNumericLiteral(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String toCode() => text;

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsNumericLiteral(flags, text, meta: meta.copy());
}

class TsObjectKeyword extends TsNode {
  TsObjectKeyword({TsNodeMeta? meta}) : super(TsNodeKind.objectKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'object';

  @override
  TsNode copy() => TsObjectKeyword(meta: meta.copy());
}

class TsOptionalType extends TsNode {
  final SingleNode type;

  TsOptionalType(List<String> flags, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.optionalType, flags, meta ?? TsNodeMeta());

  factory TsOptionalType.fromJson(Map<String, dynamic> json) {
    return TsOptionalType(_fromJsonStringArray(json['flags']), SingleNode(_fromJsonObject(json['type'])));
  }

  @override
  String? get nodeName => type.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];

  @override
  String toCode() => '${type.toCode()}?';

  @override
  TsNode copy() {
    return TsOptionalType(flags, type.copy(), meta: meta.copy());
  }
}

class TsOverrideKeyword extends TsNode {
  TsOverrideKeyword({TsNodeMeta? meta}) : super(TsNodeKind.overrideKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'override';

  @override
  TsNode copy() => TsAnyKeyword(meta: meta.copy());
}

class TsPackage extends TsNode {
  final String name;
  final String version;
  final ListNode sourceFiles;
  final ListNode dependencies;

  TsPackage(List<String> flags, this.name, this.version, this.sourceFiles, this.dependencies, {TsNodeMeta? meta})
    : super(TsNodeKind.package, flags, meta ?? TsNodeMeta());

  factory TsPackage.fromJson(Map<String, dynamic> json) {
    final result = TsPackage(
      [],
      json['name'] as String,
      json['version'] as String,
      ListNode(_fromJsonObjectArray(json['sourceFiles'])),
      ListNode([]),
    );
    result._parent = null;
    result._applyParentToChilds();
    return result;
  }

  @override
  String? get nodeName => name;

  @override
  List<TsNodeWrapper> get nodeWrappers => [sourceFiles, dependencies];

  @override
  TsNode copy() => TsPackage(flags, name, version, sourceFiles.copy(), dependencies.copy(), meta: meta.copy());
}

class TsParameter extends TsNode {
  final ListNode modifiers;
  final bool dotDotDotToken;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode type;
  final NullableNode initializer;

  TsParameter(
    List<String> flags,
    this.modifiers,
    this.dotDotDotToken,
    this.name,
    this.questionToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.parameter, flags, meta ?? TsNodeMeta());

  factory TsParameter.fromJson(Map<String, dynamic> json) {
    return TsParameter(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      json['dotDotDotToken'],
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  String toCode() =>
      '${modifiers.toCode(suffix: ' ')}${dotDotDotToken ? '...' : ''}${name.toCode()}${questionToken.toCode('&')}${type.toCode(': &')}${initializer.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, questionToken, type, initializer];

  @override
  TsNode copy() => TsParameter(
    flags,
    modifiers.copy(),
    dotDotDotToken,
    name.copy(),
    questionToken.copy(),
    type.copy(),
    initializer.copy(),
    meta: meta.copy(),
  );
}

class TsParenthesizedType extends TsNode {
  final SingleNode type;

  TsParenthesizedType(List<String> flags, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.parenthesizedType, flags, meta ?? TsNodeMeta());

  factory TsParenthesizedType.fromJson(Map<String, dynamic> json) {
    return TsParenthesizedType(_fromJsonStringArray(json['flags']), SingleNode(_fromJsonObject(json['type'])));
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];

  @override
  String toCode() => '(${type.toCode()})';

  @override
  TsNode copy() => TsParenthesizedType(flags, type.copy(), meta: meta.copy());
}

class TsPlusToken extends TsNode {
  TsPlusToken({TsNodeMeta? meta}) : super(TsNodeKind.plusToken, [], meta ?? TsNodeMeta());

  @override
  String toCode() => '+';

  @override
  TsNode copy() => TsPlusToken(meta: meta.copy());
}

class TsPlusPlusToken extends TsNode {
  TsPlusPlusToken({TsNodeMeta? meta}) : super(TsNodeKind.plusPlusToken, [], meta ?? TsNodeMeta());

  @override
  String toCode() => '++';

  @override
  TsNode copy() => TsPlusPlusToken(meta: meta.copy());
}

class TsPrefixUnaryExpression extends TsNode {
  final SingleNode operator;
  final SingleNode operand;

  TsPrefixUnaryExpression(List<String> flags, this.operator, this.operand, {TsNodeMeta? meta})
    : super(TsNodeKind.prefixUnaryExpression, flags, meta ?? TsNodeMeta());

  factory TsPrefixUnaryExpression.fromJson(Map<String, dynamic> json) {
    return TsPrefixUnaryExpression(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['operator'])),
      SingleNode(_fromJsonObject(json['operand'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [operator, operand];

  @override
  TsNode copy() => TsPrefixUnaryExpression(flags, operator.copy(), operand.copy(), meta: meta.copy());
}

class TsPrivateKeyword extends TsNode {
  TsPrivateKeyword({TsNodeMeta? meta}) : super(TsNodeKind.privateKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'private';

  @override
  TsNode copy() => TsPrivateKeyword(meta: meta.copy());
}

class TsPropertyAccessExpression extends TsNode {
  final SingleNode expression;
  final NullableNode questionDotToken;
  final SingleNode name;

  TsPropertyAccessExpression(List<String> flags, this.expression, this.questionDotToken, this.name, {TsNodeMeta? meta})
    : super(TsNodeKind.propertyAccessExpression, flags, meta ?? TsNodeMeta());

  factory TsPropertyAccessExpression.fromJson(Map<String, dynamic> json) {
    return TsPropertyAccessExpression(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['expression'])),
      NullableNode(_fromNullableJsonObject(json['questionDotToken'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [expression, questionDotToken, name];

  @override
  TsNode copy() =>
      TsPropertyAccessExpression(flags, expression.copy(), questionDotToken.copy(), name.copy(), meta: meta.copy());
}

class TsPropertyDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode exclamationToken;
  final NullableNode type;
  final NullableNode initializer;

  TsPropertyDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.questionToken,
    this.exclamationToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.propertyDeclaration, flags, meta ?? TsNodeMeta());

  factory TsPropertyDeclaration.fromJson(Map<String, dynamic> json) {
    return TsPropertyDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['exclamationToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  String toCode() =>
      '${modifiers.toCode(separator: ' ', suffix: ' ')}${name.toCode()}${questionToken.toCode('?')}${exclamationToken.toCode('!')}${type.toCode(': &')}${initializer.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, questionToken, exclamationToken, type, initializer];

  @override
  TsNode copy() => TsPropertyDeclaration(
    flags,
    modifiers.copy(),
    name.copy(),
    questionToken.copy(),
    exclamationToken.copy(),
    type.copy(),
    initializer.copy(),
    meta: meta.copy(),
  );
}

class TsPropertySignature extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode type;
  final NullableNode initializer;

  TsPropertySignature(
    List<String> flags,
    this.modifiers,
    this.name,
    this.questionToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.propertySignature, flags, meta ?? TsNodeMeta());

  factory TsPropertySignature.fromJson(Map<String, dynamic> json) {
    return TsPropertySignature(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  String toCode() =>
      '${modifiers.toCode(separator: ' ', suffix: ' ')}${name.toCode()}${questionToken.toCode('?')}${type.toCode(': &')}${initializer.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, questionToken, type, initializer];

  @override
  TsNode copy() => TsPropertySignature(
    flags,
    modifiers.copy(),
    name.copy(),
    questionToken.copy(),
    type.copy(),
    initializer.copy(),
    meta: meta.copy(),
  );
}

class TsProtectedKeyword extends TsNode {
  TsProtectedKeyword({TsNodeMeta? meta}) : super(TsNodeKind.protectedKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsProtectedKeyword(meta: meta.copy());
}

class TsQualifiedName extends TsNode {
  final SingleNode left;
  final SingleNode right;

  TsQualifiedName(List<String> flags, this.left, this.right, {TsNodeMeta? meta})
    : super(TsNodeKind.qualifiedName, flags, meta ?? TsNodeMeta());

  factory TsQualifiedName.fromJson(Map<String, dynamic> json) {
    return TsQualifiedName(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['left']), affectsParent: true),
      SingleNode(_fromJsonObject(json['right']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => '${left.value.nodeName}.${right.value.nodeName}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [left, right];

  @override
  TsNode copy() => TsQualifiedName(flags, left.copy(), right.copy(), meta: meta.copy());
}

class TsQuestionToken extends TsNode {
  TsQuestionToken({TsNodeMeta? meta}) : super(TsNodeKind.questionToken, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsQuestionToken(meta: meta.copy());
}

class TsReadonlyKeyword extends TsNode {
  TsReadonlyKeyword({TsNodeMeta? meta}) : super(TsNodeKind.readonlyKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'readonly';

  @override
  TsNode copy() => TsReadonlyKeyword(meta: meta.copy());
}

class TsRestType extends TsNode {
  final SingleNode type;

  TsRestType(List<String> flags, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.restType, flags, meta ?? TsNodeMeta());

  factory TsRestType.fromJson(Map<String, dynamic> json) {
    return TsRestType(_fromJsonStringArray(json['flags']), SingleNode(_fromJsonObject(json['type'])));
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];

  @override
  TsNode copy() => TsRestType(flags, type.copy(), meta: meta.copy());
}

class TsSetAccessor extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsSetAccessor(List<String> flags, this.modifiers, this.name, this.typeParameters, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.setAccessor, flags, meta ?? TsNodeMeta());

  factory TsSetAccessor.fromJson(Map<String, dynamic> json) {
    return TsSetAccessor(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, typeParameters, type];

  @override
  TsNode copy() =>
      TsSetAccessor(flags, modifiers.copy(), name.copy(), typeParameters.copy(), type.copy(), meta: meta.copy());
}

class TsSourceFile extends TsNode {
  final String baseName;
  final ListNode statements;

  TsSourceFile(List<String> flags, this.baseName, this.statements, {TsNodeMeta? meta})
    : super(TsNodeKind.sourceFile, flags, meta ?? TsNodeMeta());

  factory TsSourceFile.fromJson(Map<String, dynamic> json) {
    return TsSourceFile([], json['baseName'], ListNode(_fromJsonObjectArray(json['statements'])));
  }

  @override
  String? get nodeName => baseName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [statements];

  @override
  TsNode copy() => TsSourceFile(flags, baseName, statements.copy(), meta: meta.copy());
}

class TsStaticKeyword extends TsNode {
  TsStaticKeyword({TsNodeMeta? meta}) : super(TsNodeKind.staticKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'static';

  @override
  TsNode copy() => TsStaticKeyword(meta: meta.copy());
}

class TsStringKeyword extends TsNode {
  TsStringKeyword({TsNodeMeta? meta}) : super(TsNodeKind.stringKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'string';

  @override
  TsNode copy() => TsStringKeyword(meta: meta.copy());
}

class TsStringLiteral extends TsNode {
  final String text;

  TsStringLiteral(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.stringLiteral, flags, meta ?? TsNodeMeta());

  factory TsStringLiteral.fromJson(Map<String, dynamic> json) {
    return TsStringLiteral(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsStringLiteral(flags, text, meta: meta.copy());
}

class TsSymbolKeyword extends TsNode {
  TsSymbolKeyword({TsNodeMeta? meta}) : super(TsNodeKind.symbolKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsSymbolKeyword(meta: meta.copy());
}

class TsTildeToken extends TsNode {
  TsTildeToken({TsNodeMeta? meta}) : super(TsNodeKind.tildeToken, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsTildeToken(meta: meta.copy());
}

class TsTemplateHead extends TsNode {
  final String text;

  TsTemplateHead(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.templateHead, flags, meta ?? TsNodeMeta());

  factory TsTemplateHead.fromJson(Map<String, dynamic> json) {
    return TsTemplateHead(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String toCode() => text;

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsTemplateHead(flags, text, meta: meta.copy());
}

class TsTemplateLiteralType extends TsNode {
  final SingleNode head;
  final ListNode templateSpans;

  TsTemplateLiteralType(List<String> flags, this.head, this.templateSpans, {TsNodeMeta? meta})
    : super(TsNodeKind.templateLiteralType, flags, meta ?? TsNodeMeta());

  factory TsTemplateLiteralType.fromJson(Map<String, dynamic> json) {
    return TsTemplateLiteralType(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['head'])),
      ListNode(_fromJsonObjectArray(json['templateSpans'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [head, templateSpans];

  @override
  TsNode copy() => TsTemplateLiteralType(flags, head.copy(), templateSpans.copy(), meta: meta.copy());
}

class TsTemplateLiteralTypeSpan extends TsNode {
  final SingleNode type;
  final SingleNode literal;

  TsTemplateLiteralTypeSpan(List<String> flags, this.type, this.literal, {TsNodeMeta? meta})
    : super(TsNodeKind.templateLiteralTypeSpan, flags, meta ?? TsNodeMeta());

  factory TsTemplateLiteralTypeSpan.fromJson(Map<String, dynamic> json) {
    return TsTemplateLiteralTypeSpan(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['type'])),
      SingleNode(_fromJsonObject(json['literal'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type, literal];

  @override
  TsNode copy() => TsTemplateLiteralTypeSpan(flags, type.copy(), literal.copy(), meta: meta.copy());
}

class TsTemplateMiddle extends TsNode {
  final String text;

  TsTemplateMiddle(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.templateMiddle, flags, meta ?? TsNodeMeta());

  factory TsTemplateMiddle.fromJson(Map<String, dynamic> json) {
    return TsTemplateMiddle(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String toCode() => text;

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsTemplateMiddle(flags, text, meta: meta.copy());
}

class TsTemplateTail extends TsNode {
  final String text;

  TsTemplateTail(List<String> flags, this.text, {TsNodeMeta? meta})
    : super(TsNodeKind.templateTail, flags, meta ?? TsNodeMeta());

  factory TsTemplateTail.fromJson(Map<String, dynamic> json) {
    return TsTemplateTail(_fromJsonStringArray(json['flags']), json['text'] as String);
  }

  @override
  String toCode() => text;

  @override
  String? get nodeName => text;

  @override
  TsNode copy() => TsTemplateTail(flags, text, meta: meta.copy());
}

class TsThisType extends TsNode {
  TsThisType({TsNodeMeta? meta}) : super(TsNodeKind.thisType, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsThisType(meta: meta.copy());
}

class TsTrueKeyword extends TsNode {
  TsTrueKeyword({TsNodeMeta? meta}) : super(TsNodeKind.trueKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'true';

  @override
  TsNode copy() => TsTrueKeyword(meta: meta.copy());
}

class TsTupleType extends TsNode {
  final ListNode elements;

  TsTupleType(List<String> flags, this.elements, {TsNodeMeta? meta})
    : super(TsNodeKind.tupleType, flags, meta ?? TsNodeMeta());

  factory TsTupleType.fromJson(Map<String, dynamic> json) {
    return TsTupleType(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['elements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];

  @override
  String toCode() => '[${elements.toCode(separator: ', ')}]';

  @override
  TsNode copy() => TsTupleType(flags, elements.copy(), meta: meta.copy());
}

class TsTypeAliasDeclaration extends TsNode with WithTypeParameters {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsTypeAliasDeclaration(
    List<String> flags,
    this.modifiers,
    this.name,
    this.typeParameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeAliasDeclaration, flags, meta ?? TsNodeMeta());

  factory TsTypeAliasDeclaration.fromJson(Map<String, dynamic> json) {
    return TsTypeAliasDeclaration(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, typeParameters, type];

  @override
  TsNode copy() => TsTypeAliasDeclaration(
    flags,
    modifiers.copy(),
    name.copy(),
    typeParameters.copy(),
    type.copy(),
    meta: meta.copy(),
  );
}

class TsTypeLiteral extends TsNode {
  final ListNode members;

  TsTypeLiteral(List<String> flags, this.members, {TsNodeMeta? meta})
    : super(TsNodeKind.typeLiteral, flags, meta ?? TsNodeMeta());

  factory TsTypeLiteral.fromJson(Map<String, dynamic> json) {
    return TsTypeLiteral(_fromJsonStringArray(json['flags']), ListNode(_fromJsonObjectArray(json['members'])));
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [members];

  @override
  String toCode() => '{ ${members.value.map((m) => m.toCode()).join('; ')} }';

  @override
  TsNode copy() => TsTypeLiteral(flags, members.copy(), meta: meta.copy());
}

class TsTypeOperator extends TsNode {
  final SingleNode operator;
  final SingleNode type;

  TsTypeOperator(List<String> flags, this.operator, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.typeOperator, flags, meta ?? TsNodeMeta());

  factory TsTypeOperator.fromJson(Map<String, dynamic> json) {
    return TsTypeOperator(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['operator'])),
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [operator, type];

  @override
  String toCode() => '${operator.value.toCode()} ${type.value.toCode()}';

  @override
  TsNode copy() => TsTypeOperator(flags, operator.copy(), type.copy(), meta: meta.copy());
}

class TsTypeParameter extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode constraint;
  final NullableNode defaultType;

  TsTypeParameter(List<String> flags, this.modifiers, this.name, this.constraint, this.defaultType, {TsNodeMeta? meta})
    : super(TsNodeKind.typeParameter, flags, meta ?? TsNodeMeta());

  factory TsTypeParameter.fromJson(Map<String, dynamic> json) {
    return TsTypeParameter(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['constraint'])),
      NullableNode(_fromNullableJsonObject(json['default'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  String toCode() => '${name.toCode()}${constraint.toCode(' extends &')}${defaultType.toCode(' = &')}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, name, constraint, defaultType];

  @override
  TsNode copy() =>
      TsTypeParameter(flags, modifiers.copy(), name.copy(), constraint.copy(), defaultType.copy(), meta: meta.copy());
}

class TsTypePredicate extends TsNode {
  final NullableNode assertModifier;
  final SingleNode parameterName;
  final NullableNode type;

  TsTypePredicate(List<String> flags, this.assertModifier, this.parameterName, this.type, {TsNodeMeta? meta})
    : super(TsNodeKind.typePredicate, flags, meta ?? TsNodeMeta());

  factory TsTypePredicate.fromJson(Map<String, dynamic> json) {
    return TsTypePredicate(
      _fromJsonStringArray(json['flags']),
      NullableNode(_fromNullableJsonObject(json['assertModifier'])),
      SingleNode(_fromJsonObject(json['parameterName'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [assertModifier, parameterName, type];

  @override
  TsNode copy() => TsTypePredicate(flags, assertModifier.copy(), parameterName.copy(), type.copy(), meta: meta.copy());
}

class TsTypeQuery extends TsNode {
  final SingleNode exprName;
  final ListNode typeArguments;

  TsTypeQuery(List<String> flags, this.exprName, this.typeArguments, {TsNodeMeta? meta})
    : super(TsNodeKind.typeQuery, flags, meta ?? TsNodeMeta());

  factory TsTypeQuery.fromJson(Map<String, dynamic> json) {
    return TsTypeQuery(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['exprName'])),
      ListNode(_fromJsonObjectArray(json['typeArguments'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [exprName, typeArguments];

  @override
  String toCode() => 'typeof ${exprName.toCode()}';

  @override
  TsNode copy() => TsTypeQuery(flags, exprName.copy(), typeArguments.copy(), meta: meta.copy());
}

class TsTypeReference extends TsNode with WithTypeArguments<TsTypeReference> {
  final SingleNode typeName;
  @override
  final ListNode typeArguments;

  TsTypeReference(List<String> flags, this.typeName, this.typeArguments, {TsNodeMeta? meta})
    : super(TsNodeKind.typeReference, flags, meta ?? TsNodeMeta());

  factory TsTypeReference.fromJson(Map<String, dynamic> json) {
    return TsTypeReference(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['typeName']), affectsParent: true),
      ListNode(_fromJsonObjectArray(json['typeArguments'])),
    );
  }

  @override
  String? get nodeName => typeName.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeName, typeArguments];

  @override
  TsNode copy() => TsTypeReference(flags, typeName.copy(), typeArguments.copy(), meta: meta.copy());
}

class TsUndefinedKeyword extends TsNode {
  TsUndefinedKeyword({TsNodeMeta? meta}) : super(TsNodeKind.undefinedKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'undefined';

  @override
  TsNode copy() => TsUndefinedKeyword(meta: meta.copy());
}

class TsUnionType extends TsNode {
  final ListNode types;

  TsUnionType(List<String> flags, this.types, {TsNodeMeta? meta})
    : super(TsNodeKind.unionType, flags, meta ?? TsNodeMeta());

  factory TsUnionType.fromJson(Map<String, dynamic> json) {
    return TsUnionType(_fromJsonStringArray(json['flags']), ListNode(_fromJsonObjectArray(json['types'])));
  }

  @override
  String toCode() => types.toCode(separator: ' | ');

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];

  @override
  TsNode copy() => TsUnionType(flags, types.copy(), meta: meta.copy());
}

class TsUniqueKeyword extends TsNode {
  TsUniqueKeyword({TsNodeMeta? meta}) : super(TsNodeKind.uniqueKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsUniqueKeyword(meta: meta.copy());
}

class TsUnknownKeyword extends TsNode {
  TsUnknownKeyword({TsNodeMeta? meta}) : super(TsNodeKind.unknownKeyword, [], meta ?? TsNodeMeta());

  @override
  TsNode copy() => TsUnknownKeyword(meta: meta.copy());
}

class TsVariableDeclaration extends TsNode {
  final SingleNode name;
  final NullableNode exclamationToken;
  final NullableNode type;
  final NullableNode initializer;

  TsVariableDeclaration(
    List<String> flags,
    this.name,
    this.exclamationToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.variableDeclaration, flags, meta ?? TsNodeMeta());

  factory TsVariableDeclaration.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclaration(
      _fromJsonStringArray(json['flags']),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['exclamationToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name, exclamationToken, type, initializer];

  @override
  String toCode() =>
      '${name.toCode()}${exclamationToken.toCode('!')}${type.toCode(': &')}${initializer.toCode(' = &')}';

  @override
  TsNode copy() => TsVariableDeclaration(
    flags,
    name.copy(),
    exclamationToken.copy(),
    type.copy(),
    initializer.copy(),
    meta: meta.copy(),
  );
}

class TsVariableDeclarationList extends TsNode {
  final ListNode declarations;

  TsVariableDeclarationList(List<String> flags, this.declarations, {TsNodeMeta? meta})
    : super(TsNodeKind.variableDeclarationList, flags, meta ?? TsNodeMeta());

  factory TsVariableDeclarationList.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclarationList(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['declarations'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [declarations];

  @override
  TsNode copy() => TsVariableDeclarationList(flags, declarations.copy(), meta: meta.copy());
}

class TsVariableStatement extends TsNode {
  final ListNode modifiers;
  final SingleNode declarationList;

  TsVariableStatement(List<String> flags, this.modifiers, this.declarationList, {TsNodeMeta? meta})
    : super(TsNodeKind.variableStatement, flags, meta ?? TsNodeMeta());

  factory TsVariableStatement.fromJson(Map<String, dynamic> json) {
    return TsVariableStatement(
      _fromJsonStringArray(json['flags']),
      ListNode(_fromJsonObjectArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['declarationList'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [modifiers, declarationList];

  @override
  TsNode copy() => TsVariableStatement(flags, modifiers.copy(), declarationList.copy(), meta: meta.copy());
}

class TsVoidKeyword extends TsNode {
  TsVoidKeyword({TsNodeMeta? meta}) : super(TsNodeKind.voidKeyword, [], meta ?? TsNodeMeta());

  @override
  String toCode() => 'void';

  @override
  TsNode copy() => TsVoidKeyword(meta: meta.copy());
}
