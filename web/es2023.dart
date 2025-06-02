// ignore_for_file: camel_case_types, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_library_name

library es2023; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;
import 'es2023_intl.dart' as _i2;

/// Typedef [ClassMemberDecoratorContext]
///
/// ClassMethodDecoratorContext | ClassGetterDecoratorContext | ClassSetterDecoratorContext | ClassFieldDecoratorContext | ClassAccessorDecoratorContext
typedef ClassMemberDecoratorContext = _i1.JSAny;

/// Typedef [DecoratorContext]
///
/// ClassDecoratorContext | ClassMemberDecoratorContext
typedef DecoratorContext = _i1.JSAny;

/// Typedef [DecoratorMetadataObject]
///
///
typedef DecoratorMetadataObject = _i1.JSAny;

/// Typedef [DecoratorMetadata]
///
///
typedef DecoratorMetadata = _i1.JSAny;

/// Interface [ClassDecoratorContext]
extension type ClassDecoratorContext<Class extends _i1.JSFunction>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "class"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string | undefined
  external _i1.JSString get name;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: Class) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Interface [ClassMethodDecoratorContext]
extension type ClassMethodDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSFunction>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "method"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string |
  external _i1.JSAny get name;

  /// Property [static]
  ///
  /// readonly static: boolean
  external _i1.JSBoolean get static;

  /// Property [private]
  ///
  /// readonly private: boolean
  external _i1.JSBoolean get private;

  /// Property [access]
  ///
  /// readonly access:
  external _i1.JSObject get access;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: This) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Interface [ClassGetterDecoratorContext]
extension type ClassGetterDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "getter"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string |
  external _i1.JSAny get name;

  /// Property [static]
  ///
  /// readonly static: boolean
  external _i1.JSBoolean get static;

  /// Property [private]
  ///
  /// readonly private: boolean
  external _i1.JSBoolean get private;

  /// Property [access]
  ///
  /// readonly access:
  external _i1.JSObject get access;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: This) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Interface [ClassSetterDecoratorContext]
extension type ClassSetterDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "setter"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string |
  external _i1.JSAny get name;

  /// Property [static]
  ///
  /// readonly static: boolean
  external _i1.JSBoolean get static;

  /// Property [private]
  ///
  /// readonly private: boolean
  external _i1.JSBoolean get private;

  /// Property [access]
  ///
  /// readonly access:
  external _i1.JSObject get access;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: This) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Interface [ClassAccessorDecoratorContext]
extension type ClassAccessorDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "accessor"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string |
  external _i1.JSAny get name;

  /// Property [static]
  ///
  /// readonly static: boolean
  external _i1.JSBoolean get static;

  /// Property [private]
  ///
  /// readonly private: boolean
  external _i1.JSBoolean get private;

  /// Property [access]
  ///
  /// readonly access:
  external _i1.JSObject get access;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: This) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Interface [ClassAccessorDecoratorTarget]
extension type ClassAccessorDecoratorTarget<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Method [get]
  ///
  /// Parameters:
  /// - this: This
  ///
  /// Returns:
  /// - Value
  external Value get(This this$);

  /// Method [set]
  ///
  /// Parameters:
  /// - this: This
  /// - value: Value
  ///
  /// Returns:
  /// - void
  external void set(This this$, Value value);
}

/// Interface [ClassAccessorDecoratorResult]
extension type ClassAccessorDecoratorResult<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Method [get]
  ///
  /// Parameters:
  /// - this: This
  ///
  /// Returns:
  /// - Value
  external Value get(This this$);

  /// Method [set]
  ///
  /// Parameters:
  /// - this: This
  /// - value: Value
  ///
  /// Returns:
  /// - void
  external void set(This this$, Value value);

  /// Method [init]
  ///
  /// Parameters:
  /// - this: This
  /// - value: Value
  ///
  /// Returns:
  /// - Value
  external Value init(This this$, Value value);
}

/// Interface [ClassFieldDecoratorContext]
extension type ClassFieldDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Property [kind]
  ///
  /// readonly kind: "field"
  external _i1.JSString get kind;

  /// Property [name]
  ///
  /// readonly name: string |
  external _i1.JSAny get name;

  /// Property [static]
  ///
  /// readonly static: boolean
  external _i1.JSBoolean get static;

  /// Property [private]
  ///
  /// readonly private: boolean
  external _i1.JSBoolean get private;

  /// Property [access]
  ///
  /// readonly access:
  external _i1.JSObject get access;

  /// Method [addInitializer]
  ///
  /// Parameters:
  /// - initializer: (this: This) => void
  ///
  /// Returns:
  /// - void
  external void addInitializer(_i1.JSFunction initializer);

  /// Property [metadata]
  ///
  /// readonly metadata: DecoratorMetadata
  external DecoratorMetadata get metadata;
}

/// Typedef [ClassDecorator]
///
/// <TFunction extends Function$>(target: TFunction) => TFunction | void
typedef ClassDecorator<TFunction extends Function$> = _i1.JSFunction;

/// Typedef [PropertyDecorator]
///
/// (target: Object, propertyKey: string | ) => void
typedef PropertyDecorator = _i1.JSFunction;

/// Typedef [MethodDecorator]
///
/// <T>(target: Object, propertyKey: string | , descriptor: TypedPropertyDescriptor) => TypedPropertyDescriptor | void
typedef MethodDecorator<T extends _i1.JSAny> = _i1.JSFunction;

/// Typedef [ParameterDecorator]
///
/// (target: Object, propertyKey: string |  | undefined, parameterIndex: number) => void
typedef ParameterDecorator = _i1.JSFunction;

/// Interface [Map]
extension type Map<K extends _i1.JSAny, V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [clear]
  ///
  /// Returns:
  /// - void
  external void clear();

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: V, key: K, map: Map) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Method [values]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<V> values();

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [keys]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<K> keys();

  /// Method [delete]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(K key);

  /// Method [get]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - V | undefined
  external V? get(K key);

  /// Method [set]
  ///
  /// Parameters:
  /// - key: K
  /// - value: V
  ///
  /// Returns:
  /// -
  external _i1.JSAny set(K key, V value);
}

/// Interface [MapConstructor]
extension type MapConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: Map
  external Map<_i1.JSAny, _i1.JSAny> get prototype;
}

/// Interface [ReadonlyMap]
extension type ReadonlyMap<K extends _i1.JSAny, V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: V, key: K, map: ReadonlyMap) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Method [values]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<V> values();

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [keys]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<K> keys();

  /// Method [get]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - V | undefined
  external V? get(K key);
}

/// Interface [WeakMap]
extension type WeakMap<K extends WeakKey, V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Method [get]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - V | undefined
  external V? get(K key);

  /// Method [delete]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(K key);

  /// Method [set]
  ///
  /// Parameters:
  /// - key: K
  /// - value: V
  ///
  /// Returns:
  /// -
  external _i1.JSAny set(K key, V value);
}

/// Interface [WeakMapConstructor]
extension type WeakMapConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: WeakMap
  external WeakMap<WeakKey, _i1.JSAny> get prototype;
}

/// Interface [Set]
extension type Set<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [add]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// -
  external _i1.JSAny add(T value);

  /// Method [entries]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [clear]
  ///
  /// Returns:
  /// - void
  external void clear();

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, value2: T, set: Set) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [has]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(T value);

  /// Method [values]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> values();

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [keys]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> keys();

  /// Method [delete]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(T value);
}

/// Interface [SetConstructor]
extension type SetConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: Set
  external Set<_i1.JSAny> get prototype;
}

/// Interface [ReadonlySet]
extension type ReadonlySet<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, value2: T, set: ReadonlySet) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [has]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(T value);

  /// Method [values]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> values();

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [keys]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> keys();
}

/// Interface [WeakSet]
extension type WeakSet<T extends WeakKey>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [add]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// -
  external _i1.JSAny add(T value);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [has]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(T value);

  /// Method [delete]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(T value);
}

/// Interface [WeakSetConstructor]
extension type WeakSetConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: WeakSet
  external WeakSet<WeakKey> get prototype;
}

/// Interface [Array]
extension type Array<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [length]
  ///
  /// length: number
  external _i1.JSNumber length;

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [toReversed]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: T[]) => U
  /// - thisArg: any
  ///
  /// Returns:
  /// - U[]
  external _i1.JSArray<U> map<U extends _i1.JSAny>(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: T[]) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<T> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [push]
  ///
  /// Parameters:
  /// - ...items: T[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber push(_i1.JSArray<T> items);

  /// Method [shift]
  ///
  /// Returns:
  /// - T | undefined
  external T? shift();

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: T
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('with')
  external _i1.JSArray<T> with$(_i1.JSNumber index, T value);

  /// Method [flat]
  ///
  /// Type Parameters:
  /// - A
  /// - D extends number = 1
  ///
  /// Parameters:
  /// - this: A
  /// - depth: D
  ///
  /// Returns:
  /// - FlatArray[]
  external _i1.JSArray<FlatArray<A, D>> flat<A extends _i1.JSAny, D extends _i1.JSNumber>(A this$, [D depth]);

  /// Method [flatMap]
  ///
  /// Type Parameters:
  /// - U
  /// - This = undefined
  ///
  /// Parameters:
  /// - callback: (this: This, value: T, index: number, array: T[]) => U | ReadonlyArray
  /// - thisArg: This
  ///
  /// Returns:
  /// - U[]
  external _i1.JSArray<U> flatMap<U extends _i1.JSAny, This extends _i1.JSAny>(_i1.JSFunction callback, [This thisArg]);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Method [find$1]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  @_i1.JS('find')
  external S? find$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: T
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(T value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [unshift]
  ///
  /// Parameters:
  /// - ...items: T[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber unshift(_i1.JSArray<T> items);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - T | undefined
  external T? at(_i1.JSNumber index);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  ///
  /// Returns:
  /// - T
  external T reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options:
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i1.JSAny options]);

  /// Method [filter]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S[]
  external _i1.JSArray<S> filter<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [concat]
  ///
  /// Parameters:
  /// - ...items: ConcatArray[]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> concat(_i1.JSArray<ConcatArray<T>> items);

  /// Method [every]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean every<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [splice]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> splice(_i1.JSNumber start, [_i1.JSNumber deleteCount]);

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSorted([_i1.JSFunction compareFn]);

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  ///
  /// Returns:
  /// - T
  external T reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toSpliced]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSpliced(_i1.JSNumber start, _i1.JSNumber deleteCount, _i1.JSArray<T> items);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [pop]
  ///
  /// Returns:
  /// - T | undefined
  external T? pop();
}

/// Interface [ArrayConstructor]
extension type ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [isArray]
  ///
  /// Parameters:
  /// - arg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean isArray(_i1.JSAny arg);

  /// Property [null$]
  ///
  /// readonly null$: ArrayConstructor
  external ArrayConstructor get null$;

  /// Method [of]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> of<T extends _i1.JSAny>(_i1.JSArray<T> items);

  /// Method [from$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('from')
  external _i1.JSArray<T> from$1<T extends _i1.JSAny>(ArrayLike<T> arrayLike);

  /// Property [prototype]
  ///
  /// readonly prototype: any[]
  external _i1.JSArray<_i1.JSAny> get prototype;
}

