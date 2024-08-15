import 'package:binary_tree/binary_tree.dart';
import 'package:ts_interop/src/transpiler/type_evaluator.dart';

import '../util/ts_node_search.dart';

String _toFirstLower(String text) => "${text[0].toLowerCase()}${text.substring(1)}";

T _fromJsonObject<T extends TsNode>(Map<String, dynamic> json) {
  try {
    final kind = TsNodeKind.values.byName(_toFirstLower(json['kind'] as String));
    switch (kind) {
      case TsNodeKind.$unsupported:
        throw StateError('Node with kind ${TsNodeKind.$unsupported.name} is not allowed in JSON!');
      case TsNodeKind.$removed:
        throw StateError('Node with kind ${TsNodeKind.$removed.name} is not allowed in JSON!');
      case TsNodeKind.abstractKeyword:
        return TsAbstractKeyword() as T;
      case TsNodeKind.anyKeyword:
        return TsAnyKeyword() as T;
      case TsNodeKind.arrayType:
        return TsArrayType.fromJson(json) as T;
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
  } catch (e) {
    print('WARNING: Unsupported node kind: ${json['kind']}');
    return Ts$Unsupported(_toFirstLower(json['kind'].toString())) as T;
  }
}

T? _fromNullableJsonObject<T extends TsNode>(Map<String, dynamic>? json) {
  if (json == null) {
    return null;
  }
  return _fromJsonObject(json);
}

List<T> _fromJsonArray<T extends TsNode>(Iterable? json) {
  if (json == null) {
    return [];
  }
  return json.map((e) => _fromJsonObject<T>(e as Map<String, dynamic>)).toList();
}

void updateParentAndChilds(TsNode node, TsNode? parent) {
  node._parent = parent;
  node._applyParentToChilds();
}

typedef TsNodeMapper = TsNode Function(TsNode node, TypeEvaluator typeEvaluator);

enum TsNodeKind {
  $unsupported,
  $removed,
  abstractKeyword,
  anyKeyword,
  arrayType,
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
  namespaceImport,
  neverKeyword,
  nullKeyword,
  numberKeyword,
  numericLiteral,
  objectKeyword,
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

mixin WithTypeParameters<T extends TsNode> {
  ListNode get typeParameters;
  void updateTypeParameters(List<TsNode> typeArguments) {
    final (added, removed) = this.typeParameters.set(typeArguments);
    updateCache(added, removed);
  }
}

mixin WithTypeArguments<T extends TsNode> {
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
    return result;
  }

  @override
  List<TsNode> get nodes => [_value];

  String toCode() => _value.toCode();
}

final class NullableNode extends TsNodeWrapper<TsNode?> {
  NullableNode(TsNode? value, {bool affectsParent = false}) : super(affectsParent, value);

  @override
  (List<TsNode>, List<TsNode>) set(TsNode? value) {
    final result = ([if (value != null) value], [if (_value != null) _value!]);
    _value = value;
    return result;
  }

  @override
  List<TsNode> get nodes => [if (_value != null) _value!];

  String toCode(String code) => value != null ? code.replaceAll('&', value!.toCode()) : '';
}

final class ListNode extends TsNodeWrapper<List<TsNode>> {
  ListNode(List<TsNode> node) : super(false, node);

  @override
  (List<TsNode>, List<TsNode>) set(List<TsNode> value) {
    final removed = BinaryTree<TsNode>(_value);
    final added = BinaryTree<TsNode>(value);
    for (final node in _value) {
      removed.remove(node);
    }
    for (final node in value) {
      added.remove(node);
    }
    _value = value;
    return (added.toList(), removed.toList());
  }

  @override
  List<TsNode> get nodes => _value;
}

extension ToListNode on List<TsNode> {
  ListNode toListNode() => ListNode(this);
}

class TsNodeMeta {
  List<String> documentation = [];
  bool external = false;

  TsNodeMeta({List<String>? documentation, bool? external}) {
    this.documentation = documentation ?? this.documentation;
    this.external = external ?? this.external;
  }

  TsNodeMeta copy({
    List<String>? documentation,
    bool? external,
  }) {
    return TsNodeMeta()
      ..documentation = documentation ?? List.of(this.documentation)
      ..external = external ?? this.external;
  }
}

sealed class TsNode implements Comparable<TsNode> {
  static int _idCounter = 0;
  final int id;
  final TsNodeKind kind;
  final TsNodeMeta meta;
  TsNode? _parent;

  TsNode(this.kind, this.meta) : id = _idCounter++;

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
  int get hashCode => id;
}

class Ts$Unsupported extends TsNode {
  final String unsupportedNodeKind;

  Ts$Unsupported(
    this.unsupportedNodeKind, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.$unsupported, meta ?? TsNodeMeta());

  @override
  String? get nodeName => unsupportedNodeKind;
}

class Ts$Removed extends TsNode {
  final String removedNode;

  Ts$Removed(
    TsNode node, {
    TsNodeMeta? meta,
  })  : removedNode = node.toString(),
        super(TsNodeKind.$removed, meta ?? TsNodeMeta());

  @override
  String get nodeName => removedNode;
}

class TsAbstractKeyword extends TsNode {
  TsAbstractKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.abstractKeyword, meta ?? TsNodeMeta());
}

