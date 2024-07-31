import '../model/ts_node.dart';

class SanitizerPhase {
  final int phase;
  final List<TsNodeMapper> nodeMappers;

  SanitizerPhase._(this.phase, this.nodeMappers);

  TsNode? _applyMappers(TsNode node) {
    if (nodeMappers.isEmpty) {
      return node;
    }

    final loopDetector = <int, int>{};
    TsNode mappedNode = node;
    while (true) {
      var mapped = 0;
      for (final (index, nodeMapper) in nodeMappers.indexed) {
        final tempNode = nodeMapper(mappedNode);
        if (tempNode == null) {
          return null;
        }
        if (tempNode != mappedNode) {
          mappedNode = tempNode;
          mapped++;
          loopDetector[index] = loopDetector.putIfAbsent(index, () => 0) + 1;
          for (final executions in loopDetector.values) {
            if (executions > 3) {
              throw StateError(
                  'Loop detected in sanitizer! Node mapper $index was called more than 3 times in phase $index for node ${node.kind.name}:${node.nodeQualifier}.');
            }
          }
        }
      }
      if (mapped == 0) {
        return mappedNode;
      }
    }
  }

  TsNode _sanitizeAbstractKeyword(TsAbstractKeyword node) {
    return TsAbstractKeyword();
  }

  TsNode _sanitizeAnyKeyword(TsAnyKeyword node) {
    return TsAnyKeyword();
  }

  TsNode _sanitizeArrayType(TsArrayType node) {
    return TsArrayType(
      _sanitizeNode(node.elementType),
    );
  }

  TsNode _sanitizeBooleanKeyword(TsBooleanKeyword node) {
    return TsBooleanKeyword();
  }

  TsNode _sanitizeCallSignature(TsCallSignature node) {
    return TsCallSignature(
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeClassDeclaration(TsClassDeclaration node) {
    return TsClassDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.heritageClauses),
      _sanitizeNodes(node.members),
    );
  }

  TsNode _sanitizeComputedPropertyName(TsComputedPropertyName node) {
    return TsComputedPropertyName(
      _sanitizeNode(node.expression),
    );
  }

  TsNode _sanitizeConditionalType(TsConditionalType node) {
    return TsConditionalType(
      _sanitizeNode(node.checkType),
      _sanitizeNode(node.extendsType),
      _sanitizeNode(node.trueType),
      _sanitizeNode(node.falseType),
    );
  }