/// Interface [DateConstructor]
extension type DateConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [now]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber now();

  /// Method [UTC]
  ///
  /// Parameters:
  /// - year: number
  /// - monthIndex: number
  /// - date: number
  /// - hours: number
  /// - minutes: number
  /// - seconds: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber UTC(
    _i1.JSNumber year, [
    _i1.JSNumber monthIndex,
    _i1.JSNumber date,
    _i1.JSNumber hours,
    _i1.JSNumber minutes,
    _i1.JSNumber seconds,
    _i1.JSNumber ms,
  ]);

  /// Method [parse]
  ///
  /// Parameters:
  /// - s: string
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber parse(_i1.JSString s);

  /// Property [prototype]
  ///
  /// readonly prototype: Date
  external Date get prototype;
}

/// Interface [Function$]
@_i1.JS('Function')
extension type Function$.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [caller]
  ///
  /// caller: Function$
  external Function$ caller;

  /// Property [arguments]
  ///
  /// arguments: any
  external _i1.JSAny arguments;

  /// Property [prototype]
  ///
  /// prototype: any
  external _i1.JSAny prototype;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

  /// Method [bind]
  ///
  /// Parameters:
  /// - this: Function$
  /// - thisArg: any
  /// - ...argArray: any[]
  ///
  /// Returns:
  /// - any
  external _i1.JSAny bind(Function$ this$, _i1.JSAny thisArg, _i1.JSArray<_i1.JSAny> argArray);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [apply]
  ///
  /// Parameters:
  /// - this: Function$
  /// - thisArg: any
  /// - argArray: any
  ///
  /// Returns:
  /// - any
  external _i1.JSAny apply(Function$ this$, _i1.JSAny thisArg, [_i1.JSAny argArray]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [call]
  ///
  /// Parameters:
  /// - this: Function$
  /// - thisArg: any
  /// - ...argArray: any[]
  ///
  /// Returns:
  /// - any
  external _i1.JSAny call(Function$ this$, _i1.JSAny thisArg, _i1.JSArray<_i1.JSAny> argArray);
}

/// Interface [Math]
extension type Math.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [sqrt]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sqrt(_i1.JSNumber x);

  /// Method [atan2]
  ///
  /// Parameters:
  /// - y: number
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atan2(_i1.JSNumber y, _i1.JSNumber x);

  /// Method [max]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber max(_i1.JSArray<_i1.JSNumber> values);

  /// Method [floor]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber floor(_i1.JSNumber x);

  /// Method [atanh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atanh(_i1.JSNumber x);

  /// Property [E]
  ///
  /// readonly E: number
  external _i1.JSNumber get E;

  /// Property [LOGonezeroE]
  ///
  /// readonly LOGonezeroE: number
  @_i1.JS('LOG10E')
  external _i1.JSNumber get LOGonezeroE;

  /// Method [cosh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cosh(_i1.JSNumber x);

  /// Property [SQRTone_two]
  ///
  /// readonly SQRTone_two: number
  @_i1.JS('SQRT1_2')
  external _i1.JSNumber get SQRTone_two;

  /// Method [trunc]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber trunc(_i1.JSNumber x);

  /// Method [atan]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atan(_i1.JSNumber x);

  /// Method [tanh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber tanh(_i1.JSNumber x);

  /// Method [sign]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sign(_i1.JSNumber x);

  /// Method [log1p]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log1p(_i1.JSNumber x);

  /// Method [exp]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber exp(_i1.JSNumber x);

  /// Method [cbrt]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cbrt(_i1.JSNumber x);

  /// Property [LOGtwoE]
  ///
  /// readonly LOGtwoE: number
  @_i1.JS('LOG2E')
  external _i1.JSNumber get LOGtwoE;

  /// Method [fround]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber fround(_i1.JSNumber x);

  /// Method [abs]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber abs(_i1.JSNumber x);

  /// Method [sin]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sin(_i1.JSNumber x);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [acosh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber acosh(_i1.JSNumber x);

  /// Method [tan]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber tan(_i1.JSNumber x);

  /// Property [SQRTtwo]
  ///
  /// readonly SQRTtwo: number
  @_i1.JS('SQRT2')
  external _i1.JSNumber get SQRTtwo;

  /// Method [imul]
  ///
  /// Parameters:
  /// - x: number
  /// - y: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber imul(_i1.JSNumber x, _i1.JSNumber y);

  /// Method [ceil]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber ceil(_i1.JSNumber x);

  /// Method [asinh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber asinh(_i1.JSNumber x);

  /// Method [round]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber round(_i1.JSNumber x);

  /// Method [sinh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sinh(_i1.JSNumber x);

  /// Method [hypot]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber hypot(_i1.JSArray<_i1.JSNumber> values);

  /// Method [random]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber random();

  /// Method [cos]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cos(_i1.JSNumber x);

  /// Property [LNonezero]
  ///
  /// readonly LNonezero: number
  @_i1.JS('LN10')
  external _i1.JSNumber get LNonezero;

  /// Method [log10]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log10(_i1.JSNumber x);

  /// Method [log]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log(_i1.JSNumber x);

  /// Method [asin]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber asin(_i1.JSNumber x);

  /// Method [expm1]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber expm1(_i1.JSNumber x);

  /// Method [clz32]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber clz32(_i1.JSNumber x);

  /// Method [min]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber min(_i1.JSArray<_i1.JSNumber> values);

  /// Method [acos]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber acos(_i1.JSNumber x);

  /// Method [log2]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log2(_i1.JSNumber x);

  /// Method [pow]
  ///
  /// Parameters:
  /// - x: number
  /// - y: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber pow(_i1.JSNumber x, _i1.JSNumber y);

  /// Property [LNtwo]
  ///
  /// readonly LNtwo: number
  @_i1.JS('LN2')
  external _i1.JSNumber get LNtwo;

  /// Property [PI]
  ///
  /// readonly PI: number
  external _i1.JSNumber get PI;
}

/// Interface [NumberConstructor]
extension type NumberConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [NEGATIVE_INFINITY]
  ///
  /// readonly NEGATIVE_INFINITY: number
  external _i1.JSNumber get NEGATIVE_INFINITY;

  /// Property [MIN_SAFE_INTEGER]
  ///
  /// readonly MIN_SAFE_INTEGER: number
  external _i1.JSNumber get MIN_SAFE_INTEGER;

  /// Method [parseFloat]
  ///
  /// Parameters:
  /// - string: string
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber parseFloat(_i1.JSString string);

  /// Property [MAX_VALUE]
  ///
  /// readonly MAX_VALUE: number
  external _i1.JSNumber get MAX_VALUE;

  /// Property [NaN]
  ///
  /// readonly NaN: number
  external _i1.JSNumber get NaN;

  /// Property [EPSILON]
  ///
  /// readonly EPSILON: number
  external _i1.JSNumber get EPSILON;

  /// Property [prototype]
  ///
  /// readonly prototype: Number
  external Number get prototype;

  /// Method [isNaN]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isNaN(_i1.JSAny number);

  /// Method [isInteger]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isInteger(_i1.JSAny number);

  /// Method [isSafeInteger]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isSafeInteger(_i1.JSAny number);

  /// Method [parseInt]
  ///
  /// Parameters:
  /// - string: string
  /// - radix: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix]);

  /// Property [MAX_SAFE_INTEGER]
  ///
  /// readonly MAX_SAFE_INTEGER: number
  external _i1.JSNumber get MAX_SAFE_INTEGER;

  /// Property [MIN_VALUE]
  ///
  /// readonly MIN_VALUE: number
  external _i1.JSNumber get MIN_VALUE;

  /// Method [isFinite]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isFinite(_i1.JSAny number);

  /// Property [POSITIVE_INFINITY]
  ///
  /// readonly POSITIVE_INFINITY: number
  external _i1.JSNumber get POSITIVE_INFINITY;
}

/// Interface [ObjectConstructor]
extension type ObjectConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o:  | ArrayLike
  ///
  /// Returns:
  /// - [string, T][]
  external _i1.JSArray<_i1.JSArray<_i1.JSAny>> entries<T extends _i1.JSAny>(_i1.JSAny o);

  /// Method [fromEntries]
  ///
  /// Type Parameters:
  /// - T = any
  ///
  /// Parameters:
  /// - entries: Iterable
  ///
  /// Returns:
  /// -
  external _i1.JSObject fromEntries<T extends _i1.JSAny>(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> entries);

  /// Method [is$]
  ///
  /// Parameters:
  /// - value1: any
  /// - value2: any
  ///
  /// Returns:
  /// - boolean
  @_i1.JS('is')
  external _i1.JSBoolean is$(_i1.JSAny value1, _i1.JSAny value2);

  /// Method [defineProperties]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  /// - properties:
  ///
  /// Returns:
  /// - T
  external T defineProperties<T extends _i1.JSAny>(T o, _i1.JSAny properties);

  /// Method [keys]
  ///
  /// Parameters:
  /// - o:
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> keys(_i1.JSObject o);

  /// Method [getOwnPropertyDescriptors]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  ///
  /// Returns:
  /// -
  external _i1.JSAny getOwnPropertyDescriptors<T extends _i1.JSAny>(T o);

  /// Method [getOwnPropertySymbols]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - []
  external _i1.JSArray<_i1.JSSymbol> getOwnPropertySymbols(_i1.JSAny o);

  /// Property [prototype]
  ///
  /// readonly prototype: Object
  external Object get prototype;

  /// Method [hasOwn]
  ///
  /// Parameters:
  /// - o: object
  /// - v: PropertyKey
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean hasOwn(_i1.JSObject o, PropertyKey v);

  /// Method [seal]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  ///
  /// Returns:
  /// - T
  external T seal<T extends _i1.JSAny>(T o);

  /// Method [create]
  ///
  /// Parameters:
  /// - o: object | null
  ///
  /// Returns:
  /// - any
  external _i1.JSAny create(_i1.JSObject? o);

  /// Method [freeze]
  ///
  /// Type Parameters:
  /// - T extends Function$
  ///
  /// Parameters:
  /// - f: T
  ///
  /// Returns:
  /// - T
  external T freeze<T extends Function$>(T f);

  /// Method [setPrototypeOf]
  ///
  /// Parameters:
  /// - o: any
  /// - proto: object | null
  ///
  /// Returns:
  /// - any
  external _i1.JSAny setPrototypeOf(_i1.JSAny o, _i1.JSObject? proto);

  /// Method [getPrototypeOf]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - any
  external _i1.JSAny getPrototypeOf(_i1.JSAny o);

  /// Method [defineProperty]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  /// - p: PropertyKey
  /// - attributes:
  ///
  /// Returns:
  /// - T
  external T defineProperty<T extends _i1.JSAny>(T o, PropertyKey p, _i1.JSAny attributes);

  /// Method [getOwnPropertyNames]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> getOwnPropertyNames(_i1.JSAny o);

  /// Method [values]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o:  | ArrayLike
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> values<T extends _i1.JSAny>(_i1.JSAny o);

  /// Method [isExtensible]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isExtensible(_i1.JSAny o);

  /// Method [isSealed]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isSealed(_i1.JSAny o);

  /// Method [preventExtensions]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  ///
  /// Returns:
  /// - T
  external T preventExtensions<T extends _i1.JSAny>(T o);

  /// Method [assign$1]
  ///
  /// Type Parameters:
  /// - T extends
  /// - U
  ///
  /// Parameters:
  /// - target: T
  /// - source: U
  ///
  /// Returns:
  /// -
  @_i1.JS('assign')
  external _i1.JSAny assign$1<T extends _i1.JSObject, U extends _i1.JSAny>(T target, U source);

  /// Method [getOwnPropertyDescriptor]
  ///
  /// Parameters:
  /// - o: any
  /// - p: PropertyKey
  ///
  /// Returns:
  /// - PropertyDescriptor | undefined
  external PropertyDescriptor? getOwnPropertyDescriptor(_i1.JSAny o, PropertyKey p);

  /// Method [isFrozen]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isFrozen(_i1.JSAny o);
}

