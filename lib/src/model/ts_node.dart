import 'package:binary_tree/binary_tree.dart';

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

typedef TsNodeMapper = TsNode Function(TsNode node);

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

sealed class TsNode implements Comparable<TsNode> {
  static int _idCounter = 0;
  final int id;
  final TsNodeKind kind;
  TsNode? _parent;

  TsNode(this.kind) : id = _idCounter++;

  String? get nodeName => null;

  String? get qualifiedNodeName => nodeName;

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

  Ts$Unsupported(this.unsupportedNodeKind) : super(TsNodeKind.$unsupported);

  @override
  String? get nodeName => unsupportedNodeKind;
}

class Ts$Removed extends TsNode {
  final String removedNode;

  Ts$Removed(TsNode node)
      : removedNode = node.toString(),
        super(TsNodeKind.$removed);

  @override
  String get nodeName => removedNode;
}

class TsAbstractKeyword extends TsNode {
  TsAbstractKeyword() : super(TsNodeKind.abstractKeyword);
}

class TsAnyKeyword extends TsNode {
  TsAnyKeyword() : super(TsNodeKind.anyKeyword);
}

class TsArrayType extends TsNode {
  final SingleNode elementType;

  TsArrayType(this.elementType) : super(TsNodeKind.arrayType);

  factory TsArrayType.fromJson(Map<String, dynamic> json) {
    return TsArrayType(
      SingleNode(_fromJsonObject(json['elementType'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [elementType];
}

class TsBooleanKeyword extends TsNode {
  TsBooleanKeyword() : super(TsNodeKind.booleanKeyword);
}

class TsCallSignature extends TsNode with WithTypeParameters<TsCallSignature> {
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsCallSignature(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.callSignature);

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

  TsClassDeclaration(this.modifiers, this.name, this.typeParameters, this.heritageClauses, this.members)
      : super(TsNodeKind.classDeclaration);

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

  TsComputedPropertyName(this.expression) : super(TsNodeKind.computedPropertyName);

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

  TsConditionalType(this.checkType, this.extendsType, this.trueType, this.falseType)
      : super(TsNodeKind.conditionalType);

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

  TsConstructorDeclaration(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.constructor);

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

  TsConstructorType(this.modifiers, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.constructorType);

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

  TsConstructSignature(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.constructSignature);

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
  TsDeclareKeyword() : super(TsNodeKind.declareKeyword);
}

class TsEnumDeclaration extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final ListNode members;

  TsEnumDeclaration(this.modifiers, this.name, this.members) : super(TsNodeKind.enumDeclaration);

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

  TsEnumMember(this.name, this.initializer) : super(TsNodeKind.enumMember);

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
  TsExportKeyword() : super(TsNodeKind.exportKeyword);
}

class TsExclamationToken extends TsNode {
  TsExclamationToken() : super(TsNodeKind.exclamationToken);
}

class TsExpressionWithTypeArguments extends TsNode with WithTypeArguments<TsExpressionWithTypeArguments> {
  final SingleNode expression;
  @override
  final ListNode typeArguments;

  TsExpressionWithTypeArguments(this.expression, this.typeArguments) : super(TsNodeKind.expressionWithTypeArguments);

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
  TsExtendsKeyword() : super(TsNodeKind.extendsKeyword);
}

class TsFalseKeyword extends TsNode {
  TsFalseKeyword() : super(TsNodeKind.falseKeyword);
}

class TsFunctionDeclaration extends TsNode with WithTypeParameters<TsFunctionDeclaration> {
  final ListNode modifiers;
  final NullableNode asteriskToken;
  final SingleNode name;
  @override
  final ListNode typeParameters;
  final ListNode parameters;
  final NullableNode type;

  TsFunctionDeclaration(this.modifiers, this.asteriskToken, this.name, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.functionDeclaration);

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

  TsFunctionType(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.functionType);

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

  TsGetAccessor(this.modifiers, this.name, this.typeParameters, this.type) : super(TsNodeKind.getAccessor);

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

  TsHeritageClause(this.token, this.types) : super(TsNodeKind.heritageClause);

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

  TsIdentifier(this.text) : super(TsNodeKind.identifier);

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

  TsImportAttribute(this.name, this.value) : super(TsNodeKind.importAttribute);

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

  TsImportAttributes(this.elements) : super(TsNodeKind.importAttributes);

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

  TsImportClause(this.isTypeOnly, this.name, this.namedBindings) : super(TsNodeKind.importClause);

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

  TsImportDeclaration(this.modifiers, this.importClause, this.moduleSpecifier, this.importAttributes)
      : super(TsNodeKind.importDeclaration);

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

  TsImportSpecifier(this.isTypeOnly, this.name, this.propertyName) : super(TsNodeKind.importSpecifier);

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

  TsImportType(this.argument, this.attributes, this.qualifier, this.typeArguments) : super(TsNodeKind.importType);

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
  TsImplementsKeyword() : super(TsNodeKind.implementsKeyword);
}

class TsIndexedAccessType extends TsNode {
  final SingleNode objectType;
  final SingleNode indexType;

  TsIndexedAccessType(this.objectType, this.indexType) : super(TsNodeKind.indexedAccessType);

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

  TsIndexSignature(this.modifiers, this.parameters, this.type) : super(TsNodeKind.indexSignature);

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

  TsInferType(this.typeParameter) : super(TsNodeKind.inferType);

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

  TsInterfaceDeclaration(this.modifiers, this.name, this.typeParameters, this.heritageClauses, this.members)
      : super(TsNodeKind.interfaceDeclaration);

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

  TsIntersectionType(this.types) : super(TsNodeKind.intersectionType);

  factory TsIntersectionType.fromJson(Map<String, dynamic> json) {
    return TsIntersectionType(
      ListNode(_fromJsonArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];
}

class TsKeyOfKeyword extends TsNode {
  TsKeyOfKeyword() : super(TsNodeKind.keyOfKeyword);
}

class TsLiteralType extends TsNode {
  final SingleNode literal;

  TsLiteralType(this.literal) : super(TsNodeKind.literalType);

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

  TsMappedType(this.readonlyToken, this.typeParameter, this.nameType, this.questionToken, this.type, this.members)
      : super(TsNodeKind.mappedType);

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

  TsMethodDeclaration(this.modifiers, this.name, this.asteriskToken, this.questionToken, this.typeParameters,
      this.parameters, this.type)
      : super(TsNodeKind.methodDeclaration);

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

  TsMethodSignature(this.name, this.questionToken, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.methodSignature);

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
  TsMinusToken() : super(TsNodeKind.minusToken);
}

class TsMinusMinusToken extends TsNode {
  TsMinusMinusToken() : super(TsNodeKind.minusMinusToken);
}

class TsModuleBlock extends TsNode {
  final ListNode statements;

  TsModuleBlock(this.statements) : super(TsNodeKind.moduleBlock);

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

  TsModuleDeclaration(this.modifiers, this.name, this.body) : super(TsNodeKind.moduleDeclaration);

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

  TsNamedImports(this.elements) : super(TsNodeKind.namedImports);

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

  TsNamespaceImport(this.name) : super(TsNodeKind.namespaceImport);

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
  TsNeverKeyword() : super(TsNodeKind.neverKeyword);
}

class TsNullKeyword extends TsNode {
  TsNullKeyword() : super(TsNodeKind.nullKeyword);
}

class TsNumberKeyword extends TsNode {
  TsNumberKeyword() : super(TsNodeKind.numberKeyword);
}

class TsNumericLiteral extends TsNode {
  final String text;

  TsNumericLiteral(this.text) : super(TsNodeKind.numericLiteral);

  factory TsNumericLiteral.fromJson(Map<String, dynamic> json) {
    return TsNumericLiteral(
      json['text'] as String,
    );
  }

  @override
  String? get nodeName => text;
}

class TsObjectKeyword extends TsNode {
  TsObjectKeyword() : super(TsNodeKind.objectKeyword);
}

class TsPackage extends TsNode {
  final String name;
  final String version;
  final ListNode sourceFiles;

  TsPackage(this.name, this.version, this.sourceFiles) : super(TsNodeKind.package);

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

  TsParameter(this.modifiers, this.name, this.questionToken, this.type, this.initializer) : super(TsNodeKind.parameter);

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

  TsParenthesizedType(this.type) : super(TsNodeKind.parenthesizedType);

  factory TsParenthesizedType.fromJson(Map<String, dynamic> json) {
    return TsParenthesizedType(
      SingleNode(_fromJsonObject(json['type'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [type];
}

class TsPlusToken extends TsNode {
  TsPlusToken() : super(TsNodeKind.plusToken);
}

class TsPlusPlusToken extends TsNode {
  TsPlusPlusToken() : super(TsNodeKind.plusPlusToken);
}

class TsPrefixUnaryExpression extends TsNode {
  final SingleNode operator;
  final SingleNode operand;

  TsPrefixUnaryExpression(this.operator, this.operand) : super(TsNodeKind.prefixUnaryExpression);

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
  TsPrivateKeyword() : super(TsNodeKind.privateKeyword);
}

class TsPropertyAccessExpression extends TsNode {
  final SingleNode expression;
  final NullableNode questionDotToken;
  final SingleNode name;

  TsPropertyAccessExpression(this.expression, this.questionDotToken, this.name)
      : super(TsNodeKind.propertyAccessExpression);

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
      this.modifiers, this.name, this.questionToken, this.exclamationToken, this.type, this.initializer)
      : super(TsNodeKind.propertyDeclaration);

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

  TsPropertySignature(this.modifiers, this.name, this.questionToken, this.type, this.initializer)
      : super(TsNodeKind.propertySignature);

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
  TsProtectedKeyword() : super(TsNodeKind.protectedKeyword);
}

class TsQualifiedName extends TsNode {
  final SingleNode left;
  final SingleNode right;

  TsQualifiedName(this.left, this.right) : super(TsNodeKind.qualifiedName);

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
  TsQuestionToken() : super(TsNodeKind.questionToken);
}

class TsReadonlyKeyword extends TsNode {
  TsReadonlyKeyword() : super(TsNodeKind.readonlyKeyword);
}

class TsRestType extends TsNode {
  final SingleNode type;

  TsRestType(this.type) : super(TsNodeKind.restType);

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

  TsSetAccessor(this.modifiers, this.name, this.typeParameters, this.type) : super(TsNodeKind.setAccessor);

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

  TsSourceFile(this.path, this.baseName, this.statements) : super(TsNodeKind.sourceFile);

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
  TsStaticKeyword() : super(TsNodeKind.staticKeyword);
}

class TsStringKeyword extends TsNode {
  TsStringKeyword() : super(TsNodeKind.stringKeyword);
}

class TsStringLiteral extends TsNode {
  final String text;

  TsStringLiteral(this.text) : super(TsNodeKind.stringLiteral);

  factory TsStringLiteral.fromJson(Map<String, dynamic> json) {
    return TsStringLiteral(
      json['text'] as String,
    );
  }

  @override
  String? get nodeName => text;
}

class TsSymbolKeyword extends TsNode {
  TsSymbolKeyword() : super(TsNodeKind.symbolKeyword);
}

class TsTildeToken extends TsNode {
  TsTildeToken() : super(TsNodeKind.tildeToken);
}

class TsThisType extends TsNode {
  TsThisType() : super(TsNodeKind.thisType);
}

class TsTrueKeyword extends TsNode {
  TsTrueKeyword() : super(TsNodeKind.trueKeyword);
}

class TsTupleType extends TsNode {
  final ListNode elements;

  TsTupleType(this.elements) : super(TsNodeKind.tupleType);

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

  TsTypeAliasDeclaration(this.modifiers, this.name, this.typeParameters, this.type)
      : super(TsNodeKind.typeAliasDeclaration);

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

  TsTypeLiteral(this.members) : super(TsNodeKind.typeLiteral);

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

  TsTypeOperator(this.operator, this.type) : super(TsNodeKind.typeOperator);

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
}

class TsTypeParameter extends TsNode {
  final ListNode modifiers;
  final SingleNode name;
  final NullableNode constraint;
  final NullableNode defaultType;

  TsTypeParameter(this.modifiers, this.name, this.constraint, this.defaultType) : super(TsNodeKind.typeParameter);

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

  TsTypePredicate(this.assertModifier, this.parameterName, this.type) : super(TsNodeKind.typePredicate);

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

  TsTypeQuery(this.exprName, this.typeArguments) : super(TsNodeKind.typeQuery);

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

  TsTypeReference(this.typeName, this.typeArguments) : super(TsNodeKind.typeReference);

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
  TsUndefinedKeyword() : super(TsNodeKind.undefinedKeyword);
}

class TsUnionType extends TsNode {
  final ListNode types;

  TsUnionType(this.types) : super(TsNodeKind.unionType);

  factory TsUnionType.fromJson(Map<String, dynamic> json) {
    return TsUnionType(
      ListNode(_fromJsonArray(json['types'])),
    );
  }

  @override
  List<TsNodeWrapper> get nodeWrappers => [types];
}

class TsUniqueKeyword extends TsNode {
  TsUniqueKeyword() : super(TsNodeKind.uniqueKeyword);
}

class TsUnknownKeyword extends TsNode {
  TsUnknownKeyword() : super(TsNodeKind.unknownKeyword);
}

class TsVariableDeclaration extends TsNode {
  final SingleNode name;
  final NullableNode exclamationToken;
  final NullableNode type;
  final NullableNode initializer;

  TsVariableDeclaration(this.name, this.exclamationToken, this.type, this.initializer)
      : super(TsNodeKind.variableDeclaration);

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

  TsVariableDeclarationList(this.declarations) : super(TsNodeKind.variableDeclarationList);

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

  TsVariableStatement(this.modifiers, this.declarationList) : super(TsNodeKind.variableStatement);

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
  TsVoidKeyword() : super(TsNodeKind.voidKeyword);
}
