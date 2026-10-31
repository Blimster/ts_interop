// ignore_for_file: avoid_shadowing_type_parameters, camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_library_name

library reflect; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;
import 'es2023.dart' as _i2;

/// Method [apply$1]
///
/// Type Parameters:
/// - T
/// - A extends readonly any[]
/// - R
///
/// Parameters:
/// - target: (this: T, ...args: A) => R
/// - thisArgument: T
/// - argumentsList: Readonly
@_i1.JS('apply')
external R apply$1<T extends _i1.JSAny, A extends _i1.JSAny, R extends _i1.JSAny>(
  _i1.JSFunction target,
  T thisArgument,
  _i2.Readonly<A> argumentsList,
);

/// Method [apply$2]
///
/// Parameters:
/// - target: Function$
/// - thisArgument: any
/// - argumentsList: ArrayLike
@_i1.JS('apply')
external _i1.JSAny apply$2(_i2.Function$ target, _i1.JSAny thisArgument, _i2.ArrayLike<_i1.JSAny> argumentsList);

/// Method [construct$1]
///
/// Type Parameters:
/// - A extends readonly any[]
/// - R
///
/// Parameters:
/// - target:
/// - argumentsList: Readonly
/// - newTarget:
@_i1.JS('construct')
external R construct$1<A extends _i1.JSAny, R extends _i1.JSAny>(
  R target,
  _i2.Readonly<A> argumentsList, [
  _i1.JSAny newTarget,
]);

/// Method [construct$2]
///
/// Parameters:
/// - target: Function$
/// - argumentsList: ArrayLike
/// - newTarget: Function$
@_i1.JS('construct')
external _i1.JSAny construct$2(_i2.Function$ target, _i2.ArrayLike<_i1.JSAny> argumentsList, [_i2.Function$ newTarget]);

/// Method [defineProperty]
///
/// Parameters:
/// - target: object
/// - propertyKey: PropertyKey
/// - attributes:
@_i1.JS('defineProperty')
external _i1.JSBoolean defineProperty(_i1.JSObject target, _i2.PropertyKey propertyKey, _i1.JSAny attributes);

/// Method [deleteProperty]
///
/// Parameters:
/// - target: object
/// - propertyKey: PropertyKey
@_i1.JS('deleteProperty')
external _i1.JSBoolean deleteProperty(_i1.JSObject target, _i2.PropertyKey propertyKey);

/// Method [get]
///
/// Type Parameters:
/// - T extends object
/// - P extends PropertyKey
///
/// Parameters:
/// - target: T
/// - propertyKey: P
/// - receiver:
@_i1.JS('get')
external _i1.JSAny get<T extends _i1.JSObject, P extends _i2.PropertyKey>(
  T target,
  P propertyKey, [
  _i1.JSAny receiver,
]);

/// Method [getOwnPropertyDescriptor]
///
/// Type Parameters:
/// - T extends object
/// - P extends PropertyKey
///
/// Parameters:
/// - target: T
/// - propertyKey: P
@_i1.JS('getOwnPropertyDescriptor')
external _i1.JSAny getOwnPropertyDescriptor<T extends _i1.JSObject, P extends _i2.PropertyKey>(T target, P propertyKey);

/// Method [getPrototypeOf]
///
/// Parameters:
/// - target: object
@_i1.JS('getPrototypeOf')
external _i1.JSAny getPrototypeOf(_i1.JSObject target);

/// Method [has]
///
/// Parameters:
/// - target: object
/// - propertyKey: PropertyKey
@_i1.JS('has')
external _i1.JSBoolean has(_i1.JSObject target, _i2.PropertyKey propertyKey);

/// Method [isExtensible]
///
/// Parameters:
/// - target: object
@_i1.JS('isExtensible')
external _i1.JSBoolean isExtensible(_i1.JSObject target);

/// Method [ownKeys]
///
/// Parameters:
/// - target: object
@_i1.JS('ownKeys')
external _i1.JSArray<_i1.JSAny> ownKeys(_i1.JSObject target);

/// Method [preventExtensions]
///
/// Parameters:
/// - target: object
@_i1.JS('preventExtensions')
external _i1.JSBoolean preventExtensions(_i1.JSObject target);

/// Method [set$1]
///
/// Type Parameters:
/// - T extends object
/// - P extends PropertyKey
///
/// Parameters:
/// - target: T
/// - propertyKey: P
/// - value:
/// - receiver: any
@_i1.JS('set')
external _i1.JSBoolean set$1<T extends _i1.JSObject, P extends _i2.PropertyKey>(
  T target,
  P propertyKey,
  _i1.JSAny value, [
  _i1.JSAny receiver,
]);

/// Method [set$2]
///
/// Parameters:
/// - target: object
/// - propertyKey: PropertyKey
/// - value: any
/// - receiver: any
@_i1.JS('set')
external _i1.JSBoolean set$2(_i1.JSObject target, _i2.PropertyKey propertyKey, _i1.JSAny value, [_i1.JSAny receiver]);

/// Method [setPrototypeOf]
///
/// Parameters:
/// - target: object
/// - proto: object | null
@_i1.JS('setPrototypeOf')
external _i1.JSBoolean setPrototypeOf(_i1.JSObject target, _i1.JSObject? proto);