/// Interface [ReadonlyArray]
extension type ReadonlyArray<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [toReversed]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: readonly T[]) => U
  /// - thisArg: any
  ///
  /// Returns:
  /// - U[]
  external _i1.JSArray<U> map<U extends _i1.JSAny>(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: readonly T[]) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<T> values();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: T
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('with')
  external _i1.JSArray<T> with$(_i1.JSNumber index, T value);

  /// Method [flat]
  ///
  /// Type Parameters:
  /// - A
  /// - D extends number = 1
  ///
  /// Parameters:
  /// - this: A
  /// - depth: D
  ///
  /// Returns:
  /// - FlatArray[]
  external _i1.JSArray<FlatArray<A, D>> flat<A extends _i1.JSAny, D extends _i1.JSNumber>(A this$, [D depth]);

  /// Method [flatMap]
  ///
  /// Type Parameters:
  /// - U
  /// - This = undefined
  ///
  /// Parameters:
  /// - callback: (this: This, value: T, index: number, array: T[]) => U | ReadonlyArray
  /// - thisArg: This
  ///
  /// Returns:
  /// - U[]
  external _i1.JSArray<U> flatMap<U extends _i1.JSAny, This extends _i1.JSAny>(_i1.JSFunction callback, [This thisArg]);

  /// Method [find$1]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  @_i1.JS('find')
  external S? find$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - T | undefined
  external T? at(_i1.JSNumber index);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  ///
  /// Returns:
  /// - T
  external T reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options:
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i1.JSAny options]);

  /// Method [filter]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S[]
  external _i1.JSArray<S> filter<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [concat]
  ///
  /// Parameters:
  /// - ...items: ConcatArray[]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> concat(_i1.JSArray<ConcatArray<T>> items);

  /// Method [every]
  ///
  /// Type Parameters:
  /// - S extends T
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean every<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSorted([_i1.JSFunction compareFn]);

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  ///
  /// Returns:
  /// - T
  external T reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toSpliced]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSpliced(_i1.JSNumber start, _i1.JSNumber deleteCount, _i1.JSArray<T> items);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(T searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [RegExp]
extension type RegExp.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [lastIndex]
  ///
  /// lastIndex: number
  external _i1.JSNumber lastIndex;

  /// Method [compile]
  ///
  /// Parameters:
  /// - pattern: string
  /// - flags: string
  ///
  /// Returns:
  /// -
  external _i1.JSAny compile(_i1.JSString pattern, [_i1.JSString flags]);

  /// Property [source]
  ///
  /// readonly source: string
  external _i1.JSString get source;

  /// Method [test]
  ///
  /// Parameters:
  /// - string: string
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean test(_i1.JSString string);

  /// Property [multiline]
  ///
  /// readonly multiline: boolean
  external _i1.JSBoolean get multiline;

  /// Property [sticky]
  ///
  /// readonly sticky: boolean
  external _i1.JSBoolean get sticky;

  /// Property [ignoreCase]
  ///
  /// readonly ignoreCase: boolean
  external _i1.JSBoolean get ignoreCase;

  /// Property [unicode]
  ///
  /// readonly unicode: boolean
  external _i1.JSBoolean get unicode;

  /// Method [exec]
  ///
  /// Parameters:
  /// - string: string
  ///
  /// Returns:
  /// - RegExpExecArray | null
  external RegExpExecArray? exec(_i1.JSString string);

  /// Property [flags]
  ///
  /// readonly flags: string
  external _i1.JSString get flags;

  /// Property [global]
  ///
  /// readonly global: boolean
  external _i1.JSBoolean get global;

  /// Property [dotAll]
  ///
  /// readonly dotAll: boolean
  external _i1.JSBoolean get dotAll;

  /// Property [hasIndices]
  ///
  /// readonly hasIndices: boolean
  external _i1.JSBoolean get hasIndices;
}

/// Interface [RegExpConstructor]
extension type RegExpConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [input]
  ///
  /// input: string
  @_i1.JS('"input"')
  external _i1.JSString input;

  /// Property [$two]
  ///
  /// $two: string
  @_i1.JS('"\$2"')
  external _i1.JSString $two;

  /// Property [$backquote]
  ///
  /// $backquote: string
  @_i1.JS('"\$`"')
  external _i1.JSString $backquote;

  /// Property [$singlequote]
  ///
  /// $singlequote: string
  @_i1.JS('"\$\'"')
  external _i1.JSString $singlequote;

  /// Property [lastParen]
  ///
  /// lastParen: string
  @_i1.JS('"lastParen"')
  external _i1.JSString lastParen;

  /// Property [$ampersand]
  ///
  /// $ampersand: string
  @_i1.JS('"\$&"')
  external _i1.JSString $ampersand;

  /// Property [$plus]
  ///
  /// $plus: string
  @_i1.JS('"\$+"')
  external _i1.JSString $plus;

  /// Property [$three]
  ///
  /// $three: string
  @_i1.JS('"\$3"')
  external _i1.JSString $three;

  /// Property [rightContext]
  ///
  /// rightContext: string
  @_i1.JS('"rightContext"')
  external _i1.JSString rightContext;

  /// Property [$eight]
  ///
  /// $eight: string
  @_i1.JS('"\$8"')
  external _i1.JSString $eight;

  /// Property [$five]
  ///
  /// $five: string
  @_i1.JS('"\$5"')
  external _i1.JSString $five;

  /// Property [$six]
  ///
  /// $six: string
  @_i1.JS('"\$6"')
  external _i1.JSString $six;

  /// Property [$_]
  ///
  /// $_: string
  @_i1.JS('"\$_"')
  external _i1.JSString $_;

  /// Property [lastMatch]
  ///
  /// lastMatch: string
  @_i1.JS('"lastMatch"')
  external _i1.JSString lastMatch;

  /// Property [$nine]
  ///
  /// $nine: string
  @_i1.JS('"\$9"')
  external _i1.JSString $nine;

  /// Property [$four]
  ///
  /// $four: string
  @_i1.JS('"\$4"')
  external _i1.JSString $four;

  /// Property [$one]
  ///
  /// $one: string
  @_i1.JS('"\$1"')
  external _i1.JSString $one;

  /// Property [leftContext]
  ///
  /// leftContext: string
  @_i1.JS('"leftContext"')
  external _i1.JSString leftContext;

  /// Property [$seven]
  ///
  /// $seven: string
  @_i1.JS('"\$7"')
  external _i1.JSString $seven;

  /// Property [prototype]
  ///
  /// readonly prototype: RegExp
  @_i1.JS('"prototype"')
  external RegExp get prototype;
}

/// Interface [String]
extension type String.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [strike]
  ///
  /// Returns:
  /// - string
  external _i1.JSString strike();

  /// Method [charAt]
  ///
  /// Parameters:
  /// - pos: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString charAt(_i1.JSNumber pos);

  /// Method [toUpperCase]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toUpperCase();

  /// Method [anchor]
  ///
  /// Parameters:
  /// - name: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString anchor(_i1.JSString name);

  /// Method [fontsize$1]
  ///
  /// Parameters:
  /// - size: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('fontsize')
  external _i1.JSString fontsize$1(_i1.JSNumber size);

  /// Method [padStart]
  ///
  /// Parameters:
  /// - maxLength: number
  /// - fillString: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString padStart(_i1.JSNumber maxLength, [_i1.JSString fillString]);

  /// Method [trim]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trim();

  /// Method [match]
  ///
  /// Parameters:
  /// - matcher:
  ///
  /// Returns:
  /// - RegExpMatchArray | null
  external RegExpMatchArray? match(_i1.JSObject matcher);

  /// Method [replaceAll]
  ///
  /// Parameters:
  /// - searchValue: string | RegExp
  /// - replaceValue: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString replaceAll(_i1.JSAny searchValue, _i1.JSString replaceValue);

  /// Method [trimStart]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimStart();

  /// Method [trimLeft]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimLeft();

  /// Method [repeat]
  ///
  /// Parameters:
  /// - count: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString repeat(_i1.JSNumber count);

  /// Method [small]
  ///
  /// Returns:
  /// - string
  external _i1.JSString small();

  /// Method [endsWith]
  ///
  /// Parameters:
  /// - searchString: string
  /// - endPosition: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean endsWith(_i1.JSString searchString, [_i1.JSNumber endPosition]);

  /// Method [fixed]
  ///
  /// Returns:
  /// - string
  external _i1.JSString fixed();

  /// Method [matchAll]
  ///
  /// Parameters:
  /// - regexp: RegExp
  ///
  /// Returns:
  /// - RegExpStringIterator
  external RegExpStringIterator<RegExpExecArray> matchAll(RegExp regexp);

  /// Method [bold]
  ///
  /// Returns:
  /// - string
  external _i1.JSString bold();

  /// Method [concat]
  ///
  /// Parameters:
  /// - ...strings: string[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString concat(_i1.JSArray<_i1.JSString> strings);

  /// Method [codePointAt]
  ///
  /// Parameters:
  /// - pos: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? codePointAt(_i1.JSNumber pos);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [search]
  ///
  /// Parameters:
  /// - searcher:
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber search(_i1.JSObject searcher);

  /// Method [startsWith]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean startsWith(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [substr]
  ///
  /// Parameters:
  /// - from: number
  /// - length: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString substr(_i1.JSNumber from, [_i1.JSNumber length]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [blink]
  ///
  /// Returns:
  /// - string
  external _i1.JSString blink();

  /// Method [sup]
  ///
  /// Returns:
  /// - string
  external _i1.JSString sup();

  /// Method [toLowerCase]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLowerCase();

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [split]
  ///
  /// Parameters:
  /// - splitter:
  /// - limit: number
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> split(_i1.JSObject splitter, [_i1.JSNumber limit]);

  /// Method [replace]
  ///
  /// Parameters:
  /// - searchValue:
  /// - replaceValue: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString replace(_i1.JSObject searchValue, _i1.JSString replaceValue);

  /// Method [toLocaleUpperCase]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleUpperCase([_i2.LocalesArgument locales]);

  /// Method [normalize$1]
  ///
  /// Parameters:
  /// - form: "NFC" | "NFD" | "NFKC" | "NFKD"
  ///
  /// Returns:
  /// - string
  @_i1.JS('normalize')
  external _i1.JSString normalize$1(_i1.JSString form);

  /// Method [localeCompare]
  ///
  /// Parameters:
  /// - that: string
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.CollatorOptions
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber localeCompare(_i1.JSString that, [_i2.LocalesArgument locales, _i2.CollatorOptions options]);

  /// Method [trimEnd]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimEnd();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - string | undefined
  external _i1.JSString? at(_i1.JSNumber index);

  /// Method [trimRight]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimRight();

  /// Method [substring]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString substring(_i1.JSNumber start, [_i1.JSNumber end]);

  /// Method [padEnd]
  ///
  /// Parameters:
  /// - maxLength: number
  /// - fillString: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString padEnd(_i1.JSNumber maxLength, [_i1.JSString fillString]);

  /// Method [link]
  ///
  /// Parameters:
  /// - url: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString link(_i1.JSString url);

  /// Method [fontcolor]
  ///
  /// Parameters:
  /// - color: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString fontcolor(_i1.JSString color);

  /// Method [sub]
  ///
  /// Returns:
  /// - string
  external _i1.JSString sub();

  /// Method [big]
  ///
  /// Returns:
  /// - string
  external _i1.JSString big();

  /// Method [toLocaleLowerCase]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleLowerCase([_i2.LocalesArgument locales]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - string
  external _i1.JSString valueOf();

  /// Method [italics]
  ///
  /// Returns:
  /// - string
  external _i1.JSString italics();

  /// Method [charCodeAt]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber charCodeAt(_i1.JSNumber index);
}