  TsNode _sanitizeConstructorDeclaration(TsConstructorDeclaration node) {
    return TsConstructorDeclaration(
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeConstructorType(TsConstructorType node) {
    return TsConstructorType(
      _sanitizeNodes(node.modifiers),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeConstructSignature(TsConstructSignature node) {
    return TsConstructSignature(
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeDeclareKeyword(TsDeclareKeyword node) {
    return TsDeclareKeyword();
  }

  TsNode _sanitizeEnumDeclaration(TsEnumDeclaration node) {
    return TsEnumDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.members),
    );
  }

  TsNode _sanitizeEnumMember(TsEnumMember node) {
    return TsEnumMember(
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.initializer),
    );
  }

  TsNode _sanitizeExclamationToken(TsExclamationToken node) {
    return TsExclamationToken();
  }

  TsNode _sanitizeExportKeyword(TsExportKeyword node) {
    return TsExportKeyword();
  }

  TsNode _saniitizeExpressionWithTypeArguments(TsExpressionWithTypeArguments node) {
    return TsExpressionWithTypeArguments(
      _sanitizeNode(node.expression),
      _sanitizeNodes(node.typeArguments),
    );
  }

  TsNode _sanitizeExtendsKeyword(TsExtendsKeyword node) {
    return TsExtendsKeyword();
  }

  TsNode _sanitizeFalseKeyword(TsFalseKeyword node) {
    return TsFalseKeyword();
  }

  TsNode _sanitizeFunctionType(TsFunctionType node) {
    return TsFunctionType(
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeFunctionDeclaration(TsFunctionDeclaration node) {
    return TsFunctionDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNullableNode(node.asteriskToken),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeGetAccessor(TsGetAccessor node) {
    return TsGetAccessor(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeHeritageClause(TsHeritageClause node) {
    return TsHeritageClause(
      _sanitizeNode(node.token),
      _sanitizeNodes(node.types),
    );
  }

  TsNode _sanitizeIdentifier(TsIdentifier node) {
    return TsIdentifier(node.text);
  }

  TsNode _sanitizeImplementsKeyword(TsImplementsKeyword node) {
    return TsImplementsKeyword();
  }

  TsNode _sanitizeImportAttribute(TsImportAttribute node) {
    return TsImportAttribute(
      _sanitizeNode(node.name),
      _sanitizeNode(node.value),
    );
  }

  TsNode _sanitizeImportAttributes(TsImportAttributes node) {
    return TsImportAttributes(
      _sanitizeNodes(node.elements),
    );
  }

  TsNode _sanitizeImportClause(TsImportClause node) {
    return TsImportClause(
      node.isTypeOnly,
      _sanitizeNullableNode(node.name),
      _sanitizeNullableNode(node.namedBindings),
    );
  }

  TsNode _sanitizeImportDeclaration(TsImportDeclaration node) {
    return TsImportDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNullableNode(node.importClause),
      _sanitizeNode(node.moduleSpecifier),
      _sanitizeNullableNode(node.importAttributes),
    );
  }

  TsNode _sanitizeImportSpecifier(TsImportSpecifier node) {
    return TsImportSpecifier(
      node.isTypeOnly,
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.propertyName),
    );
  }

  TsNode _sanitizeImportType(TsImportType node) {
    return TsImportType(
      _sanitizeNode(node.argument),
      _sanitizeNullableNode(node.attributes),
      _sanitizeNullableNode(node.qualifier),
      _sanitizeNodes(node.typeArguments),
    );
  }

  TsNode _sanitizeIndexedAccessType(TsIndexedAccessType node) {
    return TsIndexedAccessType(
      _sanitizeNode(node.objectType),
      _sanitizeNode(node.indexType),
    );
  }

  TsNode _sanitizeIndexSignature(TsIndexSignature node) {
    return TsIndexSignature(
      _sanitizeNodes(node.modifiers),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeInferType(TsInferType node) {
    return TsInferType(
      node.typeParameter,
    );
  }

  TsNode _sanitizeInterfaceDeclaration(TsInterfaceDeclaration node) {
    return TsInterfaceDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.heritageClauses),
      _sanitizeNodes(node.members),
    );
  }

  TsNode _sanitizeIntersectionType(TsIntersectionType node) {
    return TsIntersectionType(
      _sanitizeNodes(node.types),
    );
  }

  TsNode _sanitizeKeyOfKeyword(TsKeyOfKeyword node) {
    return TsKeyOfKeyword();
  }

  TsNode _sanitizeLiteralType(TsLiteralType node) {
    return TsLiteralType(
      _sanitizeNode(node.literal),
    );
  }

  TsNode _sanitizeMappedType(TsMappedType node) {
    return TsMappedType(
      _sanitizeNullableNode(node.readonlyToken),
      _sanitizeNode(node.typeParameter),
      _sanitizeNullableNode(node.nameType),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNullableNode(node.type),
      _sanitizeNodes(node.members),
    );
  }

  TsNode _sanitizeMethodDeclaration(TsMethodDeclaration node) {
    return TsMethodDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.asteriskToken),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeMethodSignature(TsMethodSignature node) {
    return TsMethodSignature(
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNodes(node.parameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeMinusToken(TsMinusToken node) {
    return TsMinusToken();
  }

  TsNode _sanitizeMinusMinusToken(TsMinusMinusToken node) {
    return TsMinusMinusToken();
  }

  TsNode _sanitizeModuleBlock(TsModuleBlock node) {
    return TsModuleBlock(
      _sanitizeNodes(node.statements),
    );
  }

  TsNode _sanitizeModuleDeclaration(TsModuleDeclaration node) {
    return TsModuleDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.body),
    );
  }

  TsNode _sanitizeNamedImports(TsNamedImports node) {
    return TsNamedImports(
      _sanitizeNodes(node.elements),
    );
  }

  TsNode _sanitizeNamespaceImport(TsNamespaceImport node) {
    return TsNamespaceImport(
      _sanitizeNode(node.name),
    );
  }

  TsNode _sanitizeNeverKeyword(TsNeverKeyword node) {
    return TsNeverKeyword();
  }

  TsNode _sanitizeNullKeyword(TsNullKeyword node) {
    return TsNullKeyword();
  }

  TsNode _sanitizeNumberKeyword(TsNumberKeyword node) {
    return TsNumberKeyword();
  }

  TsNode _sanitizeNumericLiteral(TsNumericLiteral node) {
    return TsNumericLiteral(node.text);
  }

  TsNode _sanitizeObjectKeyword(TsObjectKeyword node) {
    return TsObjectKeyword();
  }

  TsNode _sanitizeParameter(TsParameter node) {
    return TsParameter(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNullableNode(node.type),
      _sanitizeNullableNode(node.initializer),
    );
  }

  TsNode _sanitizeParenthesizedType(TsParenthesizedType node) {
    return TsParenthesizedType(
      _sanitizeNode(node.type),
    );
  }

  TsNode _sanitizePrefixUnaryExpression(TsPrefixUnaryExpression node) {
    return TsPrefixUnaryExpression(
      _sanitizeNode(node.operator),
      _sanitizeNode(node.operand),
    );
  }

  TsNode _sanitizePackage(TsPackage node) {
    return TsPackage(
      node.name,
      node.version,
      _sanitizeNodes(node.sourceFiles),
    );
  }

  TsNode _sanitizePlusToken(TsPlusToken node) {
    return TsPlusToken();
  }

  TsNode _sanitizePlusPlusToken(TsPlusPlusToken node) {
    return TsPlusPlusToken();
  }

  TsNode _sanitzePrivateKeyword(TsPrivateKeyword node) {
    return TsPrivateKeyword();
  }

  TsNode _sanitizePropertyAccessExpression(TsPropertyAccessExpression node) {
    return TsPropertyAccessExpression(
      _sanitizeNode(node.expression),
      _sanitizeNullableNode(node.questionDotToken),
      _sanitizeNode(node.name),
    );
  }

  TsNode _sanitizePropertyDeclaration(TsPropertyDeclaration node) {
    return TsPropertyDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNullableNode(node.exclamationToken),
      _sanitizeNullableNode(node.type),
      _sanitizeNullableNode(node.initializer),
    );
  }

  TsNode _sanitizePropertySignature(TsPropertySignature node) {
    return TsPropertySignature(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.questionToken),
      _sanitizeNullableNode(node.type),
      _sanitizeNullableNode(node.initializer),
    );
  }

  TsNode _sanitizedProtectedKeyword(TsProtectedKeyword node) {
    return TsProtectedKeyword();
  }

  TsNode _sanitizeQualifiedName(TsQualifiedName node) {
    return TsQualifiedName(
      _sanitizeNode(node.left),
      _sanitizeNode(node.right),
    );
  }

  TsNode _sanitizeQuestionToken(TsQuestionToken node) {
    return TsQuestionToken();
  }

  TsNode _sanitizeReadonlyKeyword(TsReadonlyKeyword node) {
    return TsReadonlyKeyword();
  }

  TsNode _sanitizeRestType(TsRestType node) {
    return TsRestType(
      _sanitizeNode(node.type),
    );
  }

  TsNode _sanitizeSetAccessor(TsSetAccessor node) {
    return TsSetAccessor(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeSourceFile(TsSourceFile node) {
    return TsSourceFile(
      node.path,
      node.baseName,
      _sanitizeNodes(node.statements),
    );
  }

  TsNode _sanitizeStaticKeyword(TsStaticKeyword node) {
    return TsStaticKeyword();
  }

  TsNode _sanitizeStringKeyword(TsStringKeyword node) {
    return TsStringKeyword();
  }

  TsNode _sanitizeStringLiteral(TsStringLiteral node) {
    return TsStringLiteral(node.text);
  }

  TsNode _sanitizeSymbolKeyword(TsSymbolKeyword node) {
    return TsSymbolKeyword();
  }

  TsNode _sanitizeThisType(TsThisType node) {
    return TsThisType();
  }

  TsNode _sanitizeTildeToken(TsTildeToken node) {
    return TsTildeToken();
  }

  TsNode _sanitizeTrueKeyword(TsTrueKeyword node) {
    return TsTrueKeyword();
  }

  TsNode _sanitizeTupleType(TsTupleType node) {
    return TsTupleType(
      _sanitizeNodes(node.elements),
    );
  }

  TsNode _sanitizeTypeAliasDeclaration(TsTypeAliasDeclaration node) {
    return TsTypeAliasDeclaration(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNodes(node.typeParameters),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeTypeLiteral(TsTypeLiteral node) {
    return TsTypeLiteral(
      _sanitizeNodes(node.members),
    );
  }

  TsNode _sanitizeTypeOperator(TsTypeOperator node) {
    return TsTypeOperator(
      _sanitizeNode(node.operator),
      _sanitizeNode(node.type),
    );
  }

  TsNode _sanitizeTypeParameter(TsTypeParameter node) {
    return TsTypeParameter(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.constraint),
      _sanitizeNullableNode(node.defaultType),
    );
  }

  TsNode _sanitizeTypePredicate(TsTypePredicate node) {
    return TsTypePredicate(
      _sanitizeNullableNode(node.assertModifier),
      _sanitizeNode(node.parameterName),
      _sanitizeNullableNode(node.type),
    );
  }

  TsNode _sanitizeTypeQuery(TsTypeQuery node) {
    return TsTypeQuery(_sanitizeNode(node.exprName), _sanitizeNodes(node.typeArguments));
  }

  TsNode _sanitizeTypeReference(TsTypeReference node) {
    return TsTypeReference(
      _sanitizeNode(node.typeName),
      _sanitizeNodes(node.typeArguments),
    );
  }

  TsNode _sanitizeUndefinedKeyword(TsUndefinedKeyword node) {
    return TsUndefinedKeyword();
  }

  TsNode _sanitizeUnionType(TsUnionType node) {
    return TsUnionType(
      _sanitizeNodes(node.types),
    );
  }

  TsNode _sanitizeUniqueKeyword(TsUniqueKeyword node) {
    return TsUniqueKeyword();
  }

  TsNode _sanitizeUnknownKeyword(TsUnknownKeyword node) {
    return TsUnknownKeyword();
  }

  TsNode _sanitizeUnsupportedNode(TsUnsupportedNode node) {
    return TsUnsupportedNode(
      node.unsupportedNodeKind,
    );
  }

  TsNode _sanitizeVariableDeclaration(TsVariableDeclaration node) {
    return TsVariableDeclaration(
      _sanitizeNode(node.name),
      _sanitizeNullableNode(node.exclamationToken),
      _sanitizeNullableNode(node.type),
      _sanitizeNullableNode(node.initializer),
    );
  }

  TsNode _sanitizeVariableDeclarationList(TsVariableDeclarationList node) {
    return TsVariableDeclarationList(
      _sanitizeNodes(node.declarations),
    );
  }

  TsNode _sanitizeVariableStatement(TsVariableStatement node) {
    return TsVariableStatement(
      _sanitizeNodes(node.modifiers),
      _sanitizeNode(node.declarationList),
    );
  }

  TsNode _sanitizeVoidKeyword(TsVoidKeyword node) {
    return TsVoidKeyword();
  }

  T _sanitizeNode<T extends TsNode>(TsNode node) {
    final sanitizedNode = switch (node) {
      TsAbstractKeyword() => _sanitizeAbstractKeyword(node),
      TsAnyKeyword() => _sanitizeAnyKeyword(node),
      TsArrayType() => _sanitizeArrayType(node),
      TsBooleanKeyword() => _sanitizeBooleanKeyword(node),
      TsCallSignature() => _sanitizeCallSignature(node),
      TsClassDeclaration() => _sanitizeClassDeclaration(node),
      TsComputedPropertyName() => _sanitizeComputedPropertyName(node),
      TsConditionalType() => _sanitizeConditionalType(node),
      TsConstructorDeclaration() => _sanitizeConstructorDeclaration(node),
      TsConstructorType() => _sanitizeConstructorType(node),
      TsConstructSignature() => _sanitizeConstructSignature(node),
      TsDeclareKeyword() => _sanitizeDeclareKeyword(node),
      TsEnumDeclaration() => _sanitizeEnumDeclaration(node),
      TsEnumMember() => _sanitizeEnumMember(node),
      TsExclamationToken() => _sanitizeExclamationToken(node),
      TsExportKeyword() => _sanitizeExportKeyword(node),
      TsExpressionWithTypeArguments() => _saniitizeExpressionWithTypeArguments(node),
      TsExtendsKeyword() => _sanitizeExtendsKeyword(node),
      TsFalseKeyword() => _sanitizeFalseKeyword(node),
      TsFunctionType() => _sanitizeFunctionType(node),
      TsFunctionDeclaration() => _sanitizeFunctionDeclaration(node),
      TsGetAccessor() => _sanitizeGetAccessor(node),
      TsHeritageClause() => _sanitizeHeritageClause(node),
      TsIdentifier() => _sanitizeIdentifier(node),
      TsImplementsKeyword() => _sanitizeImplementsKeyword(node),
      TsImportAttribute() => _sanitizeImportAttribute(node),
      TsImportAttributes() => _sanitizeImportAttributes(node),
      TsImportClause() => _sanitizeImportClause(node),
      TsImportDeclaration() => _sanitizeImportDeclaration(node),
      TsImportSpecifier() => _sanitizeImportSpecifier(node),
      TsImportType() => _sanitizeImportType(node),
      TsIndexedAccessType() => _sanitizeIndexedAccessType(node),
      TsIndexSignature() => _sanitizeIndexSignature(node),
      TsInferType() => _sanitizeInferType(node),
      TsInterfaceDeclaration() => _sanitizeInterfaceDeclaration(node),
      TsIntersectionType() => _sanitizeIntersectionType(node),
      TsKeyOfKeyword() => _sanitizeKeyOfKeyword(node),
      TsLiteralType() => _sanitizeLiteralType(node),
      TsMappedType() => _sanitizeMappedType(node),
      TsMethodDeclaration() => _sanitizeMethodDeclaration(node),
      TsMethodSignature() => _sanitizeMethodSignature(node),
      TsMinusToken() => _sanitizeMinusToken(node),
      TsMinusMinusToken() => _sanitizeMinusMinusToken(node),
      TsModuleBlock() => _sanitizeModuleBlock(node),
      TsModuleDeclaration() => _sanitizeModuleDeclaration(node),
      TsNamedImports() => _sanitizeNamedImports(node),
      TsNamespaceImport() => _sanitizeNamespaceImport(node),
      TsNeverKeyword() => _sanitizeNeverKeyword(node),
      TsNullKeyword() => _sanitizeNullKeyword(node),
      TsNumberKeyword() => _sanitizeNumberKeyword(node),
      TsNumericLiteral() => _sanitizeNumericLiteral(node),
      TsObjectKeyword() => _sanitizeObjectKeyword(node),
      TsParameter() => _sanitizeParameter(node),
      TsParenthesizedType() => _sanitizeParenthesizedType(node),
      TsPrefixUnaryExpression() => _sanitizePrefixUnaryExpression(node),
      TsPackage() => _sanitizePackage(node),
      TsPlusToken() => _sanitizePlusToken(node),
      TsPlusPlusToken() => _sanitizePlusPlusToken(node),
      TsPrivateKeyword() => _sanitzePrivateKeyword(node),
      TsPropertyAccessExpression() => _sanitizePropertyAccessExpression(node),
      TsPropertyDeclaration() => _sanitizePropertyDeclaration(node),
      TsPropertySignature() => _sanitizePropertySignature(node),
      TsProtectedKeyword() => _sanitizedProtectedKeyword(node),
      TsQualifiedName() => _sanitizeQualifiedName(node),
      TsQuestionToken() => _sanitizeQuestionToken(node),
      TsReadonlyKeyword() => _sanitizeReadonlyKeyword(node),
      TsRestType() => _sanitizeRestType(node),
      TsSetAccessor() => _sanitizeSetAccessor(node),
      TsSourceFile() => _sanitizeSourceFile(node),
      TsStaticKeyword() => _sanitizeStaticKeyword(node),
      TsStringKeyword() => _sanitizeStringKeyword(node),
      TsStringLiteral() => _sanitizeStringLiteral(node),
      TsSymbolKeyword() => _sanitizeSymbolKeyword(node),
      TsThisType() => _sanitizeThisType(node),
      TsTildeToken() => _sanitizeTildeToken(node),
      TsTrueKeyword() => _sanitizeTrueKeyword(node),
      TsTupleType() => _sanitizeTupleType(node),
      TsTypeAliasDeclaration() => _sanitizeTypeAliasDeclaration(node),
      TsTypeLiteral() => _sanitizeTypeLiteral(node),
      TsTypeOperator() => _sanitizeTypeOperator(node),
      TsTypeParameter() => _sanitizeTypeParameter(node),
      TsTypePredicate() => _sanitizeTypePredicate(node),
      TsTypeQuery() => _sanitizeTypeQuery(node),
      TsTypeReference() => _sanitizeTypeReference(node),
      TsUndefinedKeyword() => _sanitizeUndefinedKeyword(node),
      TsUnionType() => _sanitizeUnionType(node),
      TsUniqueKeyword() => _sanitizeUniqueKeyword(node),
      TsUnknownKeyword() => _sanitizeUnknownKeyword(node),
      TsUnsupportedNode() => _sanitizeUnsupportedNode(node),
      TsVariableDeclaration() => _sanitizeVariableDeclaration(node),
      TsVariableDeclarationList() => _sanitizeVariableDeclarationList(node),
      TsVariableStatement() => _sanitizeVariableStatement(node),
      TsVoidKeyword() => _sanitizeVoidKeyword(node),
    };
    if (sanitizedNode is! T) {
      throw StateError(
          'Node of ${node.kind.name}:${node.nodeQualifier} was sanitized to type ${sanitizedNode.runtimeType}, but $T is required.');
    }
    final mappedNode = _applyMappers(sanitizedNode);
    if (mappedNode is! T) {
      throw StateError(
          'Node of ${node.kind.name}:${node.nodeQualifier} was sanitized to type ${sanitizedNode.runtimeType}, but $T is required.');
    }
    updateParentAndChilds(mappedNode, node.parent);
    return mappedNode;
  }

  T? _sanitizeNullableNode<T extends TsNode>(TsNode? node) {
    if (node == null) {
      return null;
    }
    return _sanitizeNode<T>(node);
  }

  List<T> _sanitizeNodes<T extends TsNode>(List<TsNode> nodes) {
    final result = <T>[];
    for (final node in nodes) {
      final sanitizedNode = _sanitizeNullableNode<T>(node);
      if (sanitizedNode != null) {
        result.add(sanitizedNode);
      }
    }
    return result;
  }
}

class Sanitizer {
  final List<SanitizerPhase> phases = [];

  Sanitizer addPhase(List<TsNodeMapper> nodeMappers) {
    phases.add(SanitizerPhase._(phases.length, nodeMappers));
    return this;
  }

  TsPackage sanitize(TsPackage tsPackage) {
    TsPackage sanitizedNode = tsPackage;
    for (final phase in phases) {
      final tempNode = phase._sanitizeNode(sanitizedNode);
      if (tempNode is! TsPackage) {
        throw StateError('Node of type $TsPackage must be sanitized to a TsPackage.');
      }
      sanitizedNode = tempNode;
    }
    return sanitizedNode;
  }
}
