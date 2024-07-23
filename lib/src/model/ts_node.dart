String _toFirstLower(String text) => "${text[0].toLowerCase()}${text.substring(1)}";

T _fromJsonObject<T extends TsNode>(Map<String, dynamic> json) {
  try {
    final kind = TsNodeKind.values.byName(_toFirstLower(json['kind'] as String));
    switch (kind) {
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
      case TsNodeKind.unsupported:
        print('WARNING: Unsupported node kind: ${json['kind']}');
        return TsUnsupportedNode(_toFirstLower(json['kind'].toString())) as T;
    }
  } catch (e) {
    print(e);
    print('WARNING: Unsupported node kind: ${json['kind']}');
    return TsUnsupportedNode(_toFirstLower(json['kind'].toString())) as T;
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

enum TsNodeKind {
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
  unsupported,
  variableDeclaration,
  variableDeclarationList,
  variableStatement,
  voidKeyword,
}

sealed class TsNode {
  final TsNodeKind kind;
  late final TsNode? parent;

  TsNode(this.kind);

  String? get nodeQualifier => null;

  List<TsNode> get children => [];

  String nodeHierarchy({int indent = 2}) {
    final buffer = StringBuffer();
    _nodeHierarchy(buffer, indent);
    return buffer.toString();
  }

  void _nodeHierarchy(StringBuffer buffer, int indent) {
    buffer.writeln('${' ' * indent}${kind.name}: ${nodeQualifier ?? ''}');
    for (final child in children) {
      child._nodeHierarchy(buffer, indent + 2);
    }
  }

  void _applyParentToChilds() {
    for (final child in children) {
      child.parent = this;
      child._applyParentToChilds();
    }
  }
}

class TsAbstractKeyword extends TsNode {
  TsAbstractKeyword() : super(TsNodeKind.abstractKeyword);

  @override
  String toString() {
    return 'TsAbstractKeyword{}';
  }
}

class TsAnyKeyword extends TsNode {
  TsAnyKeyword() : super(TsNodeKind.anyKeyword);

  @override
  String toString() {
    return 'TsAnyKeyword{}';
  }
}

class TsArrayType extends TsNode {
  final TsNode elementType;

  TsArrayType(this.elementType) : super(TsNodeKind.arrayType);

  factory TsArrayType.fromJson(Map<String, dynamic> json) {
    return TsArrayType(
      _fromJsonObject(json['elementType']),
    );
  }

  @override
  List<TsNode> get children => [elementType];

  @override
  String toString() {
    return 'TsArrayType{elementType: $elementType}';
  }
}

class TsBooleanKeyword extends TsNode {
  TsBooleanKeyword() : super(TsNodeKind.booleanKeyword);

  @override
  String toString() {
    return 'TsBooleanKeyword{}';
  }
}

class TsCallSignature extends TsNode {
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsCallSignature(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.callSignature);

  factory TsCallSignature.fromJson(Map<String, dynamic> json) {
    return TsCallSignature(
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsCallSignature{typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsClassDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsIdentifier name;
  final List<TsTypeParameter> typeParameters;
  final List<TsNode> heritageClauses;
  final List<TsNode> members;

  TsClassDeclaration(this.modifiers, this.name, this.typeParameters, this.heritageClauses, this.members)
      : super(TsNodeKind.classDeclaration);

  factory TsClassDeclaration.fromJson(Map<String, dynamic> json) {
    return TsClassDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['heritageClauses']),
      _fromJsonArray(json['members']),
    );
  }

  @override
  String? get nodeQualifier => name.text;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...typeParameters,
        ...heritageClauses,
        ...members,
      ];

  @override
  String toString() {
    return 'TsClassDeclaration{modifiers: $modifiers, name: $name, heritageClauses: $heritageClauses, members: $members}';
  }
}

class TsComputedPropertyName extends TsNode {
  final TsNode expression;

  TsComputedPropertyName(this.expression) : super(TsNodeKind.computedPropertyName);

  factory TsComputedPropertyName.fromJson(Map<String, dynamic> json) {
    return TsComputedPropertyName(
      _fromJsonObject(json['expression']),
    );
  }

  @override
  List<TsNode> get children => [expression];

  @override
  String toString() {
    return 'TsComputedPropertyName{expression: $expression}';
  }
}

class TsConditionalType extends TsNode {
  final TsNode checkType;
  final TsNode extendsType;
  final TsNode trueType;
  final TsNode falseType;

  TsConditionalType(this.checkType, this.extendsType, this.trueType, this.falseType)
      : super(TsNodeKind.conditionalType);

  factory TsConditionalType.fromJson(Map<String, dynamic> json) {
    return TsConditionalType(
      _fromJsonObject(json['checkType']),
      _fromJsonObject(json['extendsType']),
      _fromJsonObject(json['trueType']),
      _fromJsonObject(json['falseType']),
    );
  }

  @override
  List<TsNode> get children => [
        checkType,
        extendsType,
        trueType,
        falseType,
      ];

  @override
  String toString() {
    return 'TsConditionalType{checkType: $checkType, extendsType: $extendsType, trueType: $trueType, falseType: $falseType}';
  }
}

class TsConstructorDeclaration extends TsNode {
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsConstructorDeclaration(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.constructor);

  factory TsConstructorDeclaration.fromJson(Map<String, dynamic> json) {
    return TsConstructorDeclaration(
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsConstructorDeclaration{modifiers: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsConstructorType extends TsNode {
  final List<TsNode> modifiers;
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsConstructorType(this.modifiers, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.constructorType);

  factory TsConstructorType.fromJson(Map<String, dynamic> json) {
    return TsConstructorType(
      _fromJsonArray(json['modifiers']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...modifiers,
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsConstructorType{modifiers: $modifiers, typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsConstructSignature extends TsNode {
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsConstructSignature(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.constructSignature);

  factory TsConstructSignature.fromJson(Map<String, dynamic> json) {
    return TsConstructSignature(
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsConstructSignature{typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsDeclareKeyword extends TsNode {
  TsDeclareKeyword() : super(TsNodeKind.declareKeyword);

  @override
  String toString() {
    return 'TsDeclareKeyword{}';
  }
}

class TsEnumDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsIdentifier name;
  final List<TsNode> members;

  TsEnumDeclaration(this.modifiers, this.name, this.members) : super(TsNodeKind.enumDeclaration);

  factory TsEnumDeclaration.fromJson(Map<String, dynamic> json) {
    return TsEnumDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['members']),
    );
  }

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...members,
      ];

  @override
  String? get nodeQualifier => name.text;

  @override
  String toString() {
    return 'TsEnumDeclaration{modifiers: $modifiers, name: $name, members: $members}';
  }
}

class TsEnumMember extends TsNode {
  final TsIdentifier name;
  final TsNode? initializer;

  TsEnumMember(this.name, this.initializer) : super(TsNodeKind.enumMember);

  factory TsEnumMember.fromJson(Map<String, dynamic> json) {
    return TsEnumMember(
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['initializer']),
    );
  }

  @override
  String? get nodeQualifier => name.text;

  @override
  List<TsNode> get children => [
        name,
        if (initializer != null) initializer!,
      ];

  @override
  String toString() {
    return 'TsEnumMember{name: $name, initializer: $initializer}';
  }
}

class TsExportKeyword extends TsNode {
  TsExportKeyword() : super(TsNodeKind.exportKeyword);

  @override
  String toString() {
    return 'TsExportKeyword{}';
  }
}

class TsExclamationToken extends TsNode {
  TsExclamationToken() : super(TsNodeKind.exclamationToken);

  @override
  String toString() {
    return 'TsExclamationToken{}';
  }
}

class TsExpressionWithTypeArguments extends TsNode {
  final TsNode expression;
  final List<TsNode> typeArguments;

  TsExpressionWithTypeArguments(this.expression, this.typeArguments) : super(TsNodeKind.expressionWithTypeArguments);

  factory TsExpressionWithTypeArguments.fromJson(Map<String, dynamic> json) {
    return TsExpressionWithTypeArguments(
      _fromJsonObject(json['expression']),
      _fromJsonArray(json['typeArguments']),
    );
  }

  @override
  List<TsNode> get children => [
        expression,
        ...typeArguments,
      ];

  @override
  String toString() {
    return 'TsExpressionWithTypeArguments{expression: $expression, typeArguments: $typeArguments}';
  }
}

class TsExtendsKeyword extends TsNode {
  TsExtendsKeyword() : super(TsNodeKind.extendsKeyword);

  @override
  String toString() {
    return 'TsExtendsKeyword{}';
  }
}

class TsFalseKeyword extends TsNode {
  TsFalseKeyword() : super(TsNodeKind.falseKeyword);

  @override
  String toString() {
    return 'TsFalseKeyword{}';
  }
}

class TsFunctionDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsNode? asteriskToken;
  final TsIdentifier name;
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsFunctionDeclaration(this.modifiers, this.asteriskToken, this.name, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.functionDeclaration);

  factory TsFunctionDeclaration.fromJson(Map<String, dynamic> json) {
    return TsFunctionDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromNullableJsonObject(json['asteriskToken']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.text;

  @override
  List<TsNode> get children => [
        ...modifiers,
        if (asteriskToken != null) asteriskToken!,
        name,
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsFunctionDeclaration{modifiers: $modifiers, asteriskToken: $asteriskToken, name: $name, typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsFunctionType extends TsNode {
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsFunctionType(this.typeParameters, this.parameters, this.type) : super(TsNodeKind.functionType);

  factory TsFunctionType.fromJson(Map<String, dynamic> json) {
    return TsFunctionType(
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsFunctionType{typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsGetAccessor extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final List<TsNode> typeParameters;
  final TsNode? type;

  TsGetAccessor(this.modifiers, this.name, this.typeParameters, this.type) : super(TsNodeKind.getAccessor);

  factory TsGetAccessor.fromJson(Map<String, dynamic> json) {
    return TsGetAccessor(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...typeParameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsGetAccessor{modifiers: $modifiers, name: $name, typeParameters: $typeParameters, type: $type}';
  }
}

class TsHeritageClause extends TsNode {
  final TsNode token;
  final List<TsNode> types;

  TsHeritageClause(this.token, this.types) : super(TsNodeKind.heritageClause);

  factory TsHeritageClause.fromJson(Map<String, dynamic> json) {
    return TsHeritageClause(
      _fromJsonObject(json['token']),
      _fromJsonArray(json['types']),
    );
  }

  @override
  List<TsNode> get children => [
        token,
        ...types,
      ];

  @override
  String toString() {
    return 'TsHeritageClause{token: $token, types: $types}';
  }
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
  String? get nodeQualifier => text;

  @override
  String toString() {
    return 'TsIdentifier{text: $text}';
  }
}

class TsImportAttribute extends TsNode {
  final TsNode name;
  final TsNode value;

  TsImportAttribute(this.name, this.value) : super(TsNodeKind.importAttribute);

  factory TsImportAttribute.fromJson(Map<String, dynamic> json) {
    return TsImportAttribute(
      _fromJsonObject(json['name']),
      _fromJsonObject(json['value']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        name,
        value,
      ];

  @override
  String toString() {
    return 'TsImportAttribute{name: $name, value: $value}';
  }
}

class TsImportAttributes extends TsNode {
  final List<TsNode> elements;

  TsImportAttributes(this.elements) : super(TsNodeKind.importAttributes);

  factory TsImportAttributes.fromJson(Map<String, dynamic> json) {
    return TsImportAttributes(
      _fromJsonArray(json['elements']),
    );
  }

  @override
  List<TsNode> get children => elements;

  @override
  String toString() {
    return 'TsImportAttributes{elements: $elements}';
  }
}

class TsImportClause extends TsNode {
  final bool isTypeOnly;
  final TsNode? name;
  final TsNode? namedBindings;

  TsImportClause(this.isTypeOnly, this.name, this.namedBindings) : super(TsNodeKind.importClause);

  factory TsImportClause.fromJson(Map<String, dynamic> json) {
    return TsImportClause(
      json['isTypeOnly'],
      _fromNullableJsonObject(json['name']),
      _fromNullableJsonObject(json['namedBindings']),
    );
  }

  @override
  String? get nodeQualifier => name?.nodeQualifier;

  @override
  List<TsNode> get children => [
        if (name != null) name!,
        if (namedBindings != null) namedBindings!,
      ];

  @override
  String toString() {
    return 'TsImportClause{isTypeOnly: $isTypeOnly, name: $name, namedBindings: $namedBindings}';
  }
}

class TsImportDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsNode? importClause;
  final TsNode moduleSpecifier;
  final TsNode? importAttributes;

  TsImportDeclaration(this.modifiers, this.importClause, this.moduleSpecifier, this.importAttributes)
      : super(TsNodeKind.importDeclaration);

  factory TsImportDeclaration.fromJson(Map<String, dynamic> json) {
    return TsImportDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromNullableJsonObject(json['importClause']),
      _fromJsonObject(json['moduleSpecifier']),
      _fromNullableJsonObject(json['importAttributes']),
    );
  }

  @override
  List<TsNode> get children => [
        ...modifiers,
        if (importClause != null) importClause!,
        moduleSpecifier,
        if (importAttributes != null) importAttributes!,
      ];

  @override
  String toString() {
    return 'TsImportDeclaration{modifiers: $modifiers, importClause: $importClause, moduleSpecifier: $moduleSpecifier, importAttributes: $importAttributes}';
  }
}

class TsImportSpecifier extends TsNode {
  final bool isTypeOnly;
  final TsNode name;
  final TsNode? propertyName;

  TsImportSpecifier(this.isTypeOnly, this.name, this.propertyName) : super(TsNodeKind.importSpecifier);

  factory TsImportSpecifier.fromJson(Map<String, dynamic> json) {
    return TsImportSpecifier(
      json['isTypeOnly'],
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['propertyName']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        name,
        if (propertyName != null) propertyName!,
      ];

  @override
  String toString() {
    return 'TsImportSpecifier{isTypeOnly: $isTypeOnly, name: $name, propertyName: $propertyName}';
  }
}

class TsImportType extends TsNode {
  final TsNode argument;
  final TsNode? attributes;
  final TsNode? qualifier;
  final List<TsNode> typeArguments;

  TsImportType(this.argument, this.attributes, this.qualifier, this.typeArguments) : super(TsNodeKind.importType);

  factory TsImportType.fromJson(Map<String, dynamic> json) {
    return TsImportType(
      _fromJsonObject(json['argument']),
      _fromNullableJsonObject(json['attributes']),
      _fromNullableJsonObject(json['qualifier']),
      _fromJsonArray(json['typeArguments']),
    );
  }

  @override
  List<TsNode> get children => [
        argument,
        if (attributes != null) attributes!,
        if (qualifier != null) qualifier!,
        ...typeArguments,
      ];

  @override
  String toString() {
    return 'TsImportType{argument: $argument, attributes: $attributes, qualifier: $qualifier, typeArguments: $typeArguments}';
  }
}

class TsImplementsKeyword extends TsNode {
  TsImplementsKeyword() : super(TsNodeKind.implementsKeyword);

  @override
  String toString() {
    return 'TsImplementsKeyword{}';
  }
}

class TsIndexedAccessType extends TsNode {
  final TsNode objectType;
  final TsNode indexType;

  TsIndexedAccessType(this.objectType, this.indexType) : super(TsNodeKind.indexedAccessType);

  factory TsIndexedAccessType.fromJson(Map<String, dynamic> json) {
    return TsIndexedAccessType(
      _fromJsonObject(json['objectType']),
      _fromJsonObject(json['indexType']),
    );
  }

  @override
  String toString() {
    return 'TsIndexedAccessType{objectType: $objectType, indexType: $indexType}';
  }
}

class TsIndexSignature extends TsNode {
  final List<TsNode> modifiers;
  final List<TsNode> parameters;
  final TsNode? type;

  TsIndexSignature(this.modifiers, this.parameters, this.type) : super(TsNodeKind.indexSignature);

  factory TsIndexSignature.fromJson(Map<String, dynamic> json) {
    return TsIndexSignature(
      _fromJsonArray(json['modifiers']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        ...modifiers,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsIndexSignature{modifiers: $modifiers, parameters: $parameters, type: $type}';
  }
}

class TsInferType extends TsNode {
  final TsNode typeParameter;

  TsInferType(this.typeParameter) : super(TsNodeKind.inferType);

  factory TsInferType.fromJson(Map<String, dynamic> json) {
    return TsInferType(
      _fromJsonObject(json['typeParameter']),
    );
  }

  @override
  List<TsNode> get children => [typeParameter];

  @override
  String toString() {
    return 'TsInferType{typeParameter: $typeParameter}';
  }
}

class TsInterfaceDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsIdentifier name;
  final List<TsTypeParameter> typeParameters;
  final List<TsHeritageClause> heritageClauses;
  final List<TsNode> members;

  TsInterfaceDeclaration(this.modifiers, this.name, this.typeParameters, this.heritageClauses, this.members)
      : super(TsNodeKind.interfaceDeclaration);

  factory TsInterfaceDeclaration.fromJson(Map<String, dynamic> json) {
    return TsInterfaceDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['heritageClauses']),
      _fromJsonArray(json['members']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...typeParameters,
        ...heritageClauses,
        ...members,
      ];

  @override
  String toString() {
    return 'TsInterfaceDeclaration{modifiers: $modifiers, name: $name, typeParameters: $typeParameters, heritageClauses: $heritageClauses, members: $members}';
  }
}

class TsIntersectionType extends TsNode {
  final List<TsNode> types;

  TsIntersectionType(this.types) : super(TsNodeKind.intersectionType);

  factory TsIntersectionType.fromJson(Map<String, dynamic> json) {
    return TsIntersectionType(
      _fromJsonArray(json['types']),
    );
  }

  @override
  List<TsNode> get children => types;

  @override
  String toString() {
    return 'TsIntersectionType{types: $types}';
  }
}

class TsKeyOfKeyword extends TsNode {
  TsKeyOfKeyword() : super(TsNodeKind.keyOfKeyword);

  @override
  String toString() {
    return 'TsKeyOfKeyword{}';
  }
}

class TsLiteralType extends TsNode {
  final TsNode literal;

  TsLiteralType(this.literal) : super(TsNodeKind.literalType);

  factory TsLiteralType.fromJson(Map<String, dynamic> json) {
    return TsLiteralType(
      _fromJsonObject(json['literal']),
    );
  }

  @override
  List<TsNode> get children => [literal];

  @override
  String toString() {
    return 'TsLiteralType{literal: $literal}';
  }
}

class TsMappedType extends TsNode {
  final TsNode? readonlyToken;
  final TsNode typeParameter;
  final TsNode? nameType;
  final TsNode? questionToken;
  final TsNode? type;
  final List<TsNode> members;

  TsMappedType(this.readonlyToken, this.typeParameter, this.nameType, this.questionToken, this.type, this.members)
      : super(TsNodeKind.mappedType);

  factory TsMappedType.fromJson(Map<String, dynamic> json) {
    return TsMappedType(
      _fromNullableJsonObject(json['readonlyToken']),
      _fromJsonObject(json['typeParameter']),
      _fromNullableJsonObject(json['nameType']),
      _fromNullableJsonObject(json['questionToken']),
      _fromNullableJsonObject(json['type']),
      _fromJsonArray(json['members']),
    );
  }

  @override
  String? get nodeQualifier => nameType?.nodeQualifier;

  @override
  List<TsNode> get children => [
        if (readonlyToken != null) readonlyToken!,
        typeParameter,
        if (nameType != null) nameType!,
        if (questionToken != null) questionToken!,
        if (type != null) type!,
        ...members,
      ];

  @override
  String toString() {
    return 'TsMappedType{readonlyToken: $readonlyToken, typeParameter: $typeParameter, nameType: $nameType, questionToken: $questionToken, type: $type, members: $members}';
  }
}

class TsMethodDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final TsNode? asteriskToken;
  final TsNode? questionToken;
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsMethodDeclaration(this.modifiers, this.name, this.asteriskToken, this.questionToken, this.typeParameters,
      this.parameters, this.type)
      : super(TsNodeKind.methodDeclaration);

  factory TsMethodDeclaration.fromJson(Map<String, dynamic> json) {
    return TsMethodDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['asteriskToken']),
      _fromNullableJsonObject(json['questionToken']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (asteriskToken != null) asteriskToken!,
        if (questionToken != null) questionToken!,
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsMethodDeclaration{modifiers: $modifiers, name: $name, asteriskToken: $asteriskToken, questionToken: $questionToken, typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsMethodSignature extends TsNode {
  final TsNode name;
  final TsNode? questionToken;
  final List<TsNode> typeParameters;
  final List<TsNode> parameters;
  final TsNode? type;

  TsMethodSignature(this.name, this.questionToken, this.typeParameters, this.parameters, this.type)
      : super(TsNodeKind.methodSignature);

  factory TsMethodSignature.fromJson(Map<String, dynamic> json) {
    return TsMethodSignature(
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['questionToken']),
      _fromJsonArray(json['typeParameters']),
      _fromJsonArray(json['parameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        name,
        if (questionToken != null) questionToken!,
        ...typeParameters,
        ...parameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsMethodSignature{name: $name, questionToken: $questionToken, typeParameters: $typeParameters, parameters: $parameters, type: $type}';
  }
}

class TsMinusToken extends TsNode {
  TsMinusToken() : super(TsNodeKind.minusToken);

  @override
  String toString() {
    return 'TsMinusToken{}';
  }
}

class TsMinusMinusToken extends TsNode {
  TsMinusMinusToken() : super(TsNodeKind.minusMinusToken);

  @override
  String toString() {
    return 'TsMinus{}';
  }
}

class TsModuleBlock extends TsNode {
  final List<TsNode> statements;

  TsModuleBlock(this.statements) : super(TsNodeKind.moduleBlock);

  factory TsModuleBlock.fromJson(Map<String, dynamic> json) {
    return TsModuleBlock(
      _fromJsonArray(json['statements']),
    );
  }

  @override
  List<TsNode> get children => statements;

  @override
  String toString() {
    return 'TsModuleBlock{statements: $statements}';
  }
}

class TsModuleDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final TsNode? body;

  TsModuleDeclaration(this.modifiers, this.name, this.body) : super(TsNodeKind.moduleDeclaration);

  factory TsModuleDeclaration.fromJson(Map<String, dynamic> json) {
    return TsModuleDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['body']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (body != null) body!,
      ];

  @override
  String toString() {
    return 'TsModuleDeclaration{modifiers: $modifiers, name: $name, body: $body}';
  }
}

class TsNamedImports extends TsNode {
  final List<TsNode> elements;

  TsNamedImports(this.elements) : super(TsNodeKind.namedImports);

  factory TsNamedImports.fromJson(Map<String, dynamic> json) {
    return TsNamedImports(
      _fromJsonArray(json['elements']),
    );
  }

  @override
  List<TsNode> get children => elements;

  @override
  String toString() {
    return 'TsNamedImports{elements: $elements}';
  }
}

class TsNamespaceImport extends TsNode {
  final TsNode name;

  TsNamespaceImport(this.name) : super(TsNodeKind.namespaceImport);

  factory TsNamespaceImport.fromJson(Map<String, dynamic> json) {
    return TsNamespaceImport(
      _fromJsonObject(json['name']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [name];

  @override
  String toString() {
    return 'TsNamespaceImport{name: $name}';
  }
}

class TsNeverKeyword extends TsNode {
  TsNeverKeyword() : super(TsNodeKind.neverKeyword);

  @override
  String toString() {
    return 'TsNeverKeyword{}';
  }
}

class TsNullKeyword extends TsNode {
  TsNullKeyword() : super(TsNodeKind.nullKeyword);

  @override
  String toString() {
    return 'TsNullKeyword{}';
  }
}

class TsNumberKeyword extends TsNode {
  TsNumberKeyword() : super(TsNodeKind.numberKeyword);

  @override
  String toString() {
    return 'TsNumberKeyword{}';
  }
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
  String toString() {
    return 'TsNumericLiteral{text: $text}';
  }
}

class TsObjectKeyword extends TsNode {
  TsObjectKeyword() : super(TsNodeKind.objectKeyword);

  @override
  String toString() {
    return 'TsObjectKeyword{}';
  }
}

class TsPackage extends TsNode {
  final String name;
  final String version;
  final List<TsSourceFile> sourceFiles;

  TsPackage(super.kind, this.name, this.version, this.sourceFiles);

  factory TsPackage.fromJson(Map<String, dynamic> json) {
    final result = TsPackage(
      TsNodeKind.package,
      json['name'] as String,
      json['version'] as String,
      _fromJsonArray(json['sourceFiles']),
    );
    result.parent = null;
    result._applyParentToChilds();
    return result;
  }

  @override
  String? get nodeQualifier => name;

  @override
  List<TsNode> get children => sourceFiles;

  @override
  String toString() {
    return 'TsPackage{name: $name, version: $version, sourceFiles: $sourceFiles}';
  }
}

class TsParameter extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final TsNode? questionToken;
  final TsNode? type;
  final TsNode? initializer;

  TsParameter(this.modifiers, this.name, this.questionToken, this.type, this.initializer) : super(TsNodeKind.parameter);

  factory TsParameter.fromJson(Map<String, dynamic> json) {
    return TsParameter(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['questionToken']),
      _fromNullableJsonObject(json['type']),
      _fromNullableJsonObject(json['initializer']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (questionToken != null) questionToken!,
        if (type != null) type!,
        if (initializer != null) initializer!,
      ];

  @override
  String toString() {
    return 'TsParameter{modifiers: $modifiers, name: $name, questionToken: $questionToken, type: $type, initializer: $initializer}';
  }
}

class TsParenthesizedType extends TsNode {
  final TsNode type;

  TsParenthesizedType(this.type) : super(TsNodeKind.parenthesizedType);

  factory TsParenthesizedType.fromJson(Map<String, dynamic> json) {
    return TsParenthesizedType(
      _fromJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [type];

  @override
  String toString() {
    return 'TsParenthesizedType{type: $type}';
  }
}

class TsPlusToken extends TsNode {
  TsPlusToken() : super(TsNodeKind.plusToken);

  @override
  String toString() {
    return 'TsPlus{}';
  }
}

class TsPlusPlusToken extends TsNode {
  TsPlusPlusToken() : super(TsNodeKind.plusPlusToken);

  @override
  String toString() {
    return 'TsPlusPlus{}';
  }
}

class TsPrefixUnaryExpression extends TsNode {
  final TsNode operator;
  final TsNode operand;

  TsPrefixUnaryExpression(this.operator, this.operand) : super(TsNodeKind.prefixUnaryExpression);

  factory TsPrefixUnaryExpression.fromJson(Map<String, dynamic> json) {
    return TsPrefixUnaryExpression(
      _fromJsonObject(json['operator']),
      _fromJsonObject(json['operand']),
    );
  }

  @override
  List<TsNode> get children => [
        operator,
        operand,
      ];

  @override
  String toString() {
    return 'TsPrefixUnaryExpression{operator: $operator, operand: $operand}';
  }
}

class TsPrivateKeyword extends TsNode {
  TsPrivateKeyword() : super(TsNodeKind.privateKeyword);

  @override
  String toString() {
    return 'TsPrivate{}';
  }
}

class TsPropertyAccessExpression extends TsNode {
  final TsNode expression;
  final TsNode? questionDotToken;
  final TsNode name;

  TsPropertyAccessExpression(this.expression, this.questionDotToken, this.name)
      : super(TsNodeKind.propertyAccessExpression);

  factory TsPropertyAccessExpression.fromJson(Map<String, dynamic> json) {
    return TsPropertyAccessExpression(
      _fromJsonObject(json['expression']),
      _fromNullableJsonObject(json['questionDotToken']),
      _fromJsonObject(json['name']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        expression,
        if (questionDotToken != null) questionDotToken!,
        name,
      ];

  @override
  String toString() {
    return 'TsPropertyAccessExpression{expression: $expression, questionDotToken: $questionDotToken, name: $name}';
  }
}

class TsPropertyDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final TsNode? questionToken;
  final TsNode? exclamationToken;
  final TsNode? type;
  final TsNode? initializer;

  TsPropertyDeclaration(
      this.modifiers, this.name, this.questionToken, this.exclamationToken, this.type, this.initializer)
      : super(TsNodeKind.propertyDeclaration);

  factory TsPropertyDeclaration.fromJson(Map<String, dynamic> json) {
    return TsPropertyDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['questionToken']),
      _fromNullableJsonObject(json['exclamationToken']),
      _fromNullableJsonObject(json['type']),
      _fromNullableJsonObject(json['initializer']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (questionToken != null) questionToken!,
        if (exclamationToken != null) exclamationToken!,
        if (type != null) type!,
        if (initializer != null) initializer!,
      ];

  @override
  String toString() {
    return 'TsPropertyDeclaration{modifiers: $modifiers, name: $name, questionToken: $questionToken, type: $type, initializer: $initializer}';
  }
}

class TsPropertySignature extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final TsNode? questionToken;
  final TsNode? type;
  final TsNode? initializer;

  TsPropertySignature(this.modifiers, this.name, this.questionToken, this.type, this.initializer)
      : super(TsNodeKind.propertySignature);

  factory TsPropertySignature.fromJson(Map<String, dynamic> json) {
    return TsPropertySignature(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['questionToken']),
      _fromNullableJsonObject(json['type']),
      _fromNullableJsonObject(json['initializer']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (questionToken != null) questionToken!,
        if (type != null) type!,
        if (initializer != null) initializer!,
      ];

  @override
  String toString() {
    return 'TsPropertySignature{modifiers: $modifiers, name: $name, questionToken: $questionToken, type: $type, initializer: $initializer}';
  }
}

class TsProtectedKeyword extends TsNode {
  TsProtectedKeyword() : super(TsNodeKind.protectedKeyword);

  @override
  String toString() {
    return 'TsProtected{}';
  }
}

class TsQualifiedName extends TsNode {
  final TsNode left;
  final TsNode right;

  TsQualifiedName(this.left, this.right) : super(TsNodeKind.qualifiedName);

  factory TsQualifiedName.fromJson(Map<String, dynamic> json) {
    return TsQualifiedName(
      _fromJsonObject(json['left']),
      _fromJsonObject(json['right']),
    );
  }

  @override
  String? get nodeQualifier => '${left.nodeQualifier}.${right.nodeQualifier}';

  @override
  List<TsNode> get children => [
        left,
        right,
      ];

  @override
  String toString() {
    return 'TsQualifiedName{left: $left, right: $right}';
  }
}

class TsQuestionToken extends TsNode {
  TsQuestionToken() : super(TsNodeKind.questionToken);

  @override
  String toString() {
    return 'TsQuestionToken{}';
  }
}

class TsReadonlyKeyword extends TsNode {
  TsReadonlyKeyword() : super(TsNodeKind.readonlyKeyword);

  @override
  String toString() {
    return 'TsReadonlyKeyword{}';
  }
}

class TsRestType extends TsNode {
  final TsNode type;

  TsRestType(this.type) : super(TsNodeKind.restType);

  factory TsRestType.fromJson(Map<String, dynamic> json) {
    return TsRestType(
      _fromJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [type];

  @override
  String toString() {
    return 'TsRestType{type: $type}';
  }
}

class TsSetAccessor extends TsNode {
  final List<TsNode> modifiers;
  final TsNode name;
  final List<TsNode> typeParameters;
  final TsNode? type;

  TsSetAccessor(this.modifiers, this.name, this.typeParameters, this.type) : super(TsNodeKind.setAccessor);

  factory TsSetAccessor.fromJson(Map<String, dynamic> json) {
    return TsSetAccessor(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...typeParameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsSetAccessor{modifiers: $modifiers, name: $name, typeParameters: $typeParameters, type: $type}';
  }
}

class TsSourceFile extends TsNode {
  final String baseName;
  final List<TsNode> statements;

  TsSourceFile(super.kind, this.baseName, this.statements);

  factory TsSourceFile.fromJson(Map<String, dynamic> json) {
    return TsSourceFile(
      TsNodeKind.sourceFile,
      json['baseName'] as String,
      _fromJsonArray(json['statements']),
    );
  }

  @override
  String? get nodeQualifier => baseName;

  @override
  List<TsNode> get children => statements;

  @override
  String toString() {
    return 'TsSourceFile{baseName: $baseName, statements: $statements}';
  }
}

class TsStaticKeyword extends TsNode {
  TsStaticKeyword() : super(TsNodeKind.staticKeyword);

  @override
  String toString() {
    return 'TsStatic{}';
  }
}

class TsStringKeyword extends TsNode {
  TsStringKeyword() : super(TsNodeKind.stringKeyword);

  @override
  String toString() {
    return 'TsString{}';
  }
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
  String? get nodeQualifier => text;

  @override
  String toString() {
    return 'TsStringLiteral{text: $text}';
  }
}

class TsSymbolKeyword extends TsNode {
  TsSymbolKeyword() : super(TsNodeKind.symbolKeyword);

  @override
  String toString() {
    return 'TsSymbolKeyword{}';
  }
}

class TsTildeToken extends TsNode {
  TsTildeToken() : super(TsNodeKind.tildeToken);

  @override
  String toString() {
    return 'TsTilde{}';
  }
}

class TsThisType extends TsNode {
  TsThisType() : super(TsNodeKind.thisType);

  @override
  String toString() {
    return 'TsThisType{}';
  }
}

class TsTrueKeyword extends TsNode {
  TsTrueKeyword() : super(TsNodeKind.trueKeyword);

  @override
  String toString() {
    return 'TsTrueKeyword{}';
  }
}

class TsTupleType extends TsNode {
  final List<TsNode> elements;

  TsTupleType(this.elements) : super(TsNodeKind.tupleType);

  factory TsTupleType.fromJson(Map<String, dynamic> json) {
    return TsTupleType(
      _fromJsonArray(json['elements']),
    );
  }

  @override
  List<TsNode> get children => elements;

  @override
  String toString() {
    return 'TsTupleType{elements: $elements}';
  }
}

class TsTypeAliasDeclaration extends TsNode {
  final List<TsNode> modifiers;
  final TsIdentifier name;
  final List<TsTypeParameter> typeParameters;
  final TsNode? type;

  TsTypeAliasDeclaration(this.modifiers, this.name, this.typeParameters, this.type)
      : super(TsNodeKind.typeAliasDeclaration);

  factory TsTypeAliasDeclaration.fromJson(Map<String, dynamic> json) {
    return TsTypeAliasDeclaration(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromJsonArray(json['typeParameters']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        ...typeParameters,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsTypeAliasDeclaration{modifiers: $modifiers, name: $name, typeParameters: $typeParameters, type: $type}';
  }
}

class TsTypeLiteral extends TsNode {
  final List<TsNode> members;

  TsTypeLiteral(this.members) : super(TsNodeKind.typeLiteral);

  factory TsTypeLiteral.fromJson(Map<String, dynamic> json) {
    return TsTypeLiteral(
      _fromJsonArray(json['members']),
    );
  }

  @override
  List<TsNode> get children => members;

  @override
  String toString() {
    return 'TsTypeLiteral{members: $members}';
  }
}

class TsTypeOperator extends TsNode {
  final TsNode operator;
  final TsNode type;

  TsTypeOperator(this.operator, this.type) : super(TsNodeKind.typeOperator);

  factory TsTypeOperator.fromJson(Map<String, dynamic> json) {
    return TsTypeOperator(
      _fromJsonObject(json['operator']),
      _fromJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        operator,
        type,
      ];

  @override
  String toString() {
    return 'TsTypeOperator{operator: $operator, type: $type}';
  }
}

class TsTypeParameter extends TsNode {
  final List<TsNode> modifiers;
  final TsIdentifier name;
  final TsNode? constraint;
  final TsNode? defaultType;

  TsTypeParameter(this.modifiers, this.name, this.constraint, this.defaultType) : super(TsNodeKind.typeParameter);

  factory TsTypeParameter.fromJson(Map<String, dynamic> json) {
    return TsTypeParameter(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['constraint']),
      _fromNullableJsonObject(json['default']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        ...modifiers,
        name,
        if (constraint != null) constraint!,
        if (defaultType != null) defaultType!,
      ];

  @override
  String toString() {
    return 'TsTypeParameter{modifiers: $modifiers, name: $name, constraint: $constraint, defaultType: $defaultType}';
  }
}

class TsTypePredicate extends TsNode {
  final TsNode? assertModifier;
  final TsNode parameterName;
  final TsNode? type;

  TsTypePredicate(this.assertModifier, this.parameterName, this.type) : super(TsNodeKind.typePredicate);

  factory TsTypePredicate.fromJson(Map<String, dynamic> json) {
    return TsTypePredicate(
      _fromNullableJsonObject(json['assertModifier']),
      _fromJsonObject(json['parameterName']),
      _fromNullableJsonObject(json['type']),
    );
  }

  @override
  List<TsNode> get children => [
        if (assertModifier != null) assertModifier!,
        parameterName,
        if (type != null) type!,
      ];

  @override
  String toString() {
    return 'TsTypePredicate{assertModifier: $assertModifier, parameterName: $parameterName, type: $type}';
  }
}

class TsTypeQuery extends TsNode {
  final TsNode exprName;
  final List<TsNode> typeArguments;

  TsTypeQuery(this.exprName, this.typeArguments) : super(TsNodeKind.typeQuery);

  factory TsTypeQuery.fromJson(Map<String, dynamic> json) {
    return TsTypeQuery(
      _fromJsonObject(json['exprName']),
      _fromJsonArray(json['typeArguments']),
    );
  }

  @override
  List<TsNode> get children => [
        exprName,
        ...typeArguments,
      ];

  @override
  String toString() {
    return 'TsTypeQuery{exprName: $exprName, typeArguments: $typeArguments}';
  }
}

class TsTypeReference extends TsNode {
  final TsNode typeName;
  final List<TsNode> typeArguments;

  TsTypeReference(this.typeName, this.typeArguments) : super(TsNodeKind.typeReference);

  factory TsTypeReference.fromJson(Map<String, dynamic> json) {
    return TsTypeReference(
      _fromJsonObject(json['typeName']),
      _fromJsonArray(json['typeArguments']),
    );
  }

  @override
  String? get nodeQualifier => typeName.nodeQualifier;

  @override
  List<TsNode> get children => [
        typeName,
        ...typeArguments,
      ];

  @override
  String toString() {
    return 'TsTypeReference{typeName: $typeName, typeArguments: $typeArguments}';
  }
}

class TsUndefinedKeyword extends TsNode {
  TsUndefinedKeyword() : super(TsNodeKind.undefinedKeyword);

  @override
  String toString() {
    return 'TsUndefinedKeyword{}';
  }
}

class TsUnionType extends TsNode {
  final List<TsNode> types;

  TsUnionType(this.types) : super(TsNodeKind.unionType);

  factory TsUnionType.fromJson(Map<String, dynamic> json) {
    return TsUnionType(
      _fromJsonArray(json['types']),
    );
  }

  @override
  List<TsNode> get children => types;

  @override
  String toString() {
    return 'TsUnionType{types: $types}';
  }
}

class TsUniqueKeyword extends TsNode {
  TsUniqueKeyword() : super(TsNodeKind.uniqueKeyword);

  @override
  String toString() {
    return 'TsUniqueKeyword{}';
  }
}

class TsUnknownKeyword extends TsNode {
  TsUnknownKeyword() : super(TsNodeKind.unknownKeyword);

  @override
  String toString() {
    return 'TsUnknownKeyword{}';
  }
}

class TsVariableDeclaration extends TsNode {
  final TsNode name;
  final TsNode? exclamationToken;
  final TsNode? type;
  final TsNode? initializer;

  TsVariableDeclaration(this.name, this.exclamationToken, this.type, this.initializer)
      : super(TsNodeKind.variableDeclaration);

  factory TsVariableDeclaration.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclaration(
      _fromJsonObject(json['name']),
      _fromNullableJsonObject(json['exclamationToken']),
      _fromNullableJsonObject(json['type']),
      _fromNullableJsonObject(json['initializer']),
    );
  }

  @override
  String? get nodeQualifier => name.nodeQualifier;

  @override
  List<TsNode> get children => [
        name,
        if (exclamationToken != null) exclamationToken!,
        if (type != null) type!,
        if (initializer != null) initializer!,
      ];

  @override
  String toString() {
    return 'TsVariableDeclaration{name: $name, exclamationToken: $exclamationToken, type: $type, initializer: $initializer}';
  }
}

class TsVariableDeclarationList extends TsNode {
  final List<TsNode> declarations;

  TsVariableDeclarationList(this.declarations) : super(TsNodeKind.variableDeclarationList);

  factory TsVariableDeclarationList.fromJson(Map<String, dynamic> json) {
    return TsVariableDeclarationList(
      _fromJsonArray(json['declarations']),
    );
  }

  @override
  List<TsNode> get children => declarations;

  @override
  String toString() {
    return 'TsVariableDeclarationList{declarations: $declarations}';
  }
}

class TsVariableStatement extends TsNode {
  final List<TsNode> modifiers;
  final TsNode declarationList;

  TsVariableStatement(this.modifiers, this.declarationList) : super(TsNodeKind.variableStatement);

  factory TsVariableStatement.fromJson(Map<String, dynamic> json) {
    return TsVariableStatement(
      _fromJsonArray(json['modifiers']),
      _fromJsonObject(json['declarationList']),
    );
  }

  @override
  List<TsNode> get children => [
        ...modifiers,
        declarationList,
      ];

  @override
  String toString() {
    return 'TsVariableStatement{modifiers: $modifiers, declarationList: $declarationList}';
  }
}

class TsVoidKeyword extends TsNode {
  TsVoidKeyword() : super(TsNodeKind.voidKeyword);

  @override
  String toString() {
    return 'TsVoidKeyword{}';
  }
}

class TsUnsupportedNode extends TsNode {
  final String unsupportedNodeKind;

  TsUnsupportedNode(this.unsupportedNodeKind) : super(TsNodeKind.unsupported);

  @override
  String toString() {
    return 'TsUnsupportedNode{unsupportedNodeKind: $unsupportedNodeKind}';
  }
}