/// Interface [StringConstructor]
extension type StringConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [fromCodePoint]
  ///
  /// Parameters:
  /// - ...codePoints: number[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString fromCodePoint(_i1.JSArray<_i1.JSNumber> codePoints);

  /// Property [prototype]
  ///
  /// readonly prototype: String
  external String get prototype;

  /// Method [fromCharCode]
  ///
  /// Parameters:
  /// - ...codes: number[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString fromCharCode(_i1.JSArray<_i1.JSNumber> codes);

  /// Method [raw]
  ///
  /// Parameters:
  /// - template:
  /// - ...substitutions: any[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString raw(_i1.JSObject template, _i1.JSArray<_i1.JSAny> substitutions);
}

/// Interface [Int8Array]
extension type Int8Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('with')
  external _i1.JSInt8Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Uint8Array]
extension type Uint8Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('with')
  external _i1.JSUint8Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Uint8ClampedArray]
extension type Uint8ClampedArray<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('with')
  external _i1.JSUint8ClampedArray with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Int16Array]
extension type Int16Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('with')
  external _i1.JSInt16Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Uint16Array]
extension type Uint16Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('with')
  external _i1.JSUint16Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Int32Array]
extension type Int32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('with')
  external _i1.JSInt32Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Uint32Array]
extension type Uint32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('with')
  external _i1.JSUint32Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Float32Array]
extension type Float32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('with')
  external _i1.JSFloat32Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Float64Array]
extension type Float64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends number
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('with')
  external _i1.JSFloat64Array with$(_i1.JSNumber index, _i1.JSNumber value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSNumber value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [reduce]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduce(_i1.JSFunction callbackfn);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array toSorted([_i1.JSFunction compareFn]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();

  /// Method [reduceRight]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber reduceRight(_i1.JSFunction callbackfn);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [Generator]
extension type Generator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, TReturn, TNext> {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...arrayBindingPattern: [] | [TNext]
  ///
  /// Returns:
  /// - IteratorResult
  external IteratorResult<T, TReturn> next(_i1.JSArray<_i1.JSAny> arrayBindingPattern);

  /// Method [return$]
  ///
  /// Parameters:
  /// - value: TReturn
  ///
  /// Returns:
  /// - IteratorResult
  @_i1.JS('return')
  external IteratorResult<T, TReturn> return$(TReturn value);

  /// Method [throw$]
  ///
  /// Parameters:
  /// - e: any
  ///
  /// Returns:
  /// - IteratorResult
  @_i1.JS('throw')
  external IteratorResult<T, TReturn> throw$(_i1.JSAny e);
}

/// Interface [GeneratorFunction]
extension type GeneratorFunction.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

  /// Property [prototype]
  ///
  /// readonly prototype: Generator
  external Generator<_i1.JSAny, _i1.JSAny, _i1.JSAny> get prototype;
}

/// Interface [GeneratorFunctionConstructor]
extension type GeneratorFunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

  /// Property [prototype]
  ///
  /// readonly prototype: GeneratorFunction
  external GeneratorFunction get prototype;
}

/// Interface [SymbolConstructor]
extension type SymbolConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Method [keyFor]
  ///
  /// Parameters:
  /// - sym:
  ///
  /// Returns:
  /// - string | undefined
  external _i1.JSString? keyFor(_i1.JSSymbol sym);

  /// Property [search]
  ///
  /// readonly search:
  external _i1.JSSymbol get search;

  /// Property [toPrimitive]
  ///
  /// readonly toPrimitive:
  external _i1.JSSymbol get toPrimitive;

  /// Property [asyncIterator]
  ///
  /// readonly asyncIterator:
  external _i1.JSSymbol get asyncIterator;

  /// Property [matchAll]
  ///
  /// readonly matchAll:
  external _i1.JSSymbol get matchAll;

  /// Property [hasInstance]
  ///
  /// readonly hasInstance:
  external _i1.JSSymbol get hasInstance;

  /// Property [iterator]
  ///
  /// readonly iterator:
  external _i1.JSSymbol get iterator;

  /// Property [prototype]
  ///
  /// readonly prototype: Symbol
  external _i1.JSSymbol get prototype;

  /// Property [split]
  ///
  /// readonly split:
  external _i1.JSSymbol get split;

  /// Method [for$]
  ///
  /// Parameters:
  /// - key: string
  ///
  /// Returns:
  /// -
  @_i1.JS('for')
  external _i1.JSSymbol for$(_i1.JSString key);

  /// Property [match]
  ///
  /// readonly match:
  external _i1.JSSymbol get match;

  /// Property [species]
  ///
  /// readonly species:
  external _i1.JSSymbol get species;

  /// Property [isConcatSpreadable]
  ///
  /// readonly isConcatSpreadable:
  external _i1.JSSymbol get isConcatSpreadable;

  /// Property [replace]
  ///
  /// readonly replace:
  external _i1.JSSymbol get replace;

  /// Property [unscopables]
  ///
  /// readonly unscopables:
  external _i1.JSSymbol get unscopables;

  /// Property [toStringTag]
  ///
  /// readonly toStringTag:
  external _i1.JSSymbol get toStringTag;
}

/// Interface [IteratorYieldResult]
extension type IteratorYieldResult<TYield extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [done]
  ///
  /// done?: false
  external _i1.JSBoolean? done;

  /// Property [value]
  ///
  /// value: TYield
  external TYield value;
}

/// Interface [IteratorReturnResult]
extension type IteratorReturnResult<TReturn extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [done]
  ///
  /// done: true
  external _i1.JSBoolean done;

  /// Property [value]
  ///
  /// value: TReturn
  external TReturn value;
}

/// Typedef [IteratorResult]
///
/// IteratorYieldResult | IteratorReturnResult
typedef IteratorResult<T extends _i1.JSAny, TReturn extends _i1.JSAny> = _i1.JSAny;

/// Interface [Iterator]
extension type Iterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...arrayBindingPattern: [] | [TNext]
  ///
  /// Returns:
  /// - IteratorResult
  external IteratorResult<T, TReturn> next(_i1.JSArray<_i1.JSAny> arrayBindingPattern);

  /// Method [return$]
  ///
  /// Parameters:
  /// - value: TReturn
  ///
  /// Returns:
  /// - IteratorResult
  @_i1.JS('return')
  external IteratorResult<T, TReturn> return$([TReturn value]);

  /// Method [throw$]
  ///
  /// Parameters:
  /// - e: any
  ///
  /// Returns:
  /// - IteratorResult
  @_i1.JS('throw')
  external IteratorResult<T, TReturn> throw$([_i1.JSAny e]);
}

/// Interface [Iterable]
extension type Iterable<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {}

/// Interface [IterableIterator]
extension type IterableIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(
  _i1.JSObject _
)
    implements _i1.JSObject, Iterator<T, TReturn, TNext> {}

/// Interface [IteratorObject]
extension type IteratorObject<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, Iterator<T, TReturn, TNext> {}

/// Typedef [BuiltinIteratorReturn]
///
///
typedef BuiltinIteratorReturn = _i1.JSAny;

/// Interface [ArrayIterator]
extension type ArrayIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [IArguments]
extension type IArguments.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [length]
  ///
  /// length: number
  external _i1.JSNumber length;

  /// Property [callee]
  ///
  /// callee: Function$
  external Function$ callee;
}

/// Interface [MapIterator]
extension type MapIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [SetIterator]
extension type SetIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [Promise]
extension type Promise<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [finally$]
  ///
  /// Parameters:
  /// - onfinally: (() => void) | undefined | null
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('finally')
  external _i1.JSPromise<T> finally$([_i1.JSFunction? onfinally]);

  /// Method [then]
  ///
  /// Type Parameters:
  /// - TResult1 = T
  /// - TResult2 =
  ///
  /// Parameters:
  /// - onfulfilled: ((value: T) => TResult1 | PromiseLike) | undefined | null
  /// - onrejected: ((reason: any) => TResult2 | PromiseLike) | undefined | null
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<_i1.JSAny> then<TResult1 extends _i1.JSAny, TResult2 extends _i1.JSAny>([
    _i1.JSFunction? onfulfilled,
    _i1.JSFunction? onrejected,
  ]);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [catch$]
  ///
  /// Type Parameters:
  /// - TResult =
  ///
  /// Parameters:
  /// - onrejected: ((reason: any) => TResult | PromiseLike) | undefined | null
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('catch')
  external _i1.JSPromise<_i1.JSAny> catch$<TResult extends _i1.JSAny>([_i1.JSFunction? onrejected]);
}

/// Interface [PromiseConstructor]
extension type PromiseConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [any]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<Awaited> any<T extends _i1.JSAny>(T values);

  /// Method [resolve]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise resolve();

  /// Method [allSettled]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<_i1.JSObject> allSettled<T extends _i1.JSAny>(T values);

  /// Method [all]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<_i1.JSArray<Awaited<T>>> all<T extends _i1.JSAny>(
    Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values,
  );

  /// Method [race]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<Awaited<T>> race<T extends _i1.JSAny>(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values);

  /// Property [prototype]
  ///
  /// readonly prototype: Promise
  external _i1.JSPromise<_i1.JSAny> get prototype;

  /// Method [reject]
  ///
  /// Type Parameters:
  /// - T =
  ///
  /// Parameters:
  /// - reason: any
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<T> reject<T extends _i1.JSAny>([_i1.JSAny reason]);
}