class TsAnyKeyword extends TsNode {
  TsAnyKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.anyKeyword, meta ?? TsNodeMeta());
}

class TsArrayType extends TsNode {
  final SingleNode elementType;

  TsArrayType(
    this.elementType, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.arrayType, meta ?? TsNodeMeta());

  factory TsArrayType.fromJson(Map<String, dynamic> json) {
    return TsArrayType(
      SingleNode(_fromJsonObject(json['elementType'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elementType];
}

class TsBooleanKeyword extends TsNode {
  TsBooleanKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.booleanKeyword, meta ?? TsNodeMeta());
}

class TsCallSignature extends TsNode with WithTypeParameters<TsCallSignature> {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsCallSignature(
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.callSignature, meta ?? TsNodeMeta());

  factory TsCallSignature.fromJson(Map<String, dynamic> json) {
    return TsCallSignature(
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        typeParameters,
        parameters,
        type,
      ];
}

class TsClassDeclaration extends TsNode with WithTypeParameters<TsClassDeclaration> {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode heritageClauses;
  final ListNode members;

  TsClassDeclaration(
    this.modifiers,
    this.name,
    this.typeParameters,
    this.heritageClauses,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.classDeclaration, meta ?? TsNodeMeta());

  factory TsClassDeclaration.fromJson(Map<String, dynamic> json) {
    return TsClassDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['heritageClauses'])),
      ListNode(_fromJsonArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        typeParameters,
        heritageClauses,
        members,
      ];
}

class TsComputedPropertyName extends TsNode {
  final SingleNode expression;

  TsComputedPropertyName(
    this.expression, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.computedPropertyName, meta ?? TsNodeMeta());

  factory TsComputedPropertyName.fromJson(Map<String, dynamic> json) {
    return TsComputedPropertyName(
      SingleNode(_fromJsonObject(json['expression'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [expression];
}

class TsConditionalType extends TsNode {
  final SingleNode checkType;
  final SingleNode extendsType;
  final SingleNode trueType;
  final SingleNode falseType;

  TsConditionalType(
    this.checkType,
    this.extendsType,
    this.trueType,
    this.falseType, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.conditionalType, meta ?? TsNodeMeta());

  factory TsConditionalType.fromJson(Map<String, dynamic> json) {
    return TsConditionalType(
      SingleNode(_fromJsonObject(json['checkType'])),
      SingleNode(_fromJsonObject(json['extendsType'])),
      SingleNode(_fromJsonObject(json['trueType'])),
      SingleNode(_fromJsonObject(json['falseType'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        checkType,
        extendsType,
        trueType,
        falseType,
      ];
}

class TsConstructorDeclaration extends TsNode with WithTypeParameters<TsConstructorDeclaration> {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructorDeclaration(
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.constructor, meta ?? TsNodeMeta());

  factory TsConstructorDeclaration.fromJson(Map<String, dynamic> json) {
    return TsConstructorDeclaration(
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        typeParameters,
        parameters,
        type,
      ];
}

class TsConstructorType extends TsNode with WithTypeParameters<TsConstructorType> {
  final ListNode modifiers;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructorType(
    this.modifiers,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.constructorType, meta ?? TsNodeMeta());

  factory TsConstructorType.fromJson(Map<String, dynamic> json) {
    return TsConstructorType(
      ListNode(_fromJsonArray(json['modifiers'])),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        typeParameters,
        parameters,
        type,
      ];
}

class TsConstructSignature extends TsNode with WithTypeParameters<TsConstructSignature> {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsConstructSignature(
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.constructSignature, meta ?? TsNodeMeta());

  factory TsConstructSignature.fromJson(Map<String, dynamic> json) {
    return TsConstructSignature(
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        typeParameters,
        parameters,
        type,
      ];
}

class TsDeclareKeyword extends TsNode {
  TsDeclareKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.declareKeyword, meta ?? TsNodeMeta());
}

class TsEnumDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final ListNode members;

  TsEnumDeclaration(
    this.modifiers,
    this.name,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.enumDeclaration, meta ?? TsNodeMeta());

  factory TsEnumDeclaration.fromJson(Map<String, dynamic> json) {
    return TsEnumDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name'])),
      ListNode(_fromJsonArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        members,
      ];
}

class TsEnumMember extends TsNode {
  final SingleNode name;
  final NullableNode initializer;

  TsEnumMember(
    this.name,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.enumMember, meta ?? TsNodeMeta());

  factory TsEnumMember.fromJson(Map<String, dynamic> json) {
    return TsEnumMember(
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        initializer,
      ];
}

class TsExportKeyword extends TsNode {
  TsExportKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.exportKeyword, meta ?? TsNodeMeta());
}

class TsExclamationToken extends TsNode {
  TsExclamationToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.exclamationToken, meta ?? TsNodeMeta());
}

class TsExpressionWithTypeArguments extends TsNode with WithTypeArguments<TsExpressionWithTypeArguments> {
  final SingleNode expression;
  @override
  final ListNode typeArguments;

  TsExpressionWithTypeArguments(
    this.expression,
    this.typeArguments, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.expressionWithTypeArguments, meta ?? TsNodeMeta());

  factory TsExpressionWithTypeArguments.fromJson(Map<String, dynamic> json) {
    return TsExpressionWithTypeArguments(
      SingleNode(_fromJsonObject(json['expression'])),
      ListNode(_fromJsonArray(json['typeArguments'])),
    );
  }

  @override
  String? get nodeName => expression.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        expression,
        typeArguments,
      ];
}

class TsExtendsKeyword extends TsNode {
  TsExtendsKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.extendsKeyword, meta ?? TsNodeMeta());
}

class TsFalseKeyword extends TsNode {
  TsFalseKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.falseKeyword, meta ?? TsNodeMeta());
}

class TsFunctionDeclaration extends TsNode with WithTypeParameters<TsFunctionDeclaration> {
  final ListNode modifiers;
  final NullableNode asteriskToken;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsFunctionDeclaration(
    this.modifiers,
    this.asteriskToken,
    this.name,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.functionDeclaration, meta ?? TsNodeMeta());

  factory TsFunctionDeclaration.fromJson(Map<String, dynamic> json) {
    return TsFunctionDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      NullableNode(_fromNullableJsonObject(json['asteriskToken'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        asteriskToken,
        name,
        typeParameters,
        parameters,
        type,
      ];
}

class TsFunctionType extends TsNode with WithTypeParameters<TsFunctionType> {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsFunctionType(
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.functionType, meta ?? TsNodeMeta());

  factory TsFunctionType.fromJson(Map<String, dynamic> json) {
    return TsFunctionType(
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        typeParameters,
        parameters,
        type,
      ];
}

class TsGetAccessor extends TsNode with WithTypeParameters<TsGetAccessor> {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsGetAccessor(
    this.modifiers,
    this.name,
    this.typeParameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.getAccessor, meta ?? TsNodeMeta());

  factory TsGetAccessor.fromJson(Map<String, dynamic> json) {
    return TsGetAccessor(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        typeParameters,
        type,
      ];
}

class TsHeritageClause extends TsNode {
  final SingleNode token;
  final ListNode types;

  TsHeritageClause(
    this.token,
    this.types, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.heritageClause, meta ?? TsNodeMeta());

  factory TsHeritageClause.fromJson(Map<String, dynamic> json) {
    return TsHeritageClause(
      SingleNode(_fromJsonObject(json['token'])),
      ListNode(_fromJsonArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        token,
        types,
      ];
}

class TsIdentifier extends TsNode {
  final String text;

  TsIdentifier(
    this.text, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.identifier, meta ?? TsNodeMeta());

  factory TsIdentifier.fromJson(Map<String, dynamic> json) {
    return TsIdentifier(
      json['text'] as String,
    );
  }

  @override
  String? get nodeName => text;
}

class TsImportAttribute extends TsNode {
  final SingleNode name;
  final SingleNode value;

  TsImportAttribute(
    this.name,
    this.value, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importAttribute, meta ?? TsNodeMeta());

  factory TsImportAttribute.fromJson(Map<String, dynamic> json) {
    return TsImportAttribute(
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      SingleNode(_fromJsonObject(json['value'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        value,
      ];
}

class TsImportAttributes extends TsNode {
  final ListNode elements;

  TsImportAttributes(
    this.elements, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importAttributes, meta ?? TsNodeMeta());

  factory TsImportAttributes.fromJson(Map<String, dynamic> json) {
    return TsImportAttributes(
      ListNode(_fromJsonArray(json['elements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];
}

class TsImportClause extends TsNode {
  final bool isTypeOnly;
  final NullableNode name;
  final NullableNode namedBindings;

  TsImportClause(
    this.isTypeOnly,
    this.name,
    this.namedBindings, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importClause, meta ?? TsNodeMeta());

  factory TsImportClause.fromJson(Map<String, dynamic> json) {
    return TsImportClause(
      json['isTypeOnly'],
      NullableNode(_fromNullableJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['namedBindings'])),
    );
  }

  @override
  String? get nodeName => name.value?.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        namedBindings,
      ];
}

class TsImportDeclaration extends TsNode {
  final ListNode modifiers;
  final NullableNode importClause;
  final SingleNode moduleSpecifier;
  final NullableNode importAttributes;

  TsImportDeclaration(
    this.modifiers,
    this.importClause,
    this.moduleSpecifier,
    this.importAttributes, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importDeclaration, meta ?? TsNodeMeta());

  factory TsImportDeclaration.fromJson(Map<String, dynamic> json) {
    return TsImportDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      NullableNode(_fromNullableJsonObject(json['importClause'])),
      SingleNode(_fromJsonObject(json['moduleSpecifier'])),
      NullableNode(_fromNullableJsonObject(json['importAttributes'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        importClause,
        moduleSpecifier,
        importAttributes,
      ];
}

class TsImportSpecifier extends TsNode {
  final bool isTypeOnly;
  final SingleNode name;
  final NullableNode propertyName;

  TsImportSpecifier(
    this.isTypeOnly,
    this.name,
    this.propertyName, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importSpecifier, meta ?? TsNodeMeta());

  factory TsImportSpecifier.fromJson(Map<String, dynamic> json) {
    return TsImportSpecifier(
      json['isTypeOnly'],
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['propertyName'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        propertyName,
      ];
}

class TsImportType extends TsNode with WithTypeArguments<TsImportType> {
  final SingleNode argument;
  final NullableNode attributes;
  final NullableNode qualifier;
  @override
  final ListNode typeArguments;

  TsImportType(
    this.argument,
    this.attributes,
    this.qualifier,
    this.typeArguments, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.importType, meta ?? TsNodeMeta());

  factory TsImportType.fromJson(Map<String, dynamic> json) {
    return TsImportType(
      SingleNode(_fromJsonObject(json['argument'])),
      NullableNode(_fromNullableJsonObject(json['attributes'])),
      NullableNode(_fromNullableJsonObject(json['qualifier'])),
      ListNode(_fromJsonArray(json['typeArguments'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        argument,
        attributes,
        qualifier,
        typeArguments,
      ];
}

class TsImplementsKeyword extends TsNode {
  TsImplementsKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.implementsKeyword, meta ?? TsNodeMeta());
}

class TsIndexedAccessType extends TsNode {
  final SingleNode objectType;
  final SingleNode indexType;

  TsIndexedAccessType(
    this.objectType,
    this.indexType, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.indexedAccessType, meta ?? TsNodeMeta());

  factory TsIndexedAccessType.fromJson(Map<String, dynamic> json) {
    return TsIndexedAccessType(
      SingleNode(_fromJsonObject(json['objectType'])),
      SingleNode(_fromJsonObject(json['indexType'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        objectType,
        indexType,
      ];
}

class TsIndexSignature extends TsNode {
  final ListNode modifiers;
  final ListNode parameters;
  final NullableNode type;

  TsIndexSignature(
    this.modifiers,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.indexSignature, meta ?? TsNodeMeta());

  factory TsIndexSignature.fromJson(Map<String, dynamic> json) {
    return TsIndexSignature(
      ListNode(_fromJsonArray(json['modifiers'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        parameters,
        type,
      ];
}

class TsInferType extends TsNode {
  final SingleNode typeParameter;

  TsInferType(
    this.typeParameter, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.inferType, meta ?? TsNodeMeta());

  factory TsInferType.fromJson(Map<String, dynamic> json) {
    return TsInferType(
      SingleNode(_fromJsonObject(json['typeParameter'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [typeParameter];
}

class TsInterfaceDeclaration extends TsNode with WithTypeParameters<TsInterfaceDeclaration> {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode heritageClauses;
  final ListNode members;

  TsInterfaceDeclaration(
    this.modifiers,
    this.name,
    this.typeParameters,
    this.heritageClauses,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.interfaceDeclaration, meta ?? TsNodeMeta());

  factory TsInterfaceDeclaration.fromJson(Map<String, dynamic> json) {
    return TsInterfaceDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['heritageClauses'])),
      ListNode(_fromJsonArray(json['members'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        typeParameters,
        heritageClauses,
        members,
      ];
}

class TsIntersectionType extends TsNode {
  final ListNode types;

  TsIntersectionType(
    this.types, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.intersectionType, meta ?? TsNodeMeta());

  factory TsIntersectionType.fromJson(Map<String, dynamic> json) {
    return TsIntersectionType(
      ListNode(_fromJsonArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];
}

class TsKeyOfKeyword extends TsNode {
  TsKeyOfKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.keyOfKeyword, meta ?? TsNodeMeta());

  @override
  String toCode() => 'keyof';
}

class TsLiteralType extends TsNode {
  final SingleNode literal;

  TsLiteralType(
    this.literal, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.literalType, meta ?? TsNodeMeta());

  factory TsLiteralType.fromJson(Map<String, dynamic> json) {
    return TsLiteralType(
      SingleNode(_fromJsonObject(json['literal']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => literal.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [literal];
}

class TsMappedType extends TsNode {
  final NullableNode readonlyToken;
  final SingleNode typeParameter;
  final NullableNode nameType;
  final NullableNode questionToken;
  final NullableNode type;
  final ListNode members;

  TsMappedType(
    this.readonlyToken,
    this.typeParameter,
    this.nameType,
    this.questionToken,
    this.type,
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.mappedType, meta ?? TsNodeMeta());

  factory TsMappedType.fromJson(Map<String, dynamic> json) {
    return TsMappedType(
      NullableNode(_fromNullableJsonObject(json['readonlyToken'])),
      SingleNode(_fromJsonObject(json['typeParameter']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['nameType'])),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      ListNode(_fromJsonArray(json['members'])),
    );
  }

  @override
  String? get nodeName => nameType.value?.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        readonlyToken,
        typeParameter,
        nameType,
        questionToken,
        type,
        members,
      ];
}

class TsMethodDeclaration extends TsNode with WithTypeParameters<TsMethodDeclaration> {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode asteriskToken;
  final NullableNode questionToken;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsMethodDeclaration(
    this.modifiers,
    this.name,
    this.asteriskToken,
    this.questionToken,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.methodDeclaration, meta ?? TsNodeMeta());

  factory TsMethodDeclaration.fromJson(Map<String, dynamic> json) {
    return TsMethodDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['asteriskToken'])),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
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
}

class TsMethodSignature extends TsNode with WithTypeParameters<TsMethodSignature> {
  final SingleNode name;
  final NullableNode questionToken;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsMethodSignature(
    this.name,
    this.questionToken,
    this.typeParameters,
    this.parameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.methodSignature, meta ?? TsNodeMeta());

  factory TsMethodSignature.fromJson(Map<String, dynamic> json) {
    return TsMethodSignature(
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      ListNode(_fromJsonArray(json['typeParameters'])),
      ListNode(_fromJsonArray(json['parameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        questionToken,
        typeParameters,
        parameters,
        type,
      ];
}

class TsMinusToken extends TsNode {
  TsMinusToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.minusToken, meta ?? TsNodeMeta());
}

class TsMinusMinusToken extends TsNode {
  TsMinusMinusToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.minusMinusToken, meta ?? TsNodeMeta());
}

class TsModuleBlock extends TsNode {
  final ListNode statements;

  TsModuleBlock(
    this.statements, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.moduleBlock, meta ?? TsNodeMeta());

  factory TsModuleBlock.fromJson(Map<String, dynamic> json) {
    return TsModuleBlock(
      ListNode(_fromJsonArray(json['statements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [statements];
}

class TsModuleDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode body;

  TsModuleDeclaration(
    this.modifiers,
    this.name,
    this.body, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.moduleDeclaration, meta ?? TsNodeMeta());

  factory TsModuleDeclaration.fromJson(Map<String, dynamic> json) {
    return TsModuleDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['body'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        body,
      ];
}

class TsNamedImports extends TsNode {
  final ListNode elements;

  TsNamedImports(
    this.elements, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.namedImports, meta ?? TsNodeMeta());

  factory TsNamedImports.fromJson(Map<String, dynamic> json) {
    return TsNamedImports(
      ListNode(_fromJsonArray(json['elements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];
}

class TsNamespaceImport extends TsNode {
  final SingleNode name;

  TsNamespaceImport(
    this.name, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.namespaceImport, meta ?? TsNodeMeta());

  factory TsNamespaceImport.fromJson(Map<String, dynamic> json) {
    return TsNamespaceImport(
      SingleNode(_fromJsonObject(json['name'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [name];
}

class TsNeverKeyword extends TsNode {
  TsNeverKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.neverKeyword, meta ?? TsNodeMeta());
}

class TsNullKeyword extends TsNode {
  TsNullKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.nullKeyword, meta ?? TsNodeMeta());
}

class TsNumberKeyword extends TsNode {
  TsNumberKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.numberKeyword, meta ?? TsNodeMeta());
}

class TsNumericLiteral extends TsNode {
  final String text;

  TsNumericLiteral(
    this.text, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.numericLiteral, meta ?? TsNodeMeta());

  factory TsNumericLiteral.fromJson(Map<String, dynamic> json) {
    return TsNumericLiteral(
      json['text'] as String,
    );
  }

  @override
  String? get nodeName => text;
}

class TsObjectKeyword extends TsNode {
  TsObjectKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.objectKeyword, meta ?? TsNodeMeta());
}

class TsPackage extends TsNode {
  final String name;
  final String version;
  final ListNode sourceFiles;

  TsPackage(
    this.name,
    this.version,
    this.sourceFiles, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.package, meta ?? TsNodeMeta());

  factory TsPackage.fromJson(Map<String, dynamic> json) {
    final result = TsPackage(
      json['name'] as String,
      json['version'] as String,
      ListNode(_fromJsonArray(json['sourceFiles'])),
    );
    result._parent = null;
    result._applyParentToChilds();
    return result;
  }

  @override
  String? get nodeName => name;

  @override
  List<TsNodeWrapper> get nodeWrappers => [sourceFiles];
}

class TsParameter extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode type;
  final NullableNode initializer;

  TsParameter(
    this.modifiers,
    this.name,
    this.questionToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.parameter, meta ?? TsNodeMeta());

  factory TsParameter.fromJson(Map<String, dynamic> json) {
    return TsParameter(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        questionToken,
        type,
        initializer,
      ];
}

class TsParenthesizedType extends TsNode {
  final SingleNode type;

  TsParenthesizedType(
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.parenthesizedType, meta ?? TsNodeMeta());

  factory TsParenthesizedType.fromJson(Map<String, dynamic> json) {
    return TsParenthesizedType(
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];
}

class TsPlusToken extends TsNode {
  TsPlusToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.plusToken, meta ?? TsNodeMeta());
}

class TsPlusPlusToken extends TsNode {
  TsPlusPlusToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.plusPlusToken, meta ?? TsNodeMeta());
}

class TsPrefixUnaryExpression extends TsNode {
  final SingleNode operator;
  final SingleNode operand;

  TsPrefixUnaryExpression(
    this.operator,
    this.operand, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.prefixUnaryExpression, meta ?? TsNodeMeta());

  factory TsPrefixUnaryExpression.fromJson(Map<String, dynamic> json) {
    return TsPrefixUnaryExpression(
      SingleNode(_fromJsonObject(json['operator'])),
      SingleNode(_fromJsonObject(json['operand'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        operator,
        operand,
      ];
}

class TsPrivateKeyword extends TsNode {
  TsPrivateKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.privateKeyword, meta ?? TsNodeMeta());
}

class TsPropertyAccessExpression extends TsNode {
  final SingleNode expression;
  final NullableNode questionDotToken;
  final SingleNode name;

  TsPropertyAccessExpression(
    this.expression,
    this.questionDotToken,
    this.name, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.propertyAccessExpression, meta ?? TsNodeMeta());

  factory TsPropertyAccessExpression.fromJson(Map<String, dynamic> json) {
    return TsPropertyAccessExpression(
      SingleNode(_fromJsonObject(json['expression'])),
      NullableNode(_fromNullableJsonObject(json['questionDotToken'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        expression,
        questionDotToken,
        name,
      ];
}

class TsPropertyDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode exclamationToken;
  final NullableNode type;
  final NullableNode initializer;

  TsPropertyDeclaration(
    this.modifiers,
    this.name,
    this.questionToken,
    this.exclamationToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.propertyDeclaration, meta ?? TsNodeMeta());

  factory TsPropertyDeclaration.fromJson(Map<String, dynamic> json) {
    return TsPropertyDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
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
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        questionToken,
        exclamationToken,
        type,
        initializer,
      ];
}

class TsPropertySignature extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode questionToken;
  final NullableNode type;
  final NullableNode initializer;

  TsPropertySignature(
    this.modifiers,
    this.name,
    this.questionToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.propertySignature, meta ?? TsNodeMeta());

  factory TsPropertySignature.fromJson(Map<String, dynamic> json) {
    return TsPropertySignature(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['questionToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        questionToken,
        type,
        initializer,
      ];
}

class TsProtectedKeyword extends TsNode {
  TsProtectedKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.protectedKeyword, meta ?? TsNodeMeta());
}

class TsQualifiedName extends TsNode {
  final SingleNode left;
  final SingleNode right;

  TsQualifiedName(
    this.left,
    this.right, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.qualifiedName, meta ?? TsNodeMeta());

  factory TsQualifiedName.fromJson(Map<String, dynamic> json) {
    return TsQualifiedName(
      SingleNode(_fromJsonObject(json['left']), affectsParent: true),
      SingleNode(_fromJsonObject(json['right']), affectsParent: true),
    );
  }

  @override
  String? get nodeName => '${left.value.nodeName}.${right.value.nodeName}';

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        left,
        right,
      ];
}

class TsQuestionToken extends TsNode {
  TsQuestionToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.questionToken, meta ?? TsNodeMeta());
}

class TsReadonlyKeyword extends TsNode {
  TsReadonlyKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.readonlyKeyword, meta ?? TsNodeMeta());
}

class TsRestType extends TsNode {
  final SingleNode type;

  TsRestType(
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.restType, meta ?? TsNodeMeta());

  factory TsRestType.fromJson(Map<String, dynamic> json) {
    return TsRestType(
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];
}

class TsSetAccessor extends TsNode with WithTypeParameters<TsSetAccessor> {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsSetAccessor(
    this.modifiers,
    this.name,
    this.typeParameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.setAccessor, meta ?? TsNodeMeta());

  factory TsSetAccessor.fromJson(Map<String, dynamic> json) {
    return TsSetAccessor(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        typeParameters,
        type,
      ];
}

class TsSourceFile extends TsNode {
  final String path;
  final String baseName;
  final ListNode statements;

  TsSourceFile(
    this.path,
    this.baseName,
    this.statements, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.sourceFile, meta ?? TsNodeMeta());

  factory TsSourceFile.fromJson(Map<String, dynamic> json) {
    return TsSourceFile(
      json['path'],
      json['baseName'],
      ListNode(_fromJsonArray(json['statements'])),
    );
  }

  @override
  String? get nodeName => '$path$baseName';

  @override
  List<TsNodeWrapper> get nodeWrappers => [statements];
}

class TsStaticKeyword extends TsNode {
  TsStaticKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.staticKeyword, meta ?? TsNodeMeta());
}

class TsStringKeyword extends TsNode {
  TsStringKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.stringKeyword, meta ?? TsNodeMeta());
}

class TsStringLiteral extends TsNode {
  final String text;

  TsStringLiteral(
    this.text, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.stringLiteral, meta ?? TsNodeMeta());

  factory TsStringLiteral.fromJson(Map<String, dynamic> json) {
    return TsStringLiteral(
      json['text'] as String,
    );
  }

  @override
  String? get nodeName => text;
}

class TsSymbolKeyword extends TsNode {
  TsSymbolKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.symbolKeyword, meta ?? TsNodeMeta());
}

class TsTildeToken extends TsNode {
  TsTildeToken({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.tildeToken, meta ?? TsNodeMeta());
}

class TsThisType extends TsNode {
  TsThisType({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.thisType, meta ?? TsNodeMeta());
}

class TsTrueKeyword extends TsNode {
  TsTrueKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.trueKeyword, meta ?? TsNodeMeta());
}

class TsTupleType extends TsNode {
  final ListNode elements;

  TsTupleType(
    this.elements, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.tupleType, meta ?? TsNodeMeta());

  factory TsTupleType.fromJson(Map<String, dynamic> json) {
    return TsTupleType(
      ListNode(_fromJsonArray(json['elements'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elements];
}

class TsTypeAliasDeclaration extends TsNode with WithTypeParameters<TsTypeAliasDeclaration> {
  final ListNode modifiers;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final NullableNode type;

  TsTypeAliasDeclaration(
    this.modifiers,
    this.name,
    this.typeParameters,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeAliasDeclaration, meta ?? TsNodeMeta());

  factory TsTypeAliasDeclaration.fromJson(Map<String, dynamic> json) {
    return TsTypeAliasDeclaration(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeParameters'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        typeParameters,
        type,
      ];
}

class TsTypeLiteral extends TsNode {
  final ListNode members;

  TsTypeLiteral(
    this.members, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeLiteral, meta ?? TsNodeMeta());

  factory TsTypeLiteral.fromJson(Map<String, dynamic> json) {
    return TsTypeLiteral(
      ListNode(_fromJsonArray(json['members'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [members];
}

class TsTypeOperator extends TsNode {
  final SingleNode operator;
  final SingleNode type;

  TsTypeOperator(
    this.operator,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeOperator, meta ?? TsNodeMeta());

  factory TsTypeOperator.fromJson(Map<String, dynamic> json) {
    return TsTypeOperator(
      SingleNode(_fromJsonObject(json['operator'])),
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        operator,
        type,
      ];

  @override
  String toCode() => '${operator.value.toCode()} ${type.value.toCode()}';
}

class TsTypeParameter extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode constraint;
  final NullableNode defaultType;

  TsTypeParameter(
    this.modifiers,
    this.name,
    this.constraint,
    this.defaultType, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeParameter, meta ?? TsNodeMeta());

  factory TsTypeParameter.fromJson(Map<String, dynamic> json) {
    return TsTypeParameter(
      ListNode(_fromJsonArray(json['modifiers'])),
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
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        name,
        constraint,
        defaultType,
      ];
}

class TsTypePredicate extends TsNode {
  final NullableNode assertModifier;
  final SingleNode parameterName;
  final NullableNode type;

  TsTypePredicate(
    this.assertModifier,
    this.parameterName,
    this.type, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typePredicate, meta ?? TsNodeMeta());

  factory TsTypePredicate.fromJson(Map<String, dynamic> json) {
    return TsTypePredicate(
      NullableNode(_fromNullableJsonObject(json['assertModifier'])),
      SingleNode(_fromJsonObject(json['parameterName'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        assertModifier,
        parameterName,
        type,
      ];
}

class TsTypeQuery extends TsNode {
  final SingleNode exprName;
  final ListNode typeArguments;

  TsTypeQuery(
    this.exprName,
    this.typeArguments, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeQuery, meta ?? TsNodeMeta());

  factory TsTypeQuery.fromJson(Map<String, dynamic> json) {
    return TsTypeQuery(
      SingleNode(_fromJsonObject(json['exprName'])),
      ListNode(_fromJsonArray(json['typeArguments'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        exprName,
        typeArguments,
      ];
}

class TsTypeReference extends TsNode with WithTypeArguments<TsTypeReference> {
  final SingleNode typeName;
  @override
  final ListNode typeArguments;

  TsTypeReference(
    this.typeName,
    this.typeArguments, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.typeReference, meta ?? TsNodeMeta());

  factory TsTypeReference.fromJson(Map<String, dynamic> json) {
    return TsTypeReference(
      SingleNode(_fromJsonObject(json['typeName']), affectsParent: true),
      ListNode(_fromJsonArray(json['typeArguments'])),
    );
  }

  @override
  String? get nodeName => typeName.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        typeName,
        typeArguments,
      ];
}

class TsUndefinedKeyword extends TsNode {
  TsUndefinedKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.undefinedKeyword, meta ?? TsNodeMeta());
}

class TsUnionType extends TsNode {
  final ListNode types;

  TsUnionType(
    this.types, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.unionType, meta ?? TsNodeMeta());

  factory TsUnionType.fromJson(Map<String, dynamic> json) {
    return TsUnionType(
      ListNode(_fromJsonArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];
}

class TsUniqueKeyword extends TsNode {
  TsUniqueKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.uniqueKeyword, meta ?? TsNodeMeta());
}

class TsUnknownKeyword extends TsNode {
  TsUnknownKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.unknownKeyword, meta ?? TsNodeMeta());
}

class TsVariableDeclaration extends TsNode {
  final SingleNode name;
  final NullableNode exclamationToken;
  final NullableNode type;
  final NullableNode initializer;

  TsVariableDeclaration(
    this.name,
    this.exclamationToken,
    this.type,
    this.initializer, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.variableDeclaration, meta ?? TsNodeMeta());

  factory TsVariableDeclaration.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclaration(
      SingleNode(_fromJsonObject(json['name']), affectsParent: true),
      NullableNode(_fromNullableJsonObject(json['exclamationToken'])),
      NullableNode(_fromNullableJsonObject(json['type'])),
      NullableNode(_fromNullableJsonObject(json['initializer'])),
    );
  }

  @override
  String? get nodeName => name.value.nodeName;

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        name,
        exclamationToken,
        type,
        initializer,
      ];
}

class TsVariableDeclarationList extends TsNode {
  final ListNode declarations;

  TsVariableDeclarationList(
    this.declarations, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.variableDeclarationList, meta ?? TsNodeMeta());

  factory TsVariableDeclarationList.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclarationList(
      ListNode(_fromJsonArray(json['declarations'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [declarations];
}

class TsVariableStatement extends TsNode {
  final ListNode modifiers;
  final SingleNode declarationList;

  TsVariableStatement(
    this.modifiers,
    this.declarationList, {
    TsNodeMeta? meta,
  }) : super(TsNodeKind.variableStatement, meta ?? TsNodeMeta());

  factory TsVariableStatement.fromJson(Map<String, dynamic> json) {
    return TsVariableStatement(
      ListNode(_fromJsonArray(json['modifiers'])),
      SingleNode(_fromJsonObject(json['declarationList'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [
        modifiers,
        declarationList,
      ];
}

class TsVoidKeyword extends TsNode {
  TsVoidKeyword({
    TsNodeMeta? meta,
  }) : super(TsNodeKind.voidKeyword, meta ?? TsNodeMeta());
}