/// Interface [StringIterator]
extension type StringIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [Int8ArrayConstructor]
extension type Int8ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('from')
  external _i1.JSInt8Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Int8Array
  external _i1.JSInt8Array get prototype;
}

/// Interface [Uint8ArrayConstructor]
extension type Uint8ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('from')
  external _i1.JSUint8Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Uint8Array
  external _i1.JSUint8Array get prototype;
}

/// Interface [Uint8ClampedArrayConstructor]
extension type Uint8ClampedArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('from')
  external _i1.JSUint8ClampedArray from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Uint8ClampedArray
  external _i1.JSUint8ClampedArray get prototype;
}

/// Interface [Int16ArrayConstructor]
extension type Int16ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('from')
  external _i1.JSInt16Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Int16Array
  external _i1.JSInt16Array get prototype;
}

/// Interface [Uint16ArrayConstructor]
extension type Uint16ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('from')
  external _i1.JSUint16Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Uint16Array
  external _i1.JSUint16Array get prototype;
}

/// Interface [Int32ArrayConstructor]
extension type Int32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('from')
  external _i1.JSInt32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Int32Array
  external _i1.JSInt32Array get prototype;
}

/// Interface [Uint32ArrayConstructor]
extension type Uint32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('from')
  external _i1.JSUint32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Uint32Array
  external _i1.JSUint32Array get prototype;
}

/// Interface [Float32ArrayConstructor]
extension type Float32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('from')
  external _i1.JSFloat32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Float32Array
  external _i1.JSFloat32Array get prototype;
}

/// Interface [Float64ArrayConstructor]
extension type Float64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('from')
  external _i1.JSFloat64Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Property [prototype]
  ///
  /// readonly prototype: Float64Array
  external _i1.JSFloat64Array get prototype;
}

/// Interface [ProxyHandler]
extension type ProxyHandler<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [apply]
  ///
  /// Parameters:
  /// - target: T
  /// - thisArg: any
  /// - argArray: any[]
  ///
  /// Returns:
  /// - any
  external _i1.JSAny apply(T target, _i1.JSAny thisArg, _i1.JSArray<_i1.JSAny> argArray);

  /// Method [construct]
  ///
  /// Parameters:
  /// - target: T
  /// - argArray: any[]
  /// - newTarget: Function$
  ///
  /// Returns:
  /// - object
  external _i1.JSObject construct(T target, _i1.JSArray<_i1.JSAny> argArray, Function$ newTarget);

  /// Method [defineProperty]
  ///
  /// Parameters:
  /// - target: T
  /// - property: string |
  /// - attributes: PropertyDescriptor
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean defineProperty(T target, _i1.JSAny property, PropertyDescriptor attributes);

  /// Method [deleteProperty]
  ///
  /// Parameters:
  /// - target: T
  /// - p: string |
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean deleteProperty(T target, _i1.JSAny p);

  /// Method [get]
  ///
  /// Parameters:
  /// - target: T
  /// - p: string |
  /// - receiver: any
  ///
  /// Returns:
  /// - any
  external _i1.JSAny get(T target, _i1.JSAny p, _i1.JSAny receiver);

  /// Method [getOwnPropertyDescriptor]
  ///
  /// Parameters:
  /// - target: T
  /// - p: string |
  ///
  /// Returns:
  /// - PropertyDescriptor | undefined
  external PropertyDescriptor? getOwnPropertyDescriptor(T target, _i1.JSAny p);

  /// Method [getPrototypeOf]
  ///
  /// Parameters:
  /// - target: T
  ///
  /// Returns:
  /// - object | null
  external _i1.JSObject? getPrototypeOf(T target);

  /// Method [has]
  ///
  /// Parameters:
  /// - target: T
  /// - p: string |
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(T target, _i1.JSAny p);

  /// Method [isExtensible]
  ///
  /// Parameters:
  /// - target: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isExtensible(T target);

  /// Method [ownKeys]
  ///
  /// Parameters:
  /// - target: T
  ///
  /// Returns:
  /// - ArrayLike
  external ArrayLike<_i1.JSAny> ownKeys(T target);

  /// Method [preventExtensions]
  ///
  /// Parameters:
  /// - target: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean preventExtensions(T target);

  /// Method [set]
  ///
  /// Parameters:
  /// - target: T
  /// - p: string |
  /// - newValue: any
  /// - receiver: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean set(T target, _i1.JSAny p, _i1.JSAny newValue, _i1.JSAny receiver);

  /// Method [setPrototypeOf]
  ///
  /// Parameters:
  /// - target: T
  /// - v: object | null
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean setPrototypeOf(T target, _i1.JSObject? v);
}

/// Interface [ProxyConstructor]
extension type ProxyConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [revocable]
  ///
  /// Type Parameters:
  /// - T extends object
  ///
  /// Parameters:
  /// - target: T
  /// - handler: ProxyHandler
  ///
  /// Returns:
  /// -
  external _i1.JSObject revocable<T extends _i1.JSAny>(T target, ProxyHandler<T> handler);
}

/// Interface [Symbol]
extension type Symbol.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSSymbol valueOf();

  /// Property [description]
  ///
  /// readonly description: string | undefined
  external _i1.JSString get description;

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();
}

/// Interface [Date]
extension type Date.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [setUTCDate]
  ///
  /// Parameters:
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCDate(_i1.JSNumber date);

  /// Method [getDate]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getDate();

  /// Method [setUTCMonth]
  ///
  /// Parameters:
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCMonth(_i1.JSNumber month, [_i1.JSNumber date]);

  /// Method [setUTCMinutes]
  ///
  /// Parameters:
  /// - min: number
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCMinutes(_i1.JSNumber min, [_i1.JSNumber sec, _i1.JSNumber ms]);

  /// Method [getTimezoneOffset]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getTimezoneOffset();

  /// Method [getTime]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getTime();

  /// Method [getUTCMinutes]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMinutes();

  /// Method [getUTCDate]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCDate();

  /// Method [setSeconds]
  ///
  /// Parameters:
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setSeconds(_i1.JSNumber sec, [_i1.JSNumber ms]);

  /// Method [toJSON]
  ///
  /// Parameters:
  /// - key: any
  ///
  /// Returns:
  /// - string
  external _i1.JSString toJSON([_i1.JSAny key]);

  /// Method [getMilliseconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMilliseconds();

  /// Method [setTime]
  ///
  /// Parameters:
  /// - time: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setTime(_i1.JSNumber time);

  /// Method [getDay]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getDay();

  /// Method [toISOString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toISOString();

  /// Method [setDate]
  ///
  /// Parameters:
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setDate(_i1.JSNumber date);

  /// Method [toTimeString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toTimeString();

  /// Method [toUTCString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toUTCString();

  /// Method [getUTCFullYear]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCFullYear();

  /// Method [getUTCSeconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCSeconds();

  /// Method [getMonth]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMonth();

  /// Method [getUTCDay]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCDay();

  /// Method [getUTCMonth]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMonth();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [setUTCMilliseconds]
  ///
  /// Parameters:
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCMilliseconds(_i1.JSNumber ms);

  /// Method [setFullYear]
  ///
  /// Parameters:
  /// - year: number
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setFullYear(_i1.JSNumber year, [_i1.JSNumber month, _i1.JSNumber date]);

  /// Method [getFullYear]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFullYear();

  /// Method [setUTCHours]
  ///
  /// Parameters:
  /// - hours: number
  /// - min: number
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCHours(_i1.JSNumber hours, [_i1.JSNumber min, _i1.JSNumber sec, _i1.JSNumber ms]);

  /// Method [toDateString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toDateString();

  /// Method [setMonth]
  ///
  /// Parameters:
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setMonth(_i1.JSNumber month, [_i1.JSNumber date]);

  /// Method [getUTCHours]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCHours();

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [toLocaleDateString]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleDateString([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [getSeconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getSeconds();

  /// Method [getUTCMilliseconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMilliseconds();

  /// Method [setMilliseconds]
  ///
  /// Parameters:
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setMilliseconds(_i1.JSNumber ms);

  /// Method [getHours]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getHours();

  /// Method [getMinutes]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMinutes();

  /// Method [setMinutes]
  ///
  /// Parameters:
  /// - min: number
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setMinutes(_i1.JSNumber min, [_i1.JSNumber sec, _i1.JSNumber ms]);

  /// Method [setUTCSeconds]
  ///
  /// Parameters:
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCSeconds(_i1.JSNumber sec, [_i1.JSNumber ms]);

  /// Method [setUTCFullYear]
  ///
  /// Parameters:
  /// - year: number
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCFullYear(_i1.JSNumber year, [_i1.JSNumber month, _i1.JSNumber date]);

  /// Method [toLocaleTimeString]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleTimeString([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber valueOf();

  /// Method [setHours]
  ///
  /// Parameters:
  /// - hours: number
  /// - min: number
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setHours(_i1.JSNumber hours, [_i1.JSNumber min, _i1.JSNumber sec, _i1.JSNumber ms]);
}

/// Interface [JSON]
extension type JSON.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [stringify]
  ///
  /// Parameters:
  /// - value: any
  /// - replacer: (this: any, key: string, value: any) => any
  /// - space: string | number
  ///
  /// Returns:
  /// - string
  external _i1.JSString stringify(_i1.JSAny value, [_i1.JSFunction replacer, _i1.JSAny space]);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [parse]
  ///
  /// Parameters:
  /// - text: string
  /// - reviver: (this: any, key: string, value: any) => any
  ///
  /// Returns:
  /// - any
  external _i1.JSAny parse(_i1.JSString text, [_i1.JSFunction reviver]);
}

/// Interface [ArrayBuffer]
extension type ArrayBuffer.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Property [null$]
  ///
  /// readonly null$: "ArrayBuffer"
  external _i1.JSString get null$;

  /// Method [slice]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - ArrayBuffer
  external _i1.JSArrayBuffer slice([_i1.JSNumber begin, _i1.JSNumber end]);
}

/// Interface [DataView]
extension type DataView<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [setUint8]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  ///
  /// Returns:
  /// - void
  external void setUint8(_i1.JSNumber byteOffset, _i1.JSNumber value);

  /// Method [setBigUint64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: bigint
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setBigUint64(_i1.JSNumber byteOffset, _i1.JSBigInt value, [_i1.JSBoolean littleEndian]);

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [setBigInt64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: bigint
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setBigInt64(_i1.JSNumber byteOffset, _i1.JSBigInt value, [_i1.JSBoolean littleEndian]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [setUint16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setUint16(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Method [setInt16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setInt16(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Method [setInt32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setInt32(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [setInt8]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  ///
  /// Returns:
  /// - void
  external void setInt8(_i1.JSNumber byteOffset, _i1.JSNumber value);

  /// Method [getFloat64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFloat64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [setFloat64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setFloat64(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Method [getBigInt64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt getBigInt64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getUint16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint16(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [setFloat32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setFloat32(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Method [getInt32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getFloat32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFloat32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [setUint32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - void
  external void setUint32(_i1.JSNumber byteOffset, _i1.JSNumber value, [_i1.JSBoolean littleEndian]);

  /// Method [getUint32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getUint8]
  ///
  /// Parameters:
  /// - byteOffset: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint8(_i1.JSNumber byteOffset);

  /// Method [getBigUint64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt getBigUint64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [getInt16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt16(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getInt8]
  ///
  /// Parameters:
  /// - byteOffset: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt8(_i1.JSNumber byteOffset);
}

/// Interface [ArrayBufferConstructor]
extension type ArrayBufferConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [null$]
  ///
  /// readonly null$: ArrayBufferConstructor
  external ArrayBufferConstructor get null$;

  /// Method [isView]
  ///
  /// Parameters:
  /// - arg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean isView(_i1.JSAny arg);

  /// Property [prototype]
  ///
  /// readonly prototype: ArrayBuffer
  external _i1.JSArrayBuffer get prototype;
}

/// Interface [SharedArrayBuffer]
extension type SharedArrayBuffer.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [slice]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - SharedArrayBuffer
  external SharedArrayBuffer slice([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Property [null$]
  ///
  /// readonly null$: "SharedArrayBuffer"
  external _i1.JSString get null$;
}

/// Interface [SharedArrayBufferConstructor]
extension type SharedArrayBufferConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: SharedArrayBuffer
  external SharedArrayBuffer get prototype;

  /// Property [null$]
  ///
  /// readonly null$: SharedArrayBufferConstructor
  external SharedArrayBufferConstructor get null$;
}

/// Interface [ArrayBufferTypes]
extension type ArrayBufferTypes.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [ArrayBuffer$]
  ///
  /// ArrayBuffer$: ArrayBuffer
  @_i1.JS('ArrayBuffer')
  external _i1.JSArrayBuffer ArrayBuffer$;

  /// Property [SharedArrayBuffer$]
  ///
  /// SharedArrayBuffer$: SharedArrayBuffer
  @_i1.JS('SharedArrayBuffer')
  external SharedArrayBuffer SharedArrayBuffer$;
}

/// Interface [Atomics]
extension type Atomics.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [add]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber add(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [compareExchange]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - expectedValue: number
  /// - replacementValue: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber compareExchange(
    _i1.JSAny typedArray,
    _i1.JSNumber index,
    _i1.JSNumber expectedValue,
    _i1.JSNumber replacementValue,
  );

  /// Method [or]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber or(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [load]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber load(_i1.JSAny typedArray, _i1.JSNumber index);

  /// Method [notify]
  ///
  /// Parameters:
  /// - typedArray: Int32Array
  /// - index: number
  /// - count: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber notify(_i1.JSInt32Array typedArray, _i1.JSNumber index, [_i1.JSNumber count]);

  /// Method [store]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber store(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [sub]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sub(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [xor]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber xor(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [wait]
  ///
  /// Parameters:
  /// - typedArray: Int32Array
  /// - index: number
  /// - value: number
  /// - timeout: number
  ///
  /// Returns:
  /// - "ok" | "not-equal" | "timed-out"
  external _i1.JSString wait(
    _i1.JSInt32Array typedArray,
    _i1.JSNumber index,
    _i1.JSNumber value, [
    _i1.JSNumber timeout,
  ]);

  /// Property [null$]
  ///
  /// readonly null$: "Atomics"
  external _i1.JSString get null$;

  /// Method [isLockFree]
  ///
  /// Parameters:
  /// - size: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isLockFree(_i1.JSNumber size);

  /// Method [and]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber and(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [exchange]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber exchange(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);
}

/// Interface [AsyncGenerator]
extension type AsyncGenerator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, AsyncIteratorObject<T, TReturn, TNext> {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...arrayBindingPattern: [] | [TNext]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<IteratorResult<T, TReturn>> next(_i1.JSArray<_i1.JSAny> arrayBindingPattern);

  /// Method [return$]
  ///
  /// Parameters:
  /// - value: TReturn | PromiseLike
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('return')
  external _i1.JSPromise<IteratorResult<T, TReturn>> return$(_i1.JSAny value);

  /// Method [throw$]
  ///
  /// Parameters:
  /// - e: any
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('throw')
  external _i1.JSPromise<IteratorResult<T, TReturn>> throw$(_i1.JSAny e);
}

/// Interface [AsyncGeneratorFunction]
extension type AsyncGeneratorFunction.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

  /// Property [prototype]
  ///
  /// readonly prototype: AsyncGenerator
  external AsyncGenerator<_i1.JSAny, _i1.JSAny, _i1.JSAny> get prototype;
}

/// Interface [AsyncGeneratorFunctionConstructor]
extension type AsyncGeneratorFunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

  /// Property [prototype]
  ///
  /// readonly prototype: AsyncGeneratorFunction
  external AsyncGeneratorFunction get prototype;
}

/// Interface [AsyncIterator]
extension type AsyncIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...arrayBindingPattern: [] | [TNext]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<IteratorResult<T, TReturn>> next(_i1.JSArray<_i1.JSAny> arrayBindingPattern);

  /// Method [return$]
  ///
  /// Parameters:
  /// - value: TReturn | PromiseLike
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('return')
  external _i1.JSPromise<IteratorResult<T, TReturn>> return$([_i1.JSAny value]);

  /// Method [throw$]
  ///
  /// Parameters:
  /// - e: any
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('throw')
  external _i1.JSPromise<IteratorResult<T, TReturn>> throw$([_i1.JSAny e]);
}

/// Interface [AsyncIterable]
extension type AsyncIterable<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject {}

/// Interface [AsyncIterableIterator]
extension type AsyncIterableIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(
  _i1.JSObject _
)
    implements _i1.JSObject, AsyncIterator<T, TReturn, TNext> {}

/// Interface [AsyncIteratorObject]
extension type AsyncIteratorObject<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(
  _i1.JSObject _
)
    implements _i1.JSObject, AsyncIterator<T, TReturn, TNext> {}

/// Interface [RegExpMatchArray]
extension type RegExpMatchArray.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [index]
  ///
  /// index?: number
  external _i1.JSNumber? index;

  /// Property [input]
  ///
  /// input?: string
  external _i1.JSString? input;

  /// Property [zero]
  ///
  /// zero: string
  @_i1.JS('0')
  external _i1.JSString zero;

  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;

  /// Property [indices]
  ///
  /// indices?: RegExpIndicesArray
  external RegExpIndicesArray? indices;
}

/// Interface [RegExpExecArray]
extension type RegExpExecArray.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [index]
  ///
  /// index: number
  external _i1.JSNumber index;

  /// Property [input]
  ///
  /// input: string
  external _i1.JSString input;

  /// Property [zero]
  ///
  /// zero: string
  @_i1.JS('0')
  external _i1.JSString zero;

  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;

  /// Property [indices]
  ///
  /// indices?: RegExpIndicesArray
  external RegExpIndicesArray? indices;
}

/// Typedef [FlatArray]
///
/// []
typedef FlatArray<Arr extends _i1.JSAny, Depth extends _i1.JSNumber> = _i1.JSAny;

/// Interface [BigIntToLocaleStringOptions]
extension type BigIntToLocaleStringOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: string
  external _i1.JSString? localeMatcher;

  /// Property [style]
  ///
  /// style?: string
  external _i1.JSString? style;

  /// Property [numberingSystem]
  ///
  /// numberingSystem?: string
  external _i1.JSString? numberingSystem;

  /// Property [unit]
  ///
  /// unit?: string
  external _i1.JSString? unit;

  /// Property [unitDisplay]
  ///
  /// unitDisplay?: string
  external _i1.JSString? unitDisplay;

  /// Property [currency]
  ///
  /// currency?: string
  external _i1.JSString? currency;

  /// Property [currencyDisplay]
  ///
  /// currencyDisplay?: string
  external _i1.JSString? currencyDisplay;

  /// Property [useGrouping]
  ///
  /// useGrouping?: boolean
  external _i1.JSBoolean? useGrouping;

  /// Property [minimumIntegerDigits]
  ///
  /// minimumIntegerDigits?: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21
  external _i1.JSNumber? minimumIntegerDigits;

  /// Property [minimumFractionDigits]
  ///
  /// minimumFractionDigits?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20
  external _i1.JSNumber? minimumFractionDigits;

  /// Property [maximumFractionDigits]
  ///
  /// maximumFractionDigits?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20
  external _i1.JSNumber? maximumFractionDigits;

  /// Property [minimumSignificantDigits]
  ///
  /// minimumSignificantDigits?: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21
  external _i1.JSNumber? minimumSignificantDigits;

  /// Property [maximumSignificantDigits]
  ///
  /// maximumSignificantDigits?: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21
  external _i1.JSNumber? maximumSignificantDigits;

  /// Property [notation]
  ///
  /// notation?: string
  external _i1.JSString? notation;

  /// Property [compactDisplay]
  ///
  /// compactDisplay?: string
  external _i1.JSString? compactDisplay;
}

/// Interface [BigInt]
extension type BigInt.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [toString$]
  ///
  /// Parameters:
  /// - radix: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$([_i1.JSNumber radix]);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: BigIntToLocaleStringOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i2.LocalesArgument locales, BigIntToLocaleStringOptions options]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt valueOf();

  /// Property [null$]
  ///
  /// readonly null$: "BigInt"
  external _i1.JSString get null$;
}

/// Interface [BigIntConstructor]
extension type BigIntConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: BigInt
  external _i1.JSBigInt get prototype;

  /// Method [asIntN]
  ///
  /// Parameters:
  /// - bits: number
  /// - int: bigint
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt asIntN(_i1.JSNumber bits, _i1.JSBigInt int);

  /// Method [asUintN]
  ///
  /// Parameters:
  /// - bits: number
  /// - int: bigint
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt asUintN(_i1.JSNumber bits, _i1.JSBigInt int);
}

/// Interface [BigInt64Array]
extension type BigInt64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [toReversed]
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigInt64Array) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends bigint
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSBigInt>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<TArrayBuffer> subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigInt64Array) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSBigInt> values();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - BigInt64Array
  @_i1.JS('with')
  external BigInt64Array<_i1.JSArrayBuffer> with$(_i1.JSNumber index, _i1.JSBigInt value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: bigint
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSBigInt value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? at(_i1.JSNumber index);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduce')
  external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSBigInt> array, [_i1.JSNumber offset]);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number | bigint
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> toSorted([_i1.JSFunction compareFn]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<TArrayBuffer> valueOf();

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduceRight')
  external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [BigInt64ArrayConstructor]
extension type BigInt64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: BigInt64Array
  external BigInt64Array<ArrayBufferLike> get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: bigint[]
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> of(_i1.JSArray<_i1.JSBigInt> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - BigInt64Array
  @_i1.JS('from')
  external BigInt64Array<_i1.JSArrayBuffer> from$1(ArrayLike<_i1.JSBigInt> arrayLike);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: U, k: number) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  @_i1.JS('from')
  external BigInt64Array<_i1.JSArrayBuffer> from$2<U extends _i1.JSAny>(
    ArrayLike<U> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - BigInt64Array
  @_i1.JS('from')
  external BigInt64Array<_i1.JSArrayBuffer> from$3(Iterable<_i1.JSBigInt, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  @_i1.JS('from')
  external BigInt64Array<_i1.JSArrayBuffer> from$4<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);
}

/// Interface [BigUint64Array]
extension type BigUint64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [toReversed]
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> toReversed();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigUint64Array) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [findLast]
  ///
  /// Type Parameters:
  /// - S extends bigint
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - S | undefined
  external S? findLast<S extends _i1.JSBigInt>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<TArrayBuffer> subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigUint64Array) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSBigInt> values();

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [with$]
  ///
  /// Parameters:
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - BigUint64Array
  @_i1.JS('with')
  external BigUint64Array<_i1.JSArrayBuffer> with$(_i1.JSNumber index, _i1.JSBigInt value);

  /// Method [copyWithin]
  ///
  /// Parameters:
  /// - target: number
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end]);

  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [fill]
  ///
  /// Parameters:
  /// - value: bigint
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// -
  external _i1.JSAny fill(_i1.JSBigInt value, [_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? at(_i1.JSNumber index);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduce')
  external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSBigInt> array, [_i1.JSNumber offset]);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options]);

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number | bigint
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> toSorted([_i1.JSFunction compareFn]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<TArrayBuffer> valueOf();

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduceRight')
  external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);
}

/// Interface [BigUint64ArrayConstructor]
extension type BigUint64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: BigUint64Array
  external BigUint64Array<ArrayBufferLike> get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: bigint[]
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> of(_i1.JSArray<_i1.JSBigInt> items);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - BigUint64Array
  @_i1.JS('from')
  external BigUint64Array<_i1.JSArrayBuffer> from$1(ArrayLike<_i1.JSBigInt> arrayLike);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: U, k: number) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  @_i1.JS('from')
  external BigUint64Array<_i1.JSArrayBuffer> from$2<U extends _i1.JSAny>(
    ArrayLike<U> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - BigUint64Array
  @_i1.JS('from')
  external BigUint64Array<_i1.JSArrayBuffer> from$3(Iterable<_i1.JSBigInt, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  @_i1.JS('from')
  external BigUint64Array<_i1.JSArrayBuffer> from$4<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Number]
extension type Number.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i2.LocalesArgument locales, _i2.NumberFormatOptions options]);

  /// Method [toExponential]
  ///
  /// Parameters:
  /// - fractionDigits: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toExponential([_i1.JSNumber fractionDigits]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber valueOf();

  /// Method [toPrecision]
  ///
  /// Parameters:
  /// - precision: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toPrecision([_i1.JSNumber precision]);

  /// Method [toFixed]
  ///
  /// Parameters:
  /// - fractionDigits: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toFixed([_i1.JSNumber fractionDigits]);

  /// Method [toString$]
  ///
  /// Parameters:
  /// - radix: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$([_i1.JSNumber radix]);
}

/// Interface [PromiseFulfilledResult]
extension type PromiseFulfilledResult<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [status]
  ///
  /// status: "fulfilled"
  external _i1.JSString status;

  /// Property [value]
  ///
  /// value: T
  external T value;
}

/// Interface [PromiseRejectedResult]
extension type PromiseRejectedResult.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [status]
  ///
  /// status: "rejected"
  external _i1.JSString status;

  /// Property [reason]
  ///
  /// reason: any
  external _i1.JSAny reason;
}

/// Typedef [PromiseSettledResult]
///
/// PromiseFulfilledResult | PromiseRejectedResult
typedef PromiseSettledResult<T extends _i1.JSAny> = _i1.JSAny;

/// Interface [RegExpStringIterator]
extension type RegExpStringIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [AggregateError]
extension type AggregateError.$(_i1.JSObject _) implements _i1.JSObject, Error {
  /// Property [errors]
  ///
  /// errors: any[]
  external _i1.JSArray<_i1.JSAny> errors;
}

/// Interface [AggregateErrorConstructor]
extension type AggregateErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: AggregateError
  external AggregateError get prototype;
}

/// Interface [WeakRef]
extension type WeakRef<T extends WeakKey>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [null$]
  ///
  /// readonly null$: "WeakRef"
  external _i1.JSString get null$;

  /// Method [deref]
  ///
  /// Returns:
  /// - T | undefined
  external T? deref();
}

/// Interface [WeakRefConstructor]
extension type WeakRefConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: WeakRef
  external WeakRef<_i1.JSAny> get prototype;
}

/// Interface [FinalizationRegistry]
extension type FinalizationRegistry<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [null$]
  ///
  /// readonly null$: "FinalizationRegistry"
  external _i1.JSString get null$;

  /// Method [register]
  ///
  /// Parameters:
  /// - target: WeakKey
  /// - heldValue: T
  /// - unregisterToken: WeakKey
  ///
  /// Returns:
  /// - void
  external void register(WeakKey target, T heldValue, [WeakKey unregisterToken]);

  /// Method [unregister]
  ///
  /// Parameters:
  /// - unregisterToken: WeakKey
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean unregister(WeakKey unregisterToken);
}

/// Interface [FinalizationRegistryConstructor]
extension type FinalizationRegistryConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: FinalizationRegistry
  external FinalizationRegistry<_i1.JSAny> get prototype;
}

/// Interface [ErrorOptions]
extension type ErrorOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [cause]
  ///
  /// cause?:
  external _i1.JSAny? cause;
}

/// Interface [Error]
extension type Error.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [stack]
  ///
  /// stack?: string
  external _i1.JSString? stack;

  /// Property [name]
  ///
  /// name: string
  external _i1.JSString name;

  /// Property [cause]
  ///
  /// cause?:
  external _i1.JSAny? cause;

  /// Property [message]
  ///
  /// message: string
  external _i1.JSString message;
}

/// Interface [ErrorConstructor]
extension type ErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: Error
  external Error get prototype;
}

/// Interface [EvalErrorConstructor]
extension type EvalErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: EvalError
  external EvalError get prototype;
}

/// Interface [RangeErrorConstructor]
extension type RangeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: RangeError
  external RangeError get prototype;
}

/// Interface [ReferenceErrorConstructor]
extension type ReferenceErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: ReferenceError
  external ReferenceError get prototype;
}

/// Interface [SyntaxErrorConstructor]
extension type SyntaxErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: SyntaxError
  external SyntaxError get prototype;
}

/// Interface [TypeErrorConstructor]
extension type TypeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: TypeError
  external TypeError get prototype;
}

/// Interface [URIErrorConstructor]
extension type URIErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: URIError
  external URIError get prototype;
}

/// Interface [RegExpIndicesArray]
extension type RegExpIndicesArray.$(_i1.JSObject _) implements _i1.JSObject, Array<_i1.JSArray<_i1.JSAny>> {
  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;
}

/// Interface [WeakKeyTypes]
extension type WeakKeyTypes.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [object]
  ///
  /// object: object
  external _i1.JSObject object;

  /// Property [symbol]
  ///
  /// symbol:
  external _i1.JSSymbol symbol;
}

/// Method [eval]
///
/// Parameters:
/// - x: string
external _i1.JSAny eval(_i1.JSString x);

/// Method [parseInt]
///
/// Parameters:
/// - string: string
/// - radix: number
external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix]);

/// Method [parseFloat]
///
/// Parameters:
/// - string: string
external _i1.JSNumber parseFloat(_i1.JSString string);

/// Method [isNaN]
///
/// Parameters:
/// - number: number
external _i1.JSBoolean isNaN(_i1.JSNumber number);

/// Method [isFinite]
///
/// Parameters:
/// - number: number
external _i1.JSBoolean isFinite(_i1.JSNumber number);

/// Method [decodeURI]
///
/// Parameters:
/// - encodedURI: string
external _i1.JSString decodeURI(_i1.JSString encodedURI);

/// Method [decodeURIComponent]
///
/// Parameters:
/// - encodedURIComponent: string
external _i1.JSString decodeURIComponent(_i1.JSString encodedURIComponent);

/// Method [encodeURI]
///
/// Parameters:
/// - uri: string
external _i1.JSString encodeURI(_i1.JSString uri);

/// Method [encodeURIComponent]
///
/// Parameters:
/// - uriComponent: string | number | boolean
external _i1.JSString encodeURIComponent(_i1.JSAny uriComponent);

/// Method [escape]
///
/// Parameters:
/// - string: string
external _i1.JSString escape(_i1.JSString string);

/// Method [unescape]
///
/// Parameters:
/// - string: string
external _i1.JSString unescape(_i1.JSString string);

/// Typedef [PropertyKey]
///
/// string | number |
typedef PropertyKey = _i1.JSAny;

/// Interface [PropertyDescriptor]
extension type PropertyDescriptor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [configurable]
  ///
  /// configurable?: boolean
  external _i1.JSBoolean? configurable;

  /// Property [enumerable]
  ///
  /// enumerable?: boolean
  external _i1.JSBoolean? enumerable;

  /// Property [value]
  ///
  /// value?: any
  external _i1.JSAny? value;

  /// Property [writable]
  ///
  /// writable?: boolean
  external _i1.JSBoolean? writable;

  /// Method [get]
  ///
  /// Returns:
  /// - any
  external _i1.JSAny get();

  /// Method [set]
  ///
  /// Parameters:
  /// - v: any
  ///
  /// Returns:
  /// - void
  external void set(_i1.JSAny v);
}

/// Interface [PropertyDescriptorMap]
extension type PropertyDescriptorMap.$(_i1.JSObject _) implements _i1.JSObject {
  external void operator []=(PropertyKey key, PropertyDescriptor value);
  external PropertyDescriptor operator [](PropertyKey key);
}

/// Interface [Object]
extension type Object.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [constructor]
  ///
  /// constructor: Function$
  external Function$ constructor;

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [toLocaleString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString();

  /// Method [valueOf]
  ///
  /// Returns:
  /// - Object
  external Object valueOf();

  /// Method [hasOwnProperty]
  ///
  /// Parameters:
  /// - v: PropertyKey
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean hasOwnProperty(PropertyKey v);

  /// Method [isPrototypeOf]
  ///
  /// Parameters:
  /// - v: Object
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isPrototypeOf(Object v);

  /// Method [propertyIsEnumerable]
  ///
  /// Parameters:
  /// - v: PropertyKey
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean propertyIsEnumerable(PropertyKey v);
}

/// Interface [FunctionConstructor]
extension type FunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: Function$
  external Function$ get prototype;
}

/// Typedef [ThisParameterType]
///
///
typedef ThisParameterType<T extends _i1.JSAny> = _i1.JSAny;

/// Typedef [OmitThisParameter]
///
///
typedef OmitThisParameter<T extends _i1.JSAny> = _i1.JSAny;

/// Interface [CallableFunction]
extension type CallableFunction.$(_i1.JSObject _) implements _i1.JSObject, Function$ {
  /// Method [apply$1]
  ///
  /// Type Parameters:
  /// - T
  /// - R
  ///
  /// Parameters:
  /// - this: (this: T) => R
  /// - thisArg: T
  ///
  /// Returns:
  /// - R
  @_i1.JS('apply')
  external R apply$1<T extends _i1.JSAny, R extends _i1.JSAny>(_i1.JSFunction this$, T thisArg);

  /// Method [apply$2]
  ///
  /// Type Parameters:
  /// - T
  /// - A extends any[]
  /// - R
  ///
  /// Parameters:
  /// - this: (this: T, ...args: A) => R
  /// - thisArg: T
  /// - args: A
  ///
  /// Returns:
  /// - R
  @_i1.JS('apply')
  external R apply$2<T extends _i1.JSAny, A extends _i1.JSArray<_i1.JSAny>, R extends _i1.JSAny>(
    _i1.JSFunction this$,
    T thisArg,
    A args,
  );

  /// Method [call]
  ///
  /// Type Parameters:
  /// - T
  /// - A extends any[]
  /// - R
  ///
  /// Parameters:
  /// - this: (this: T, ...args: A) => R
  /// - thisArg: T
  /// - ...args: A
  ///
  /// Returns:
  /// - R
  external R call<T extends _i1.JSAny, A extends _i1.JSArray<_i1.JSAny>, R extends _i1.JSAny>(
    _i1.JSFunction this$,
    T thisArg,
    A args,
  );

  /// Method [bind$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - this: T
  /// - thisArg: ThisParameterType
  ///
  /// Returns:
  /// - OmitThisParameter
  @_i1.JS('bind')
  external OmitThisParameter<T> bind$1<T extends _i1.JSAny>(T this$, ThisParameterType<T> thisArg);

  /// Method [bind$2]
  ///
  /// Type Parameters:
  /// - T
  /// - A extends any[]
  /// - B extends any[]
  /// - R
  ///
  /// Parameters:
  /// - this: (this: T, ...args: [, ]) => R
  /// - thisArg: T
  /// - ...args: A
  ///
  /// Returns:
  /// - (...args: B) => R
  @_i1.JS('bind')
  external _i1.JSFunction bind$2<
    T extends _i1.JSAny,
    A extends _i1.JSArray<_i1.JSAny>,
    B extends _i1.JSArray<_i1.JSAny>,
    R extends _i1.JSAny
  >(_i1.JSFunction this$, T thisArg, A args);
}

/// Interface [NewableFunction]
extension type NewableFunction.$(_i1.JSObject _) implements _i1.JSObject, Function$ {
  /// Method [apply$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - this:
  /// - thisArg: T
  ///
  /// Returns:
  /// - void
  @_i1.JS('apply')
  external void apply$1<T extends _i1.JSAny>(T this$, T thisArg);

  /// Method [apply$2]
  ///
  /// Type Parameters:
  /// - T
  /// - A extends any[]
  ///
  /// Parameters:
  /// - this:
  /// - thisArg: T
  /// - args: A
  ///
  /// Returns:
  /// - void
  @_i1.JS('apply')
  external void apply$2<T extends _i1.JSAny, A extends _i1.JSArray<_i1.JSAny>>(T this$, T thisArg, A args);

  /// Method [call]
  ///
  /// Type Parameters:
  /// - T
  /// - A extends any[]
  ///
  /// Parameters:
  /// - this:
  /// - thisArg: T
  /// - ...args: A
  ///
  /// Returns:
  /// - void
  external void call<T extends _i1.JSAny, A extends _i1.JSArray<_i1.JSAny>>(T this$, T thisArg, A args);

  /// Method [bind$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - this: T
  /// - thisArg: any
  ///
  /// Returns:
  /// - T
  @_i1.JS('bind')
  external T bind$1<T extends _i1.JSAny>(T this$, _i1.JSAny thisArg);

  /// Method [bind$2]
  ///
  /// Type Parameters:
  /// - A extends any[]
  /// - B extends any[]
  /// - R
  ///
  /// Parameters:
  /// - this:
  /// - thisArg: any
  /// - ...args: A
  ///
  /// Returns:
  /// -
  @_i1.JS('bind')
  external R bind$2<A extends _i1.JSArray<_i1.JSAny>, B extends _i1.JSArray<_i1.JSAny>, R extends _i1.JSAny>(
    R this$,
    _i1.JSAny thisArg,
    A args,
  );
}

/// Interface [Boolean]
extension type Boolean.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [valueOf]
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean valueOf();
}

/// Interface [BooleanConstructor]
extension type BooleanConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Property [prototype]
  ///
  /// readonly prototype: Boolean
  external Boolean get prototype;
}

/// Interface [TemplateStringsArray]
extension type TemplateStringsArray.$(_i1.JSObject _) implements _i1.JSObject, ReadonlyArray<_i1.JSString> {
  /// Property [raw]
  ///
  /// readonly raw: readonly string[]
  external _i1.JSArray<_i1.JSString> get raw;
}

/// Interface [ImportMeta]
extension type ImportMeta.$(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [ImportCallOptions]
extension type ImportCallOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [assert$]
  ///
  /// assert$?: ImportAssertions
  @_i1.JS('assert')
  external ImportAssertions? assert$;

  /// Property [with$]
  ///
  /// with$?: ImportAttributes
  @_i1.JS('with')
  external ImportAttributes? with$;
}

/// Interface [ImportAssertions]
extension type ImportAssertions.$(_i1.JSObject _) implements _i1.JSObject {
  external void operator []=(_i1.JSString key, _i1.JSString value);
  external _i1.JSString operator [](_i1.JSString key);
}

/// Interface [ImportAttributes]
extension type ImportAttributes.$(_i1.JSObject _) implements _i1.JSObject {
  external void operator []=(_i1.JSString key, _i1.JSString value);
  external _i1.JSString operator [](_i1.JSString key);
}

/// Interface [EvalError]
extension type EvalError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [RangeError]
extension type RangeError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [ReferenceError]
extension type ReferenceError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [SyntaxError]
extension type SyntaxError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [TypeError]
extension type TypeError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [URIError]
extension type URIError.$(_i1.JSObject _) implements _i1.JSObject, Error {}

/// Interface [ConcatArray]
extension type ConcatArray<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;
  external void operator []=(_i1.JSNumber n, T value);
  external T operator [](_i1.JSNumber n);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> slice([_i1.JSNumber start, _i1.JSNumber end]);
}

/// Interface [TypedPropertyDescriptor]
extension type TypedPropertyDescriptor<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [enumerable]
  ///
  /// enumerable?: boolean
  external _i1.JSBoolean? enumerable;

  /// Property [configurable]
  ///
  /// configurable?: boolean
  external _i1.JSBoolean? configurable;

  /// Property [writable]
  ///
  /// writable?: boolean
  external _i1.JSBoolean? writable;

  /// Property [value]
  ///
  /// value?: T
  external T? value;

  /// Property [get]
  ///
  /// get?: () => T
  external _i1.JSFunction? get;

  /// Property [set]
  ///
  /// set?: (value: T) => void
  external _i1.JSFunction? set;
}

/// Typedef [PromiseConstructorLike]
///
///
typedef PromiseConstructorLike<T extends _i1.JSAny> = PromiseLike<T>;

/// Interface [PromiseLike]
extension type PromiseLike<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [then]
  ///
  /// Type Parameters:
  /// - TResult1 = T
  /// - TResult2 =
  ///
  /// Parameters:
  /// - onfulfilled: ((value: T) => TResult1 | PromiseLike) | undefined | null
  /// - onrejected: ((reason: any) => TResult2 | PromiseLike) | undefined | null
  ///
  /// Returns:
  /// - PromiseLike
  external PromiseLike<_i1.JSAny> then<TResult1 extends _i1.JSAny, TResult2 extends _i1.JSAny>([
    _i1.JSFunction? onfulfilled,
    _i1.JSFunction? onrejected,
  ]);
}

/// Typedef [Awaited]
///
///
typedef Awaited<T extends _i1.JSAny> = _i1.JSAny;

/// Interface [ArrayLike]
extension type ArrayLike<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;
  external void operator []=(_i1.JSNumber n, T value);
  external T operator [](_i1.JSNumber n);
}

/// Typedef [Partial]
///
///
typedef Partial<T extends _i1.JSAny> = _i1.JSObject;

/// Typedef [Required]
///
///
typedef Required<T extends _i1.JSAny> = _i1.JSObject;

/// Typedef [Readonly]
///
///
typedef Readonly<T extends _i1.JSAny> = _i1.JSObject;

/// Typedef [Pick]
///
///
typedef Pick<T extends _i1.JSAny, K extends _i1.JSAny> = _i1.JSObject;

/// Typedef [Record]
///
///
typedef Record<K extends _i1.JSAny, T extends _i1.JSAny> = _i1.JSObject;

/// Typedef [Exclude]
///
///
typedef Exclude<T extends _i1.JSAny, U extends _i1.JSAny> = _i1.JSAny;

/// Typedef [Extract]
///
///
typedef Extract<T extends _i1.JSAny, U extends _i1.JSAny> = _i1.JSAny;

/// Typedef [Omit]
///
/// Pick
typedef Omit<T extends _i1.JSAny, K extends _i1.JSAny> = Pick<T, Exclude<_i1.JSAny, K>>;

/// Typedef [NonNullable]
///
///
typedef NonNullable<T extends _i1.JSAny> = _i1.JSAny;

/// Typedef [Parameters]
///
///
typedef Parameters<T extends _i1.JSFunction> = _i1.JSAny;

/// Typedef [ConstructorParameters]
///
///
typedef ConstructorParameters<T extends _i1.JSFunction> = _i1.JSAny;

/// Typedef [ReturnType]
///
///
typedef ReturnType<T extends _i1.JSFunction> = _i1.JSAny;

/// Typedef [InstanceType]
///
///
typedef InstanceType<T extends _i1.JSFunction> = _i1.JSAny;

/// Typedef [Uppercase]
///
///
typedef Uppercase<S extends _i1.JSString> = _i1.JSAny;

/// Typedef [Lowercase]
///
///
typedef Lowercase<S extends _i1.JSString> = _i1.JSAny;

/// Typedef [Capitalize]
///
///
typedef Capitalize<S extends _i1.JSString> = _i1.JSAny;

/// Typedef [Uncapitalize]
///
///
typedef Uncapitalize<S extends _i1.JSString> = _i1.JSAny;

/// Typedef [NoInfer]
///
///
typedef NoInfer<T extends _i1.JSAny> = _i1.JSAny;

/// Interface [ThisType]
extension type ThisType<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [WeakKey]
///
/// WeakKeyTypes[keyof WeakKeyTypes]
typedef WeakKey = _i1.JSAny;

/// Typedef [ArrayBufferLike]
///
/// ArrayBufferTypes[keyof ArrayBufferTypes]
typedef ArrayBufferLike = _i1.JSAny;

/// Interface [ArrayBufferView]
extension type ArrayBufferView<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [buffer]
  ///
  /// readonly buffer: TArrayBuffer
  external TArrayBuffer get buffer;

  /// Property [byteLength]
  ///
  /// readonly byteLength: number
  external _i1.JSNumber get byteLength;

  /// Property [byteOffset]
  ///
  /// readonly byteOffset: number
  external _i1.JSNumber get byteOffset;
}

/// Interface [DataViewConstructor]
extension type DataViewConstructor.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// readonly prototype: DataView
  external DataView<ArrayBufferLike> get prototype;
}
