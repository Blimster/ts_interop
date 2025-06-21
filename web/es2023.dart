// ignore_for_file: avoid_shadowing_type_parameters, camel_case_types
// ignore_for_file: non_constant_identifier_names
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
extension type ClassDecoratorContext<Class extends _i1.JSFunction>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type ClassMethodDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSFunction>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassGetterDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassSetterDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassAccessorDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassAccessorDecoratorTarget<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassAccessorDecoratorResult<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type ClassFieldDecoratorContext<This extends _i1.JSAny, Value extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
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
extension type Map<K extends _i1.JSAny, V extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  external Map.$1();

  /// Constructor
  ///
  /// Type Parameters:
  /// - K
  /// - V
  ///
  /// Parameters:
  /// - entries: readonly (readonly [K, V])[] | null
  external Map.$2([_i1.JSArray<_i1.JSArray<_i1.JSAny>>? entries]);

  /// Constructor
  external Map.$3();

  /// Constructor
  ///
  /// Type Parameters:
  /// - K
  /// - V
  ///
  /// Parameters:
  /// - iterable: Iterable | null
  external Map.$4([Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny>? iterable]);

  /// Method [clear]
  ///
  /// Returns:
  /// - void
  external void clear();

  /// Method [delete]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(K key);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: V, key: K, map: Map) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [get]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - V | undefined
  external V? get(K key);

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Method [set]
  ///
  /// Parameters:
  /// - key: K
  /// - value: V
  ///
  /// Returns:
  /// -
  external _i1.JSAny set(K key, V value);

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [entries]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<K> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<V> values();

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;
}

/// Interface [MapConstructor]
@_i1.JS('Map')
extension type MapConstructor<K extends _i1.JSAny, V extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  external MapConstructor.$1();

  /// Constructor
  ///
  /// Type Parameters:
  /// - K
  /// - V
  ///
  /// Parameters:
  /// - entries: readonly (readonly [K, V])[] | null
  external MapConstructor.$2([_i1.JSArray<_i1.JSArray<_i1.JSAny>>? entries]);

  /// Constructor
  external MapConstructor.$3();

  /// Constructor
  ///
  /// Type Parameters:
  /// - K
  /// - V
  ///
  /// Parameters:
  /// - iterable: Iterable | null
  external MapConstructor.$4([Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny>? iterable]);

  /// Property [prototype]
  ///
  /// readonly prototype: Map
  external Map<_i1.JSAny, _i1.JSAny> get prototype;

  /// Property [null$]
  ///
  /// readonly null$: MapConstructor
  external MapConstructor get null$;
}

/// Interface [ReadonlyMap]
extension type ReadonlyMap<K extends _i1.JSAny, V extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: V, key: K, map: ReadonlyMap) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [get]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - V | undefined
  external V? get(K key);

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [entries]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<K> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - MapIterator
  external MapIterator<V> values();
}

/// Interface [WeakMap]
extension type WeakMap<K extends WeakKey, V extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - K extends WeakKey = WeakKey
  /// - V = any
  ///
  /// Parameters:
  /// - entries: readonly (readonly [K, V])[] | null
  external WeakMap.$1([_i1.JSArray<_i1.JSArray<_i1.JSAny>>? entries]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - K extends WeakKey
  /// - V
  ///
  /// Parameters:
  /// - iterable: Iterable
  external WeakMap.$2(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> iterable);

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

  /// Method [has]
  ///
  /// Parameters:
  /// - key: K
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(K key);

  /// Method [set]
  ///
  /// Parameters:
  /// - key: K
  /// - value: V
  ///
  /// Returns:
  /// -
  external _i1.JSAny set(K key, V value);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;
}

/// Interface [WeakMapConstructor]
@_i1.JS('WeakMap')
extension type WeakMapConstructor<K extends WeakKey, V extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - K extends WeakKey = WeakKey
  /// - V = any
  ///
  /// Parameters:
  /// - entries: readonly (readonly [K, V])[] | null
  external WeakMapConstructor.$1([_i1.JSArray<_i1.JSArray<_i1.JSAny>>? entries]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - K extends WeakKey
  /// - V
  ///
  /// Parameters:
  /// - iterable: Iterable
  external WeakMapConstructor.$2(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> iterable);

  /// Property [prototype]
  ///
  /// readonly prototype: WeakMap
  external WeakMap<WeakKey, _i1.JSAny> get prototype;
}

/// Interface [Set]
extension type Set<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T = any
  ///
  /// Parameters:
  /// - values: readonly T[] | null
  external Set.$1([_i1.JSArray<T>? values]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - iterable: Iterable | null
  external Set.$2([Iterable<T, _i1.JSAny, _i1.JSAny>? iterable]);

  /// Method [add]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// -
  external _i1.JSAny add(T value);

  /// Method [clear]
  ///
  /// Returns:
  /// - void
  external void clear();

  /// Method [delete]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(T value);

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

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [entries]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> values();

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;
}

/// Interface [SetConstructor]
@_i1.JS('Set')
extension type SetConstructor<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T = any
  ///
  /// Parameters:
  /// - values: readonly T[] | null
  external SetConstructor.$1([_i1.JSArray<T>? values]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - iterable: Iterable | null
  external SetConstructor.$2([Iterable<T, _i1.JSAny, _i1.JSAny>? iterable]);

  /// Property [prototype]
  ///
  /// readonly prototype: Set
  external Set<_i1.JSAny> get prototype;

  /// Property [null$]
  ///
  /// readonly null$: SetConstructor
  external SetConstructor get null$;
}

/// Interface [ReadonlySet]
extension type ReadonlySet<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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

  /// Property [size]
  ///
  /// readonly size: number
  external _i1.JSNumber get size;

  /// Method [entries]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - SetIterator
  external SetIterator<T> values();
}

/// Interface [WeakSet]
extension type WeakSet<T extends WeakKey>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey = WeakKey
  ///
  /// Parameters:
  /// - values: readonly T[] | null
  external WeakSet.$1([_i1.JSArray<T>? values]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey = WeakKey
  ///
  /// Parameters:
  /// - iterable: Iterable
  external WeakSet.$2(Iterable<T, _i1.JSAny, _i1.JSAny> iterable);

  /// Method [add]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// -
  external _i1.JSAny add(T value);

  /// Method [delete]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean delete(T value);

  /// Method [has]
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean has(T value);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;
}

/// Interface [WeakSetConstructor]
@_i1.JS('WeakSet')
extension type WeakSetConstructor<T extends WeakKey>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey = WeakKey
  ///
  /// Parameters:
  /// - values: readonly T[] | null
  external WeakSetConstructor.$1([_i1.JSArray<T>? values]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey = WeakKey
  ///
  /// Parameters:
  /// - iterable: Iterable
  external WeakSetConstructor.$2(Iterable<T, _i1.JSAny, _i1.JSAny> iterable);

  /// Property [prototype]
  ///
  /// readonly prototype: WeakSet
  external WeakSet<WeakKey> get prototype;
}

/// Interface [Array]
extension type Array<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - arrayLength: number
  external Array.$1([_i1.JSNumber arrayLength]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLength: number
  external Array.$2(_i1.JSNumber arrayLength);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - ...items: T[]
  external Array.$3(_i1.JSArray<T> items);

  /// Property [length]
  ///
  /// length: number
  external _i1.JSNumber length;

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

  /// Method [find$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T | undefined
  @_i1.JS('find')
  external T? find$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options:
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i1.JSAny options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<T> values();

  /// Property [null$]
  ///
  /// readonly null$:
  external _i1.JSObject get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(T searchElement, [_i1.JSNumber fromIndex]);

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

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - T | undefined
  external T? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T | undefined
  @_i1.JS('findLast')
  external T? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSorted([_i1.JSFunction compareFn]);

  /// Method [toSpliced$1]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('toSpliced')
  external _i1.JSArray<T> toSpliced$1(_i1.JSNumber start, _i1.JSNumber deleteCount, _i1.JSArray<T> items);

  /// Method [toSpliced$2]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('toSpliced')
  external _i1.JSArray<T> toSpliced$2(_i1.JSNumber start, [_i1.JSNumber deleteCount]);

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

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [pop]
  ///
  /// Returns:
  /// - T | undefined
  external T? pop();

  /// Method [push]
  ///
  /// Parameters:
  /// - ...items: T[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber push(_i1.JSArray<T> items);

  /// Method [concat$1]
  ///
  /// Parameters:
  /// - ...items: ConcatArray[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$1(_i1.JSArray<ConcatArray<T>> items);

  /// Method [concat$2]
  ///
  /// Parameters:
  /// - ...items: (T | ConcatArray)[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$2(_i1.JSArray<_i1.JSAny> items);

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
  /// - T[]
  external _i1.JSArray<T> reverse();

  /// Method [shift]
  ///
  /// Returns:
  /// - T | undefined
  external T? shift();

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [splice$1]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('splice')
  external _i1.JSArray<T> splice$1(_i1.JSNumber start, [_i1.JSNumber deleteCount]);

  /// Method [splice$2]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('splice')
  external _i1.JSArray<T> splice$2(_i1.JSNumber start, _i1.JSNumber deleteCount, _i1.JSArray<T> items);

  /// Method [unshift]
  ///
  /// Parameters:
  /// - ...items: T[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber unshift(_i1.JSArray<T> items);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [every$1]
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
  @_i1.JS('every')
  external _i1.JSBoolean every$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  @_i1.JS('every')
  external _i1.JSBoolean every$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: T[]) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

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

  /// Method [filter$1]
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
  @_i1.JS('filter')
  external _i1.JSArray<S> filter$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [filter$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('filter')
  external _i1.JSArray<T> filter$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduce')
  external T reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  /// - initialValue: T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduce')
  external T reduce$2(_i1.JSFunction callbackfn, T initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: T, currentIndex: number, array: T[]) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduceRight')
  external T reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: T[]) => T
  /// - initialValue: T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduceRight')
  external T reduceRight$2(_i1.JSFunction callbackfn, T initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: T, currentIndex: number, array: T[]) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);
  external void operator []=(_i1.JSNumber n, T value);
  external T operator [](_i1.JSNumber n);
}

/// Interface [ArrayConstructor]
extension type ArrayConstructor<T extends _i1.JSAny>.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - arrayLength: number
  external ArrayConstructor.$1([_i1.JSNumber arrayLength]);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLength: number
  external ArrayConstructor.$2(_i1.JSNumber arrayLength);

  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - ...items: T[]
  external ArrayConstructor.$3(_i1.JSArray<T> items);

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

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  /// - U
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => U
  /// - thisArg: any
  ///
  /// Returns:
  /// - U[]
  @_i1.JS('from')
  external _i1.JSArray<U> from$2<T extends _i1.JSAny, U extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);

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

  /// Method [from$3]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - iterable: Iterable | ArrayLike
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('from')
  external _i1.JSArray<T> from$3<T extends _i1.JSAny>(_i1.JSAny iterable);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  /// - U
  ///
  /// Parameters:
  /// - iterable: Iterable | ArrayLike
  /// - mapfn: (v: T, k: number) => U
  /// - thisArg: any
  ///
  /// Returns:
  /// - U[]
  @_i1.JS('from')
  external _i1.JSArray<U> from$4<T extends _i1.JSAny, U extends _i1.JSAny>(
    _i1.JSAny iterable,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);

  /// Property [null$]
  ///
  /// readonly null$: ArrayConstructor
  external ArrayConstructor get null$;

  /// Method [isArray]
  ///
  /// Parameters:
  /// - arg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean isArray(_i1.JSAny arg);

  /// Property [prototype]
  ///
  /// readonly prototype: any[]
  external _i1.JSArray<_i1.JSAny> get prototype;
}

/// Interface [DateConstructor]
@_i1.JS('Date')
extension type DateConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - value: number | string | Date
  external DateConstructor.$1(_i1.JSAny value);

  /// Constructor
  external DateConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - value: number | string
  external DateConstructor.$3(_i1.JSAny value);

  /// Constructor
  ///
  /// Parameters:
  /// - year: number
  /// - monthIndex: number
  /// - date: number
  /// - hours: number
  /// - minutes: number
  /// - seconds: number
  /// - ms: number
  external DateConstructor.$4(
    _i1.JSNumber year,
    _i1.JSNumber monthIndex, [
    _i1.JSNumber date,
    _i1.JSNumber hours,
    _i1.JSNumber minutes,
    _i1.JSNumber seconds,
    _i1.JSNumber ms,
  ]);

  /// Method [UTC$1]
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
  @_i1.JS('UTC')
  external _i1.JSNumber UTC$1(
    _i1.JSNumber year, [
    _i1.JSNumber monthIndex,
    _i1.JSNumber date,
    _i1.JSNumber hours,
    _i1.JSNumber minutes,
    _i1.JSNumber seconds,
    _i1.JSNumber ms,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Date
  external Date get prototype;

  /// Method [parse]
  ///
  /// Parameters:
  /// - s: string
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber parse(_i1.JSString s);

  /// Method [UTC$2]
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
  @_i1.JS('UTC')
  external _i1.JSNumber UTC$2(
    _i1.JSNumber year,
    _i1.JSNumber monthIndex, [
    _i1.JSNumber date,
    _i1.JSNumber hours,
    _i1.JSNumber minutes,
    _i1.JSNumber seconds,
    _i1.JSNumber ms,
  ]);

  /// Method [now]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber now();
}

/// Interface [Function$]
@_i1.JS('Function')
extension type Function$.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external Function$(_i1.JSArray<_i1.JSString> args);

  /// Property [prototype]
  ///
  /// prototype: any
  external _i1.JSAny prototype;

  /// Property [arguments]
  ///
  /// arguments: any
  external _i1.JSAny arguments;

  /// Property [caller]
  ///
  /// caller: Function$
  external Function$ caller;

  /// Property [name]
  ///
  /// readonly name: string
  external _i1.JSString get name;

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

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;
}

/// Interface [Math]
extension type Math.$(_i1.JSAny _) implements _i1.JSAny {
  /// Method [clz32]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber clz32(_i1.JSNumber x);

  /// Method [imul]
  ///
  /// Parameters:
  /// - x: number
  /// - y: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber imul(_i1.JSNumber x, _i1.JSNumber y);

  /// Method [sign]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sign(_i1.JSNumber x);

  /// Method [log10]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log10(_i1.JSNumber x);

  /// Method [log2]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log2(_i1.JSNumber x);

  /// Method [log1p]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log1p(_i1.JSNumber x);

  /// Method [expm1]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber expm1(_i1.JSNumber x);

  /// Method [cosh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cosh(_i1.JSNumber x);

  /// Method [sinh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sinh(_i1.JSNumber x);

  /// Method [tanh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber tanh(_i1.JSNumber x);

  /// Method [acosh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber acosh(_i1.JSNumber x);

  /// Method [asinh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber asinh(_i1.JSNumber x);

  /// Method [atanh]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atanh(_i1.JSNumber x);

  /// Method [hypot]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber hypot(_i1.JSArray<_i1.JSNumber> values);

  /// Method [trunc]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber trunc(_i1.JSNumber x);

  /// Method [fround]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber fround(_i1.JSNumber x);

  /// Method [cbrt]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cbrt(_i1.JSNumber x);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Property [E]
  ///
  /// readonly E: number
  external _i1.JSNumber get E;

  /// Property [LNonezero]
  ///
  /// readonly LNonezero: number
  @_i1.JS('LN10')
  external _i1.JSNumber get LNonezero;

  /// Property [LNtwo]
  ///
  /// readonly LNtwo: number
  @_i1.JS('LN2')
  external _i1.JSNumber get LNtwo;

  /// Property [LOGtwoE]
  ///
  /// readonly LOGtwoE: number
  @_i1.JS('LOG2E')
  external _i1.JSNumber get LOGtwoE;

  /// Property [LOGonezeroE]
  ///
  /// readonly LOGonezeroE: number
  @_i1.JS('LOG10E')
  external _i1.JSNumber get LOGonezeroE;

  /// Property [PI]
  ///
  /// readonly PI: number
  external _i1.JSNumber get PI;

  /// Property [SQRTone_two]
  ///
  /// readonly SQRTone_two: number
  @_i1.JS('SQRT1_2')
  external _i1.JSNumber get SQRTone_two;

  /// Property [SQRTtwo]
  ///
  /// readonly SQRTtwo: number
  @_i1.JS('SQRT2')
  external _i1.JSNumber get SQRTtwo;

  /// Method [abs]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber abs(_i1.JSNumber x);

  /// Method [acos]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber acos(_i1.JSNumber x);

  /// Method [asin]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber asin(_i1.JSNumber x);

  /// Method [atan]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atan(_i1.JSNumber x);

  /// Method [atan2]
  ///
  /// Parameters:
  /// - y: number
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber atan2(_i1.JSNumber y, _i1.JSNumber x);

  /// Method [ceil]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber ceil(_i1.JSNumber x);

  /// Method [cos]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber cos(_i1.JSNumber x);

  /// Method [exp]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber exp(_i1.JSNumber x);

  /// Method [floor]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber floor(_i1.JSNumber x);

  /// Method [log]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber log(_i1.JSNumber x);

  /// Method [max]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber max(_i1.JSArray<_i1.JSNumber> values);

  /// Method [min]
  ///
  /// Parameters:
  /// - ...values: number[]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber min(_i1.JSArray<_i1.JSNumber> values);

  /// Method [pow]
  ///
  /// Parameters:
  /// - x: number
  /// - y: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber pow(_i1.JSNumber x, _i1.JSNumber y);

  /// Method [random]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber random();

  /// Method [round]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber round(_i1.JSNumber x);

  /// Method [sin]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sin(_i1.JSNumber x);

  /// Method [sqrt]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber sqrt(_i1.JSNumber x);

  /// Method [tan]
  ///
  /// Parameters:
  /// - x: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber tan(_i1.JSNumber x);
}

/// Interface [NumberConstructor]
@_i1.JS('Number')
extension type NumberConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external NumberConstructor([_i1.JSAny value]);

  /// Property [EPSILON]
  ///
  /// readonly EPSILON: number
  external _i1.JSNumber get EPSILON;

  /// Method [isFinite]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isFinite(_i1.JSAny number);

  /// Method [isInteger]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isInteger(_i1.JSAny number);

  /// Method [isNaN]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isNaN(_i1.JSAny number);

  /// Method [isSafeInteger]
  ///
  /// Parameters:
  /// - number:
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isSafeInteger(_i1.JSAny number);

  /// Property [MAX_SAFE_INTEGER]
  ///
  /// readonly MAX_SAFE_INTEGER: number
  external _i1.JSNumber get MAX_SAFE_INTEGER;

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

  /// Method [parseInt]
  ///
  /// Parameters:
  /// - string: string
  /// - radix: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix]);

  /// Property [prototype]
  ///
  /// readonly prototype: Number
  external Number get prototype;

  /// Property [MAX_VALUE]
  ///
  /// readonly MAX_VALUE: number
  external _i1.JSNumber get MAX_VALUE;

  /// Property [MIN_VALUE]
  ///
  /// readonly MIN_VALUE: number
  external _i1.JSNumber get MIN_VALUE;

  /// Property [NaN]
  ///
  /// readonly NaN: number
  external _i1.JSNumber get NaN;

  /// Property [NEGATIVE_INFINITY]
  ///
  /// readonly NEGATIVE_INFINITY: number
  external _i1.JSNumber get NEGATIVE_INFINITY;

  /// Property [POSITIVE_INFINITY]
  ///
  /// readonly POSITIVE_INFINITY: number
  external _i1.JSNumber get POSITIVE_INFINITY;
}

/// Interface [ObjectConstructor]
@_i1.JS('Object')
extension type ObjectConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external ObjectConstructor([_i1.JSAny value]);

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

  /// Method [assign$2]
  ///
  /// Type Parameters:
  /// - T extends
  /// - U
  /// - V
  ///
  /// Parameters:
  /// - target: T
  /// - source1: U
  /// - source2: V
  ///
  /// Returns:
  /// -
  @_i1.JS('assign')
  external _i1.JSAny assign$2<T extends _i1.JSObject, U extends _i1.JSAny, V extends _i1.JSAny>(
    T target,
    U source1,
    V source2,
  );

  /// Method [assign$3]
  ///
  /// Type Parameters:
  /// - T extends
  /// - U
  /// - V
  /// - W
  ///
  /// Parameters:
  /// - target: T
  /// - source1: U
  /// - source2: V
  /// - source3: W
  ///
  /// Returns:
  /// -
  @_i1.JS('assign')
  external _i1.JSAny assign$3<T extends _i1.JSObject, U extends _i1.JSAny, V extends _i1.JSAny, W extends _i1.JSAny>(
    T target,
    U source1,
    V source2,
    W source3,
  );

  /// Method [assign$4]
  ///
  /// Parameters:
  /// - target: object
  /// - ...sources: any[]
  ///
  /// Returns:
  /// - any
  @_i1.JS('assign')
  external _i1.JSAny assign$4(_i1.JSObject target, _i1.JSArray<_i1.JSAny> sources);

  /// Method [getOwnPropertySymbols]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - []
  external _i1.JSArray<_i1.JSSymbol> getOwnPropertySymbols(_i1.JSAny o);

  /// Method [keys$1]
  ///
  /// Parameters:
  /// - o:
  ///
  /// Returns:
  /// - string[]
  @_i1.JS('keys')
  external _i1.JSArray<_i1.JSString> keys$1(_i1.JSObject o);

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

  /// Method [setPrototypeOf]
  ///
  /// Parameters:
  /// - o: any
  /// - proto: object | null
  ///
  /// Returns:
  /// - any
  external _i1.JSAny setPrototypeOf(_i1.JSAny o, _i1.JSObject? proto);

  /// Method [values$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o:  | ArrayLike
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('values')
  external _i1.JSArray<T> values$1<T extends _i1.JSAny>(_i1.JSAny o);

  /// Method [values$2]
  ///
  /// Parameters:
  /// - o:
  ///
  /// Returns:
  /// - any[]
  @_i1.JS('values')
  external _i1.JSArray<_i1.JSAny> values$2(_i1.JSObject o);

  /// Method [entries$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o:  | ArrayLike
  ///
  /// Returns:
  /// - [string, T][]
  @_i1.JS('entries')
  external _i1.JSArray<_i1.JSArray<_i1.JSAny>> entries$1<T extends _i1.JSAny>(_i1.JSAny o);

  /// Method [entries$2]
  ///
  /// Parameters:
  /// - o:
  ///
  /// Returns:
  /// - [string, any][]
  @_i1.JS('entries')
  external _i1.JSArray<_i1.JSArray<_i1.JSAny>> entries$2(_i1.JSObject o);

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

  /// Method [fromEntries$1]
  ///
  /// Type Parameters:
  /// - T = any
  ///
  /// Parameters:
  /// - entries: Iterable
  ///
  /// Returns:
  /// -
  @_i1.JS('fromEntries')
  external _i1.JSObject fromEntries$1<T extends _i1.JSAny>(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> entries);

  /// Method [fromEntries$2]
  ///
  /// Parameters:
  /// - entries: Iterable
  ///
  /// Returns:
  /// - any
  @_i1.JS('fromEntries')
  external _i1.JSAny fromEntries$2(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> entries);

  /// Method [hasOwn]
  ///
  /// Parameters:
  /// - o: object
  /// - v: PropertyKey
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean hasOwn(_i1.JSObject o, PropertyKey v);

  /// Property [prototype]
  ///
  /// readonly prototype: Object
  external Object get prototype;

  /// Method [getPrototypeOf]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - any
  external _i1.JSAny getPrototypeOf(_i1.JSAny o);

  /// Method [getOwnPropertyDescriptor]
  ///
  /// Parameters:
  /// - o: any
  /// - p: PropertyKey
  ///
  /// Returns:
  /// - PropertyDescriptor | undefined
  external PropertyDescriptor? getOwnPropertyDescriptor(_i1.JSAny o, PropertyKey p);

  /// Method [getOwnPropertyNames]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> getOwnPropertyNames(_i1.JSAny o);

  /// Method [create$1]
  ///
  /// Parameters:
  /// - o: object | null
  ///
  /// Returns:
  /// - any
  @_i1.JS('create')
  external _i1.JSAny create$1(_i1.JSObject? o);

  /// Method [create$2]
  ///
  /// Parameters:
  /// - o: object | null
  /// - properties:
  ///
  /// Returns:
  /// - any
  @_i1.JS('create')
  external _i1.JSAny create$2(_i1.JSObject? o, _i1.JSAny properties);

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

  /// Method [freeze$1]
  ///
  /// Type Parameters:
  /// - T extends Function$
  ///
  /// Parameters:
  /// - f: T
  ///
  /// Returns:
  /// - T
  @_i1.JS('freeze')
  external T freeze$1<T extends Function$>(T f);

  /// Method [freeze$2]
  ///
  /// Type Parameters:
  /// - T extends
  /// - U extends string | bigint | number | boolean |
  ///
  /// Parameters:
  /// - o: T
  ///
  /// Returns:
  /// - Readonly
  @_i1.JS('freeze')
  external Readonly<T> freeze$2<T extends _i1.JSObject, U extends _i1.JSAny>(T o);

  /// Method [freeze$3]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - o: T
  ///
  /// Returns:
  /// - Readonly
  @_i1.JS('freeze')
  external Readonly<T> freeze$3<T extends _i1.JSAny>(T o);

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

  /// Method [isSealed]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isSealed(_i1.JSAny o);

  /// Method [isFrozen]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isFrozen(_i1.JSAny o);

  /// Method [isExtensible]
  ///
  /// Parameters:
  /// - o: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isExtensible(_i1.JSAny o);

  /// Method [keys$2]
  ///
  /// Parameters:
  /// - o: object
  ///
  /// Returns:
  /// - string[]
  @_i1.JS('keys')
  external _i1.JSArray<_i1.JSString> keys$2(_i1.JSObject o);
}

/// Interface [ReadonlyArray]
extension type ReadonlyArray<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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

  /// Method [find$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T | undefined
  @_i1.JS('find')
  external T? find$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, obj: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options:
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i1.JSAny options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<T> values();

  /// Property [null$]
  ///
  /// readonly null$:
  external _i1.JSObject get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(T searchElement, [_i1.JSNumber fromIndex]);

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

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - T | undefined
  external T? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T | undefined
  @_i1.JS('findLast')
  external T? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: T, b: T) => number
  ///
  /// Returns:
  /// - T[]
  external _i1.JSArray<T> toSorted([_i1.JSFunction compareFn]);

  /// Method [toSpliced$1]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  /// - ...items: T[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('toSpliced')
  external _i1.JSArray<T> toSpliced$1(_i1.JSNumber start, _i1.JSNumber deleteCount, _i1.JSArray<T> items);

  /// Method [toSpliced$2]
  ///
  /// Parameters:
  /// - start: number
  /// - deleteCount: number
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('toSpliced')
  external _i1.JSArray<T> toSpliced$2(_i1.JSNumber start, [_i1.JSNumber deleteCount]);

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

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [concat$1]
  ///
  /// Parameters:
  /// - ...items: ConcatArray[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$1(_i1.JSArray<ConcatArray<T>> items);

  /// Method [concat$2]
  ///
  /// Parameters:
  /// - ...items: (T | ConcatArray)[]
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$2(_i1.JSArray<_i1.JSAny> items);

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

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: T
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(T searchElement, [_i1.JSNumber fromIndex]);

  /// Method [every$1]
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
  @_i1.JS('every')
  external _i1.JSBoolean every$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [every$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  @_i1.JS('every')
  external _i1.JSBoolean every$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: T, index: number, array: readonly T[]) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

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

  /// Method [filter$1]
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
  @_i1.JS('filter')
  external _i1.JSArray<S> filter$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [filter$2]
  ///
  /// Parameters:
  /// - predicate: (value: T, index: number, array: readonly T[]) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - T[]
  @_i1.JS('filter')
  external _i1.JSArray<T> filter$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduce')
  external T reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  /// - initialValue: T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduce')
  external T reduce$2(_i1.JSFunction callbackfn, T initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: T, currentIndex: number, array: readonly T[]) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduceRight')
  external T reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: T, currentValue: T, currentIndex: number, array: readonly T[]) => T
  /// - initialValue: T
  ///
  /// Returns:
  /// - T
  @_i1.JS('reduceRight')
  external T reduceRight$2(_i1.JSFunction callbackfn, T initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: T, currentIndex: number, array: readonly T[]) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);
  external void operator []=(_i1.JSNumber n, T value);
  external T operator [](_i1.JSNumber n);
}

/// Interface [RegExp]
extension type RegExp.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - pattern: RegExp | string
  /// - flags: string
  external RegExp.$1(_i1.JSAny pattern, [_i1.JSString flags]);

  /// Constructor
  ///
  /// Parameters:
  /// - pattern: RegExp | string
  external RegExp.$2(_i1.JSAny pattern);

  /// Constructor
  ///
  /// Parameters:
  /// - pattern: string
  /// - flags: string
  external RegExp.$3(_i1.JSString pattern, [_i1.JSString flags]);

  /// Property [lastIndex]
  ///
  /// lastIndex: number
  external _i1.JSNumber lastIndex;

  /// Property [flags]
  ///
  /// readonly flags: string
  external _i1.JSString get flags;

  /// Property [sticky]
  ///
  /// readonly sticky: boolean
  external _i1.JSBoolean get sticky;

  /// Property [unicode]
  ///
  /// readonly unicode: boolean
  external _i1.JSBoolean get unicode;

  /// Property [dotAll]
  ///
  /// readonly dotAll: boolean
  external _i1.JSBoolean get dotAll;

  /// Property [hasIndices]
  ///
  /// readonly hasIndices: boolean
  external _i1.JSBoolean get hasIndices;

  /// Method [exec]
  ///
  /// Parameters:
  /// - string: string
  ///
  /// Returns:
  /// - RegExpExecArray | null
  external RegExpExecArray? exec(_i1.JSString string);

  /// Method [test]
  ///
  /// Parameters:
  /// - string: string
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean test(_i1.JSString string);

  /// Property [source]
  ///
  /// readonly source: string
  external _i1.JSString get source;

  /// Property [global]
  ///
  /// readonly global: boolean
  external _i1.JSBoolean get global;

  /// Property [ignoreCase]
  ///
  /// readonly ignoreCase: boolean
  external _i1.JSBoolean get ignoreCase;

  /// Property [multiline]
  ///
  /// readonly multiline: boolean
  external _i1.JSBoolean get multiline;

  /// Method [compile]
  ///
  /// Parameters:
  /// - pattern: string
  /// - flags: string
  ///
  /// Returns:
  /// -
  external _i1.JSAny compile(_i1.JSString pattern, [_i1.JSString flags]);
}

/// Interface [RegExpConstructor]
@_i1.JS('RegExp')
extension type RegExpConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - pattern: RegExp | string
  /// - flags: string
  external RegExpConstructor.$1(_i1.JSAny pattern, [_i1.JSString flags]);

  /// Constructor
  ///
  /// Parameters:
  /// - pattern: RegExp | string
  external RegExpConstructor.$2(_i1.JSAny pattern);

  /// Constructor
  ///
  /// Parameters:
  /// - pattern: string
  /// - flags: string
  external RegExpConstructor.$3(_i1.JSString pattern, [_i1.JSString flags]);

  /// Property [$one]
  ///
  /// $one: string
  @_i1.JS('"\$1"')
  external _i1.JSString $one;

  /// Property [$two]
  ///
  /// $two: string
  @_i1.JS('"\$2"')
  external _i1.JSString $two;

  /// Property [$three]
  ///
  /// $three: string
  @_i1.JS('"\$3"')
  external _i1.JSString $three;

  /// Property [$four]
  ///
  /// $four: string
  @_i1.JS('"\$4"')
  external _i1.JSString $four;

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

  /// Property [$seven]
  ///
  /// $seven: string
  @_i1.JS('"\$7"')
  external _i1.JSString $seven;

  /// Property [$eight]
  ///
  /// $eight: string
  @_i1.JS('"\$8"')
  external _i1.JSString $eight;

  /// Property [$nine]
  ///
  /// $nine: string
  @_i1.JS('"\$9"')
  external _i1.JSString $nine;

  /// Property [input]
  ///
  /// input: string
  @_i1.JS('"input"')
  external _i1.JSString input;

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

  /// Property [$ampersand]
  ///
  /// $ampersand: string
  @_i1.JS('"\$&"')
  external _i1.JSString $ampersand;

  /// Property [lastParen]
  ///
  /// lastParen: string
  @_i1.JS('"lastParen"')
  external _i1.JSString lastParen;

  /// Property [$plus]
  ///
  /// $plus: string
  @_i1.JS('"\$+"')
  external _i1.JSString $plus;

  /// Property [leftContext]
  ///
  /// leftContext: string
  @_i1.JS('"leftContext"')
  external _i1.JSString leftContext;

  /// Property [$backquote]
  ///
  /// $backquote: string
  @_i1.JS('"\$`"')
  external _i1.JSString $backquote;

  /// Property [rightContext]
  ///
  /// rightContext: string
  @_i1.JS('"rightContext"')
  external _i1.JSString rightContext;

  /// Property [$singlequote]
  ///
  /// $singlequote: string
  @_i1.JS('"\$\'"')
  external _i1.JSString $singlequote;

  /// Property [null$]
  ///
  /// readonly null$: RegExpConstructor
  external RegExpConstructor get null$;

  /// Property [prototype]
  ///
  /// readonly prototype: RegExp
  @_i1.JS('"prototype"')
  external RegExp get prototype;
}

/// Interface [String]
extension type String.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external String([_i1.JSAny value]);

  /// Method [codePointAt]
  ///
  /// Parameters:
  /// - pos: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? codePointAt(_i1.JSNumber pos);

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [endsWith]
  ///
  /// Parameters:
  /// - searchString: string
  /// - endPosition: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean endsWith(_i1.JSString searchString, [_i1.JSNumber endPosition]);

  /// Method [normalize$1]
  ///
  /// Parameters:
  /// - form: "NFC" | "NFD" | "NFKC" | "NFKD"
  ///
  /// Returns:
  /// - string
  @_i1.JS('normalize')
  external _i1.JSString normalize$1(_i1.JSString form);

  /// Method [normalize$2]
  ///
  /// Parameters:
  /// - form: string
  ///
  /// Returns:
  /// - string
  @_i1.JS('normalize')
  external _i1.JSString normalize$2([_i1.JSString form]);

  /// Method [repeat]
  ///
  /// Parameters:
  /// - count: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString repeat(_i1.JSNumber count);

  /// Method [startsWith]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean startsWith(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [anchor]
  ///
  /// Parameters:
  /// - name: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString anchor(_i1.JSString name);

  /// Method [big]
  ///
  /// Returns:
  /// - string
  external _i1.JSString big();

  /// Method [blink]
  ///
  /// Returns:
  /// - string
  external _i1.JSString blink();

  /// Method [bold]
  ///
  /// Returns:
  /// - string
  external _i1.JSString bold();

  /// Method [fixed]
  ///
  /// Returns:
  /// - string
  external _i1.JSString fixed();

  /// Method [fontcolor]
  ///
  /// Parameters:
  /// - color: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString fontcolor(_i1.JSString color);

  /// Method [fontsize$1]
  ///
  /// Parameters:
  /// - size: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('fontsize')
  external _i1.JSString fontsize$1(_i1.JSNumber size);

  /// Method [fontsize$2]
  ///
  /// Parameters:
  /// - size: string
  ///
  /// Returns:
  /// - string
  @_i1.JS('fontsize')
  external _i1.JSString fontsize$2(_i1.JSString size);

  /// Method [italics]
  ///
  /// Returns:
  /// - string
  external _i1.JSString italics();

  /// Method [link]
  ///
  /// Parameters:
  /// - url: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString link(_i1.JSString url);

  /// Method [small]
  ///
  /// Returns:
  /// - string
  external _i1.JSString small();

  /// Method [strike]
  ///
  /// Returns:
  /// - string
  external _i1.JSString strike();

  /// Method [sub]
  ///
  /// Returns:
  /// - string
  external _i1.JSString sub();

  /// Method [sup]
  ///
  /// Returns:
  /// - string
  external _i1.JSString sup();

  /// Method [match$1]
  ///
  /// Parameters:
  /// - matcher:
  ///
  /// Returns:
  /// - RegExpMatchArray | null
  @_i1.JS('match')
  external RegExpMatchArray? match$1(_i1.JSObject matcher);

  /// Method [replace$1]
  ///
  /// Parameters:
  /// - searchValue:
  /// - replaceValue: string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replace')
  external _i1.JSString replace$1(_i1.JSObject searchValue, _i1.JSString replaceValue);

  /// Method [replace$2]
  ///
  /// Parameters:
  /// - searchValue:
  /// - replacer: (substring: string, ...args: any[]) => string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replace')
  external _i1.JSString replace$2(_i1.JSObject searchValue, _i1.JSFunction replacer);

  /// Method [search$1]
  ///
  /// Parameters:
  /// - searcher:
  ///
  /// Returns:
  /// - number
  @_i1.JS('search')
  external _i1.JSNumber search$1(_i1.JSObject searcher);

  /// Method [split$1]
  ///
  /// Parameters:
  /// - splitter:
  /// - limit: number
  ///
  /// Returns:
  /// - string[]
  @_i1.JS('split')
  external _i1.JSArray<_i1.JSString> split$1(_i1.JSObject splitter, [_i1.JSNumber limit]);

  /// Method [padStart]
  ///
  /// Parameters:
  /// - maxLength: number
  /// - fillString: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString padStart(_i1.JSNumber maxLength, [_i1.JSString fillString]);

  /// Method [padEnd]
  ///
  /// Parameters:
  /// - maxLength: number
  /// - fillString: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString padEnd(_i1.JSNumber maxLength, [_i1.JSString fillString]);

  /// Method [trimEnd]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimEnd();

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

  /// Method [trimRight]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trimRight();

  /// Method [matchAll]
  ///
  /// Parameters:
  /// - regexp: RegExp
  ///
  /// Returns:
  /// - RegExpStringIterator
  external RegExpStringIterator<RegExpExecArray> matchAll(RegExp regexp);

  /// Method [toLocaleLowerCase$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleLowerCase')
  external _i1.JSString toLocaleLowerCase$1([_i2.LocalesArgument locales]);

  /// Method [toLocaleUpperCase$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleUpperCase')
  external _i1.JSString toLocaleUpperCase$1([_i2.LocalesArgument locales]);

  /// Method [localeCompare$1]
  ///
  /// Parameters:
  /// - that: string
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.CollatorOptions
  ///
  /// Returns:
  /// - number
  @_i1.JS('localeCompare')
  external _i1.JSNumber localeCompare$1(_i1.JSString that, [_i2.LocalesArgument locales, _i2.CollatorOptions options]);

  /// Method [replaceAll$1]
  ///
  /// Parameters:
  /// - searchValue: string | RegExp
  /// - replaceValue: string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replaceAll')
  external _i1.JSString replaceAll$1(_i1.JSAny searchValue, _i1.JSString replaceValue);

  /// Method [replaceAll$2]
  ///
  /// Parameters:
  /// - searchValue: string | RegExp
  /// - replacer: (substring: string, ...args: any[]) => string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replaceAll')
  external _i1.JSString replaceAll$2(_i1.JSAny searchValue, _i1.JSFunction replacer);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - string | undefined
  external _i1.JSString? at(_i1.JSNumber index);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [charAt]
  ///
  /// Parameters:
  /// - pos: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString charAt(_i1.JSNumber pos);

  /// Method [charCodeAt]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber charCodeAt(_i1.JSNumber index);

  /// Method [concat]
  ///
  /// Parameters:
  /// - ...strings: string[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString concat(_i1.JSArray<_i1.JSString> strings);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchString: string
  /// - position: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSString searchString, [_i1.JSNumber position]);

  /// Method [localeCompare$2]
  ///
  /// Parameters:
  /// - that: string
  ///
  /// Returns:
  /// - number
  @_i1.JS('localeCompare')
  external _i1.JSNumber localeCompare$2(_i1.JSString that);

  /// Method [match$2]
  ///
  /// Parameters:
  /// - regexp: string | RegExp
  ///
  /// Returns:
  /// - RegExpMatchArray | null
  @_i1.JS('match')
  external RegExpMatchArray? match$2(_i1.JSAny regexp);

  /// Method [replace$3]
  ///
  /// Parameters:
  /// - searchValue: string | RegExp
  /// - replaceValue: string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replace')
  external _i1.JSString replace$3(_i1.JSAny searchValue, _i1.JSString replaceValue);

  /// Method [replace$4]
  ///
  /// Parameters:
  /// - searchValue: string | RegExp
  /// - replacer: (substring: string, ...args: any[]) => string
  ///
  /// Returns:
  /// - string
  @_i1.JS('replace')
  external _i1.JSString replace$4(_i1.JSAny searchValue, _i1.JSFunction replacer);

  /// Method [search$2]
  ///
  /// Parameters:
  /// - regexp: string | RegExp
  ///
  /// Returns:
  /// - number
  @_i1.JS('search')
  external _i1.JSNumber search$2(_i1.JSAny regexp);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [split$2]
  ///
  /// Parameters:
  /// - separator: string | RegExp
  /// - limit: number
  ///
  /// Returns:
  /// - string[]
  @_i1.JS('split')
  external _i1.JSArray<_i1.JSString> split$2(_i1.JSAny separator, [_i1.JSNumber limit]);

  /// Method [substring]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString substring(_i1.JSNumber start, [_i1.JSNumber end]);

  /// Method [toLowerCase]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLowerCase();

  /// Method [toLocaleLowerCase$2]
  ///
  /// Parameters:
  /// - locales: string | string[]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleLowerCase')
  external _i1.JSString toLocaleLowerCase$2([_i1.JSAny locales]);

  /// Method [toUpperCase]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toUpperCase();

  /// Method [toLocaleUpperCase$2]
  ///
  /// Parameters:
  /// - locales: string | string[]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleUpperCase')
  external _i1.JSString toLocaleUpperCase$2([_i1.JSAny locales]);

  /// Method [trim]
  ///
  /// Returns:
  /// - string
  external _i1.JSString trim();

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [substr]
  ///
  /// Parameters:
  /// - from: number
  /// - length: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString substr(_i1.JSNumber from, [_i1.JSNumber length]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - string
  external _i1.JSString valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSString value);
  external _i1.JSString operator [](_i1.JSNumber index);

  /// Method [localeCompare$3]
  ///
  /// Parameters:
  /// - that: string
  /// - locales: string | string[]
  /// - options: Intl.CollatorOptions
  ///
  /// Returns:
  /// - number
  @_i1.JS('localeCompare')
  external _i1.JSNumber localeCompare$3(_i1.JSString that, [_i1.JSAny locales, _i2.CollatorOptions options]);
}

/// Interface [StringConstructor]
@_i1.JS('String')
extension type StringConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external StringConstructor([_i1.JSAny value]);

  /// Method [fromCodePoint]
  ///
  /// Parameters:
  /// - ...codePoints: number[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString fromCodePoint(_i1.JSArray<_i1.JSNumber> codePoints);

  /// Method [raw]
  ///
  /// Parameters:
  /// - template:
  /// - ...substitutions: any[]
  ///
  /// Returns:
  /// - string
  external _i1.JSString raw(_i1.JSObject template, _i1.JSArray<_i1.JSAny> substitutions);

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
}

/// Interface [Int8Array]
extension type Int8Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int8Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int8Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int8Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int8Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int8Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int8Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int8Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Int8Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Uint8Array]
extension type Uint8Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint8Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint8Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint8Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint8Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint8Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Uint8Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Uint8ClampedArray]
extension type Uint8ClampedArray<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint8ClampedArray.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint8ClampedArray.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint8ClampedArray.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint8ClampedArray.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ClampedArray.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ClampedArray.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint8ClampedArray.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Uint8ClampedArray"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Int16Array]
extension type Int16Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int16Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int16Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int16Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int16Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int16Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int16Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int16Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Int16Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Uint16Array]
extension type Uint16Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint16Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint16Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint16Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint16Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint16Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint16Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint16Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Uint16Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Int32Array]
extension type Int32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int32Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int32Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int32Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int32Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int32Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int32Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int32Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Int32Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Uint32Array]
extension type Uint32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint32Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint32Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint32Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint32Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint32Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint32Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint32Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Uint32Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Float32Array]
extension type Float32Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Float32Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Float32Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Float32Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Float32Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float32Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float32Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Float32Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Float32Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Float64Array]
extension type Float64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Float64Array.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Float64Array.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Float64Array.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Float64Array.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float64Array.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float64Array.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Float64Array.$7(_i1.JSAny array);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> values();

  /// Property [null$]
  ///
  /// readonly null$: "Float64Array"
  external _i1.JSString get null$;

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSNumber>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  @_i1.JS('findLast')
  external _i1.JSNumber? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array toSorted([_i1.JSFunction compareFn]);

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

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number | undefined
  external _i1.JSNumber? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, obj: ) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: number
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSNumber searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: number, index: number, array: ) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduce')
  external _i1.JSNumber reduce$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduce$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: ) => number
  /// - initialValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('reduceRight')
  external _i1.JSNumber reduceRight$2(_i1.JSFunction callbackfn, _i1.JSNumber initialValue);

  /// Method [reduceRight$3]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: ) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$3<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: number, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: number, b: number) => number
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSAny valueOf();
  external void operator []=(_i1.JSNumber index, _i1.JSNumber value);
  external _i1.JSNumber operator [](_i1.JSNumber index);
}

/// Interface [Generator]
extension type Generator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, TReturn, TNext> {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...[value]: [] | [TNext]
  ///
  /// Returns:
  /// - IteratorResult
  external IteratorResult<T, TReturn> next(_i1.JSArray<_i1.JSAny> _);

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
@_i1.JS('Generator')
extension type GeneratorFunction.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: any[]
  external GeneratorFunction.$1(_i1.JSArray<_i1.JSAny> args);

  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external GeneratorFunction.$2(_i1.JSArray<_i1.JSString> args);

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

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;
}

/// Interface [GeneratorFunctionConstructor]
@_i1.JS('GeneratorFunction')
extension type GeneratorFunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external GeneratorFunctionConstructor(_i1.JSArray<_i1.JSString> args);

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
  /// Property [iterator]
  ///
  /// readonly iterator:
  external _i1.JSSymbol get iterator;

  /// Property [prototype]
  ///
  /// readonly prototype: Symbol
  external _i1.JSSymbol get prototype;

  /// Method [for$]
  ///
  /// Parameters:
  /// - key: string
  ///
  /// Returns:
  /// -
  @_i1.JS('for')
  external _i1.JSSymbol for$(_i1.JSString key);

  /// Method [keyFor]
  ///
  /// Parameters:
  /// - sym:
  ///
  /// Returns:
  /// - string | undefined
  external _i1.JSString? keyFor(_i1.JSSymbol sym);

  /// Property [hasInstance]
  ///
  /// readonly hasInstance:
  external _i1.JSSymbol get hasInstance;

  /// Property [isConcatSpreadable]
  ///
  /// readonly isConcatSpreadable:
  external _i1.JSSymbol get isConcatSpreadable;

  /// Property [match]
  ///
  /// readonly match:
  external _i1.JSSymbol get match;

  /// Property [replace]
  ///
  /// readonly replace:
  external _i1.JSSymbol get replace;

  /// Property [search]
  ///
  /// readonly search:
  external _i1.JSSymbol get search;

  /// Property [species]
  ///
  /// readonly species:
  external _i1.JSSymbol get species;

  /// Property [split]
  ///
  /// readonly split:
  external _i1.JSSymbol get split;

  /// Property [toPrimitive]
  ///
  /// readonly toPrimitive:
  external _i1.JSSymbol get toPrimitive;

  /// Property [toStringTag]
  ///
  /// readonly toStringTag:
  external _i1.JSSymbol get toStringTag;

  /// Property [unscopables]
  ///
  /// readonly unscopables:
  external _i1.JSSymbol get unscopables;

  /// Property [asyncIterator]
  ///
  /// readonly asyncIterator:
  external _i1.JSSymbol get asyncIterator;

  /// Property [matchAll]
  ///
  /// readonly matchAll:
  external _i1.JSSymbol get matchAll;
}

/// Interface [IteratorYieldResult]
extension type IteratorYieldResult<TYield extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type IteratorReturnResult<TReturn extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type Iterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...[value]: [] | [TNext]
  ///
  /// Returns:
  /// - IteratorResult
  external IteratorResult<T, TReturn> next(_i1.JSArray<_i1.JSAny> _);

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
extension type Iterable<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {}

/// Interface [IterableIterator]
extension type IterableIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, Iterator<T, TReturn, TNext> {}

/// Interface [IteratorObject]
extension type IteratorObject<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, Iterator<T, TReturn, TNext> {}

/// Typedef [BuiltinIteratorReturn]
///
///
typedef BuiltinIteratorReturn = _i1.JSAny;

/// Interface [ArrayIterator]
extension type ArrayIterator<T extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [IArguments]
extension type IArguments.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [length]
  ///
  /// length: number
  external _i1.JSNumber length;

  /// Property [callee]
  ///
  /// callee: Function$
  external Function$ callee;

  external void operator []=(_i1.JSNumber index, _i1.JSAny value);
  external _i1.JSAny operator [](_i1.JSNumber index);
}

/// Interface [MapIterator]
extension type MapIterator<T extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [SetIterator]
extension type SetIterator<T extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [Promise]
extension type Promise<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - executor: (resolve: (value: T | PromiseLike) => void, reject: (reason: any) => void) => void
  external Promise(_i1.JSFunction executor);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

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
@_i1.JS('Promise')
extension type PromiseConstructor<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - executor: (resolve: (value: T | PromiseLike) => void, reject: (reason: any) => void) => void
  external PromiseConstructor(_i1.JSFunction executor);

  /// Method [all$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('all')
  external _i1.JSPromise<_i1.JSArray<Awaited<T>>> all$1<T extends _i1.JSAny>(
    Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values,
  );

  /// Method [race$1]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('race')
  external _i1.JSPromise<Awaited<T>> race$1<T extends _i1.JSAny>(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values);

  /// Property [prototype]
  ///
  /// readonly prototype: Promise
  external _i1.JSPromise<_i1.JSAny> get prototype;

  /// Method [all$2]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('all')
  external _i1.JSPromise<_i1.JSObject> all$2<T extends _i1.JSAny>(T values);

  /// Method [race$2]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('race')
  external _i1.JSPromise<Awaited> race$2<T extends _i1.JSAny>(T values);

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

  /// Method [resolve$1]
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('resolve')
  external _i1.JSPromise resolve$1();

  /// Method [resolve$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - value: T
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('resolve')
  external _i1.JSPromise<Awaited<T>> resolve$2<T extends _i1.JSAny>(T value);

  /// Method [resolve$3]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - value: T | PromiseLike
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('resolve')
  external _i1.JSPromise<Awaited<T>> resolve$3<T extends _i1.JSAny>(_i1.JSAny value);

  /// Property [null$]
  ///
  /// readonly null$: PromiseConstructor
  external PromiseConstructor get null$;

  /// Method [allSettled$1]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('allSettled')
  external _i1.JSPromise<_i1.JSObject> allSettled$1<T extends _i1.JSAny>(T values);

  /// Method [allSettled$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('allSettled')
  external _i1.JSPromise<_i1.JSArray<PromiseSettledResult<Awaited<T>>>> allSettled$2<T extends _i1.JSAny>(
    Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values,
  );

  /// Method [any$1]
  ///
  /// Type Parameters:
  /// - T extends readonly [] | []
  ///
  /// Parameters:
  /// - values: T
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('any')
  external _i1.JSPromise<Awaited> any$1<T extends _i1.JSAny>(T values);

  /// Method [any$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - values: Iterable
  ///
  /// Returns:
  /// - Promise
  @_i1.JS('any')
  external _i1.JSPromise<Awaited<T>> any$2<T extends _i1.JSAny>(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> values);
}

/// Interface [StringIterator]
extension type StringIterator<T extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [Int8ArrayConstructor]
@_i1.JS('Int8Array')
extension type Int8ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int8ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int8ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int8ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int8ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int8ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int8ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int8ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('from')
  external _i1.JSInt8Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('from')
  external _i1.JSInt8Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Int8Array
  external _i1.JSInt8Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int8Array
  external _i1.JSInt8Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('from')
  external _i1.JSInt8Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int8Array
  @_i1.JS('from')
  external _i1.JSInt8Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Uint8ArrayConstructor]
@_i1.JS('Uint8Array')
extension type Uint8ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint8ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint8ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint8ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint8ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint8ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('from')
  external _i1.JSUint8Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('from')
  external _i1.JSUint8Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Uint8Array
  external _i1.JSUint8Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint8Array
  external _i1.JSUint8Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('from')
  external _i1.JSUint8Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8Array
  @_i1.JS('from')
  external _i1.JSUint8Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Uint8ClampedArrayConstructor]
@_i1.JS('Uint8ClampedArray')
extension type Uint8ClampedArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint8ClampedArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint8ClampedArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint8ClampedArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint8ClampedArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ClampedArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint8ClampedArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint8ClampedArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('from')
  external _i1.JSUint8ClampedArray from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('from')
  external _i1.JSUint8ClampedArray from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Uint8ClampedArray
  external _i1.JSUint8ClampedArray get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint8ClampedArray
  external _i1.JSUint8ClampedArray of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('from')
  external _i1.JSUint8ClampedArray from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint8ClampedArray
  @_i1.JS('from')
  external _i1.JSUint8ClampedArray from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Int16ArrayConstructor]
@_i1.JS('Int16Array')
extension type Int16ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int16ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int16ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int16ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int16ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int16ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int16ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int16ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('from')
  external _i1.JSInt16Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('from')
  external _i1.JSInt16Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Int16Array
  external _i1.JSInt16Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int16Array
  external _i1.JSInt16Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('from')
  external _i1.JSInt16Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int16Array
  @_i1.JS('from')
  external _i1.JSInt16Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Uint16ArrayConstructor]
@_i1.JS('Uint16Array')
extension type Uint16ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint16ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint16ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint16ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint16ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint16ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint16ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint16ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('from')
  external _i1.JSUint16Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('from')
  external _i1.JSUint16Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Uint16Array
  external _i1.JSUint16Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint16Array
  external _i1.JSUint16Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('from')
  external _i1.JSUint16Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint16Array
  @_i1.JS('from')
  external _i1.JSUint16Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Int32ArrayConstructor]
@_i1.JS('Int32Array')
extension type Int32ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Int32ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Int32ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Int32ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Int32ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int32ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Int32ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Int32ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('from')
  external _i1.JSInt32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('from')
  external _i1.JSInt32Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Int32Array
  external _i1.JSInt32Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Int32Array
  external _i1.JSInt32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('from')
  external _i1.JSInt32Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Int32Array
  @_i1.JS('from')
  external _i1.JSInt32Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Uint32ArrayConstructor]
@_i1.JS('Uint32Array')
extension type Uint32ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Uint32ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Uint32ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Uint32ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Uint32ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint32ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Uint32ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Uint32ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('from')
  external _i1.JSUint32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('from')
  external _i1.JSUint32Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Uint32Array
  external _i1.JSUint32Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Uint32Array
  external _i1.JSUint32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('from')
  external _i1.JSUint32Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Uint32Array
  @_i1.JS('from')
  external _i1.JSUint32Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Float32ArrayConstructor]
@_i1.JS('Float32Array')
extension type Float32ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Float32ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Float32ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Float32ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Float32ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float32ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float32ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Float32ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('from')
  external _i1.JSFloat32Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('from')
  external _i1.JSFloat32Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Float32Array
  external _i1.JSFloat32Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Float32Array
  external _i1.JSFloat32Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('from')
  external _i1.JSFloat32Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float32Array
  @_i1.JS('from')
  external _i1.JSFloat32Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [Float64ArrayConstructor]
@_i1.JS('Float64Array')
extension type Float64ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - elements: Iterable
  external Float64ArrayConstructor.$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Constructor
  external Float64ArrayConstructor.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external Float64ArrayConstructor.$3(_i1.JSNumber length);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike
  external Float64ArrayConstructor.$4(ArrayLike<_i1.JSNumber> array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float64ArrayConstructor.$5(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external Float64ArrayConstructor.$6(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external Float64ArrayConstructor.$7(_i1.JSAny array);

  /// Method [from$1]
  ///
  /// Parameters:
  /// - elements: Iterable
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('from')
  external _i1.JSFloat64Array from$1(Iterable<_i1.JSNumber, _i1.JSAny, _i1.JSAny> elements);

  /// Method [from$2]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - elements: Iterable
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('from')
  external _i1.JSFloat64Array from$2<T extends _i1.JSAny>(
    Iterable<T, _i1.JSAny, _i1.JSAny> elements, [
    _i1.JSFunction mapfn,
    _i1.JSAny thisArg,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: Float64Array
  external _i1.JSFloat64Array get prototype;

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

  /// Method [of]
  ///
  /// Parameters:
  /// - ...items: number[]
  ///
  /// Returns:
  /// - Float64Array
  external _i1.JSFloat64Array of(_i1.JSArray<_i1.JSNumber> items);

  /// Method [from$3]
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('from')
  external _i1.JSFloat64Array from$3(ArrayLike<_i1.JSNumber> arrayLike);

  /// Method [from$4]
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - arrayLike: ArrayLike
  /// - mapfn: (v: T, k: number) => number
  /// - thisArg: any
  ///
  /// Returns:
  /// - Float64Array
  @_i1.JS('from')
  external _i1.JSFloat64Array from$4<T extends _i1.JSAny>(
    ArrayLike<T> arrayLike,
    _i1.JSFunction mapfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Interface [ProxyHandler]
extension type ProxyHandler<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
@_i1.JS('T')
extension type ProxyConstructor<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends object
  ///
  /// Parameters:
  /// - target: T
  /// - handler: ProxyHandler
  external ProxyConstructor(T target, ProxyHandler<T> handler);

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
extension type Symbol.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

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

  /// Method [valueOf]
  ///
  /// Returns:
  /// -
  external _i1.JSSymbol valueOf();
}

/// Interface [Date]
extension type Date.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - value: number | string | Date
  external Date.$1(_i1.JSAny value);

  /// Constructor
  external Date.$2();

  /// Constructor
  ///
  /// Parameters:
  /// - value: number | string
  external Date.$3(_i1.JSAny value);

  /// Constructor
  ///
  /// Parameters:
  /// - year: number
  /// - monthIndex: number
  /// - date: number
  /// - hours: number
  /// - minutes: number
  /// - seconds: number
  /// - ms: number
  external Date.$4(
    _i1.JSNumber year,
    _i1.JSNumber monthIndex, [
    _i1.JSNumber date,
    _i1.JSNumber hours,
    _i1.JSNumber minutes,
    _i1.JSNumber seconds,
    _i1.JSNumber ms,
  ]);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [toLocaleDateString$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleDateString')
  external _i1.JSString toLocaleDateString$1([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [toLocaleTimeString$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleTimeString')
  external _i1.JSString toLocaleTimeString$1([_i2.LocalesArgument locales, _i2.DateTimeFormatOptions options]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [toDateString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toDateString();

  /// Method [toTimeString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toTimeString();

  /// Method [toLocaleString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2();

  /// Method [toLocaleDateString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleDateString')
  external _i1.JSString toLocaleDateString$2();

  /// Method [toLocaleTimeString$2]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleTimeString')
  external _i1.JSString toLocaleTimeString$2();

  /// Method [valueOf]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber valueOf();

  /// Method [getTime]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getTime();

  /// Method [getFullYear]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFullYear();

  /// Method [getUTCFullYear]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCFullYear();

  /// Method [getMonth]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMonth();

  /// Method [getUTCMonth]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMonth();

  /// Method [getDate]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getDate();

  /// Method [getUTCDate]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCDate();

  /// Method [getDay]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getDay();

  /// Method [getUTCDay]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCDay();

  /// Method [getHours]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getHours();

  /// Method [getUTCHours]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCHours();

  /// Method [getMinutes]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMinutes();

  /// Method [getUTCMinutes]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMinutes();

  /// Method [getSeconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getSeconds();

  /// Method [getUTCSeconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCSeconds();

  /// Method [getMilliseconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getMilliseconds();

  /// Method [getUTCMilliseconds]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUTCMilliseconds();

  /// Method [getTimezoneOffset]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getTimezoneOffset();

  /// Method [setTime]
  ///
  /// Parameters:
  /// - time: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setTime(_i1.JSNumber time);

  /// Method [setMilliseconds]
  ///
  /// Parameters:
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setMilliseconds(_i1.JSNumber ms);

  /// Method [setUTCMilliseconds]
  ///
  /// Parameters:
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCMilliseconds(_i1.JSNumber ms);

  /// Method [setSeconds]
  ///
  /// Parameters:
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setSeconds(_i1.JSNumber sec, [_i1.JSNumber ms]);

  /// Method [setUTCSeconds]
  ///
  /// Parameters:
  /// - sec: number
  /// - ms: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCSeconds(_i1.JSNumber sec, [_i1.JSNumber ms]);

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

  /// Method [setDate]
  ///
  /// Parameters:
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setDate(_i1.JSNumber date);

  /// Method [setUTCDate]
  ///
  /// Parameters:
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCDate(_i1.JSNumber date);

  /// Method [setMonth]
  ///
  /// Parameters:
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setMonth(_i1.JSNumber month, [_i1.JSNumber date]);

  /// Method [setUTCMonth]
  ///
  /// Parameters:
  /// - month: number
  /// - date: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber setUTCMonth(_i1.JSNumber month, [_i1.JSNumber date]);

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

  /// Method [toUTCString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toUTCString();

  /// Method [toISOString]
  ///
  /// Returns:
  /// - string
  external _i1.JSString toISOString();

  /// Method [toJSON]
  ///
  /// Parameters:
  /// - key: any
  ///
  /// Returns:
  /// - string
  external _i1.JSString toJSON([_i1.JSAny key]);

  /// Method [toLocaleString$3]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$3([_i1.JSAny locales, _i2.DateTimeFormatOptions options]);

  /// Method [toLocaleDateString$3]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleDateString')
  external _i1.JSString toLocaleDateString$3([_i1.JSAny locales, _i2.DateTimeFormatOptions options]);

  /// Method [toLocaleTimeString$3]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.DateTimeFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleTimeString')
  external _i1.JSString toLocaleTimeString$3([_i1.JSAny locales, _i2.DateTimeFormatOptions options]);
}

/// Interface [JSON]
extension type JSON.$(_i1.JSAny _) implements _i1.JSAny {
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

  /// Method [stringify$1]
  ///
  /// Parameters:
  /// - value: any
  /// - replacer: (this: any, key: string, value: any) => any
  /// - space: string | number
  ///
  /// Returns:
  /// - string
  @_i1.JS('stringify')
  external _i1.JSString stringify$1(_i1.JSAny value, [_i1.JSFunction replacer, _i1.JSAny space]);

  /// Method [stringify$2]
  ///
  /// Parameters:
  /// - value: any
  /// - replacer: (number | string)[] | null
  /// - space: string | number
  ///
  /// Returns:
  /// - string
  @_i1.JS('stringify')
  external _i1.JSString stringify$2(_i1.JSAny value, [_i1.JSArray<_i1.JSAny>? replacer, _i1.JSAny space]);
}

/// Interface [ArrayBuffer]
extension type ArrayBuffer.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  external ArrayBuffer.$1();

  /// Constructor
  ///
  /// Parameters:
  /// - byteLength: number
  external ArrayBuffer.$2(_i1.JSNumber byteLength);

  /// Property [null$]
  ///
  /// readonly null$: "ArrayBuffer"
  external _i1.JSString get null$;

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
  /// - ArrayBuffer
  external _i1.JSArrayBuffer slice([_i1.JSNumber begin, _i1.JSNumber end]);
}

/// Interface [DataView]
extension type DataView<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - byteLength: number
  external DataView(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber byteLength]);

  /// Property [null$]
  ///
  /// readonly null$: string
  external _i1.JSString get null$;

  /// Method [getBigInt64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt getBigInt64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getBigUint64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - bigint
  external _i1.JSBigInt getBigUint64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

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

  /// Method [getFloat32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFloat32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getFloat64]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getFloat64(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getInt8]
  ///
  /// Parameters:
  /// - byteOffset: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt8(_i1.JSNumber byteOffset);

  /// Method [getInt16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt16(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getInt32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getInt32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getUint8]
  ///
  /// Parameters:
  /// - byteOffset: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint8(_i1.JSNumber byteOffset);

  /// Method [getUint16]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint16(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

  /// Method [getUint32]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - littleEndian: boolean
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getUint32(_i1.JSNumber byteOffset, [_i1.JSBoolean littleEndian]);

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

  /// Method [setInt8]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  ///
  /// Returns:
  /// - void
  external void setInt8(_i1.JSNumber byteOffset, _i1.JSNumber value);

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

  /// Method [setUint8]
  ///
  /// Parameters:
  /// - byteOffset: number
  /// - value: number
  ///
  /// Returns:
  /// - void
  external void setUint8(_i1.JSNumber byteOffset, _i1.JSNumber value);

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
}

/// Interface [ArrayBufferConstructor]
@_i1.JS('ArrayBuffer')
extension type ArrayBufferConstructor.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  external ArrayBufferConstructor.$1();

  /// Constructor
  ///
  /// Parameters:
  /// - byteLength: number
  external ArrayBufferConstructor.$2(_i1.JSNumber byteLength);

  /// Property [null$]
  ///
  /// readonly null$: ArrayBufferConstructor
  external ArrayBufferConstructor get null$;

  /// Property [prototype]
  ///
  /// readonly prototype: ArrayBuffer
  external _i1.JSArrayBuffer get prototype;

  /// Method [isView]
  ///
  /// Parameters:
  /// - arg: any
  ///
  /// Returns:
  /// -
  external _i1.JSBoolean isView(_i1.JSAny arg);
}

/// Interface [SharedArrayBuffer]
extension type SharedArrayBuffer.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - byteLength: number
  external SharedArrayBuffer([_i1.JSNumber byteLength]);

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
@_i1.JS('SharedArrayBuffer')
extension type SharedArrayBufferConstructor.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - byteLength: number
  external SharedArrayBufferConstructor([_i1.JSNumber byteLength]);

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
extension type ArrayBufferTypes.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [SharedArrayBuffer$]
  ///
  /// SharedArrayBuffer$: SharedArrayBuffer
  @_i1.JS('SharedArrayBuffer')
  external SharedArrayBuffer SharedArrayBuffer$;

  /// Property [ArrayBuffer$]
  ///
  /// ArrayBuffer$: ArrayBuffer
  @_i1.JS('ArrayBuffer')
  external _i1.JSArrayBuffer ArrayBuffer$;
}

/// Interface [Atomics]
extension type Atomics.$(_i1.JSAny _) implements _i1.JSAny {
  /// Method [add$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('add')
  external _i1.JSNumber add$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [and$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('and')
  external _i1.JSNumber and$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [compareExchange$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - expectedValue: number
  /// - replacementValue: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('compareExchange')
  external _i1.JSNumber compareExchange$1(
    _i1.JSAny typedArray,
    _i1.JSNumber index,
    _i1.JSNumber expectedValue,
    _i1.JSNumber replacementValue,
  );

  /// Method [exchange$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('exchange')
  external _i1.JSNumber exchange$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [isLockFree]
  ///
  /// Parameters:
  /// - size: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean isLockFree(_i1.JSNumber size);

  /// Method [load$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('load')
  external _i1.JSNumber load$1(_i1.JSAny typedArray, _i1.JSNumber index);

  /// Method [or$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('or')
  external _i1.JSNumber or$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [store$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('store')
  external _i1.JSNumber store$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [sub$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('sub')
  external _i1.JSNumber sub$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Method [wait$1]
  ///
  /// Parameters:
  /// - typedArray: Int32Array
  /// - index: number
  /// - value: number
  /// - timeout: number
  ///
  /// Returns:
  /// - "ok" | "not-equal" | "timed-out"
  @_i1.JS('wait')
  external _i1.JSString wait$1(
    _i1.JSInt32Array typedArray,
    _i1.JSNumber index,
    _i1.JSNumber value, [
    _i1.JSNumber timeout,
  ]);

  /// Method [notify$1]
  ///
  /// Parameters:
  /// - typedArray: Int32Array
  /// - index: number
  /// - count: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('notify')
  external _i1.JSNumber notify$1(_i1.JSInt32Array typedArray, _i1.JSNumber index, [_i1.JSNumber count]);

  /// Method [xor$1]
  ///
  /// Parameters:
  /// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
  /// - index: number
  /// - value: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('xor')
  external _i1.JSNumber xor$1(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value);

  /// Property [null$]
  ///
  /// readonly null$: "Atomics"
  external _i1.JSString get null$;

  /// Method [add$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('add')
  external _i1.JSBigInt add$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [and$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('and')
  external _i1.JSBigInt and$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [compareExchange$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - expectedValue: bigint
  /// - replacementValue: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('compareExchange')
  external _i1.JSBigInt compareExchange$2(
    _i1.JSAny typedArray,
    _i1.JSNumber index,
    _i1.JSBigInt expectedValue,
    _i1.JSBigInt replacementValue,
  );

  /// Method [exchange$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('exchange')
  external _i1.JSBigInt exchange$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [load$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('load')
  external _i1.JSBigInt load$2(_i1.JSAny typedArray, _i1.JSNumber index);

  /// Method [or$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('or')
  external _i1.JSBigInt or$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [store$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('store')
  external _i1.JSBigInt store$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [sub$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('sub')
  external _i1.JSBigInt sub$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);

  /// Method [wait$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array
  /// - index: number
  /// - value: bigint
  /// - timeout: number
  ///
  /// Returns:
  /// - "ok" | "not-equal" | "timed-out"
  @_i1.JS('wait')
  external _i1.JSString wait$2(
    BigInt64Array<ArrayBufferLike> typedArray,
    _i1.JSNumber index,
    _i1.JSBigInt value, [
    _i1.JSNumber timeout,
  ]);

  /// Method [notify$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array
  /// - index: number
  /// - count: number
  ///
  /// Returns:
  /// - number
  @_i1.JS('notify')
  external _i1.JSNumber notify$2(BigInt64Array<ArrayBufferLike> typedArray, _i1.JSNumber index, [_i1.JSNumber count]);

  /// Method [xor$2]
  ///
  /// Parameters:
  /// - typedArray: BigInt64Array | BigUint64Array
  /// - index: number
  /// - value: bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('xor')
  external _i1.JSBigInt xor$2(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSBigInt value);
}

/// Interface [AsyncGenerator]
extension type AsyncGenerator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, AsyncIteratorObject<T, TReturn, TNext> {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...[value]: [] | [TNext]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<IteratorResult<T, TReturn>> next(_i1.JSArray<_i1.JSAny> _);

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
@_i1.JS('AsyncGenerator')
extension type AsyncGeneratorFunction.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: any[]
  external AsyncGeneratorFunction.$1(_i1.JSArray<_i1.JSAny> args);

  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external AsyncGeneratorFunction.$2(_i1.JSArray<_i1.JSString> args);

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
@_i1.JS('AsyncGeneratorFunction')
extension type AsyncGeneratorFunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external AsyncGeneratorFunctionConstructor(_i1.JSArray<_i1.JSString> args);

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
extension type AsyncIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {
  /// Method [next]
  ///
  /// Parameters:
  /// - ...[value]: [] | [TNext]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<IteratorResult<T, TReturn>> next(_i1.JSArray<_i1.JSAny> _);

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
extension type AsyncIterable<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny {}

/// Interface [AsyncIterableIterator]
extension type AsyncIterableIterator<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(
  _i1.JSAny _
)
    implements _i1.JSAny, AsyncIterator<T, TReturn, TNext> {}

/// Interface [AsyncIteratorObject]
extension type AsyncIteratorObject<T extends _i1.JSAny, TReturn extends _i1.JSAny, TNext extends _i1.JSAny>.$(
  _i1.JSAny _
)
    implements _i1.JSAny, AsyncIterator<T, TReturn, TNext> {}

/// Interface [RegExpMatchArray]
extension type RegExpMatchArray.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;

  /// Property [indices]
  ///
  /// indices?: RegExpIndicesArray
  external RegExpIndicesArray? indices;

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
}

/// Interface [RegExpExecArray]
extension type RegExpExecArray.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;

  /// Property [indices]
  ///
  /// indices?: RegExpIndicesArray
  external RegExpIndicesArray? indices;

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
}

/// Typedef [FlatArray]
///
/// []
typedef FlatArray<Arr extends _i1.JSAny, Depth extends _i1.JSNumber> = _i1.JSAny;

/// Interface [BigIntToLocaleStringOptions]
extension type BigIntToLocaleStringOptions.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type BigInt.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type BigInt64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external BigInt64Array.$1([_i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | Iterable
  external BigInt64Array.$2(_i1.JSAny array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigInt64Array.$3(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigInt64Array.$4(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external BigInt64Array.$5(_i1.JSAny array);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigInt64Array) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigInt64Array) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduce')
  external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigInt64Array) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduceRight')
  external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigInt64Array) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSBigInt> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number | bigint
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<TArrayBuffer> subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<TArrayBuffer> valueOf();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSBigInt> values();

  /// Property [null$]
  ///
  /// readonly null$: "BigInt64Array"
  external _i1.JSString get null$;
  external void operator []=(_i1.JSNumber index, _i1.JSBigInt value);
  external _i1.JSBigInt operator [](_i1.JSNumber index);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSBigInt>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  @_i1.JS('findLast')
  external _i1.JSBigInt? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number
  ///
  /// Returns:
  /// - BigInt64Array
  external BigInt64Array<_i1.JSArrayBuffer> toSorted([_i1.JSFunction compareFn]);

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
}

/// Interface [BigInt64ArrayConstructor]
@_i1.JS('BigInt64Array')
extension type BigInt64ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external BigInt64ArrayConstructor.$1([_i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | Iterable
  external BigInt64ArrayConstructor.$2(_i1.JSAny array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigInt64ArrayConstructor.$3(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigInt64ArrayConstructor.$4(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external BigInt64ArrayConstructor.$5(_i1.JSAny array);

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
extension type BigUint64Array<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external BigUint64Array.$1([_i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | Iterable
  external BigUint64Array.$2(_i1.JSAny array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigUint64Array.$3(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigUint64Array.$4(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external BigUint64Array.$5(_i1.JSAny array);

  /// Property [BYTES_PER_ELEMENT]
  ///
  /// readonly BYTES_PER_ELEMENT: number
  external _i1.JSNumber get BYTES_PER_ELEMENT;

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

  /// Method [entries]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [every]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

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

  /// Method [filter]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => any
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> filter(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [find]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigUint64Array) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [includes]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [indexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Method [join]
  ///
  /// Parameters:
  /// - separator: string
  ///
  /// Returns:
  /// - string
  external _i1.JSString join([_i1.JSString separator]);

  /// Method [keys]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSNumber> keys();

  /// Method [lastIndexOf]
  ///
  /// Parameters:
  /// - searchElement: bigint
  /// - fromIndex: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex]);

  /// Property [length]
  ///
  /// readonly length: number
  external _i1.JSNumber get length;

  /// Method [map]
  ///
  /// Parameters:
  /// - callbackfn: (value: bigint, index: number, array: BigUint64Array) => bigint
  /// - thisArg: any
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg]);

  /// Method [reduce$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduce')
  external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);

  /// Method [reduce$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigUint64Array) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduce')
  external U reduce$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reduceRight$1]
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
  ///
  /// Returns:
  /// - bigint
  @_i1.JS('reduceRight')
  external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);

  /// Method [reduceRight$2]
  ///
  /// Type Parameters:
  /// - U
  ///
  /// Parameters:
  /// - callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigUint64Array) => U
  /// - initialValue: U
  ///
  /// Returns:
  /// - U
  @_i1.JS('reduceRight')
  external U reduceRight$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue);

  /// Method [reverse]
  ///
  /// Returns:
  /// -
  external _i1.JSAny reverse();

  /// Method [set]
  ///
  /// Parameters:
  /// - array: ArrayLike
  /// - offset: number
  ///
  /// Returns:
  /// - void
  external void set(ArrayLike<_i1.JSBigInt> array, [_i1.JSNumber offset]);

  /// Method [slice]
  ///
  /// Parameters:
  /// - start: number
  /// - end: number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> slice([_i1.JSNumber start, _i1.JSNumber end]);

  /// Method [some]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
  /// - thisArg: any
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [sort]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number | bigint
  ///
  /// Returns:
  /// -
  external _i1.JSAny sort([_i1.JSFunction compareFn]);

  /// Method [subarray]
  ///
  /// Parameters:
  /// - begin: number
  /// - end: number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<TArrayBuffer> subarray([_i1.JSNumber begin, _i1.JSNumber end]);

  /// Method [toLocaleString]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options]);

  /// Method [toString$]
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$();

  /// Method [valueOf]
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<TArrayBuffer> valueOf();

  /// Method [values]
  ///
  /// Returns:
  /// - ArrayIterator
  external ArrayIterator<_i1.JSBigInt> values();

  /// Property [null$]
  ///
  /// readonly null$: "BigUint64Array"
  external _i1.JSString get null$;
  external void operator []=(_i1.JSNumber index, _i1.JSBigInt value);
  external _i1.JSBigInt operator [](_i1.JSNumber index);

  /// Method [at]
  ///
  /// Parameters:
  /// - index: number
  ///
  /// Returns:
  /// - bigint | undefined
  external _i1.JSBigInt? at(_i1.JSNumber index);

  /// Method [findLast$1]
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
  @_i1.JS('findLast')
  external S? findLast$1<S extends _i1.JSBigInt>(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLast$2]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - bigint | undefined
  @_i1.JS('findLast')
  external _i1.JSBigInt? findLast$2(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [findLastIndex]
  ///
  /// Parameters:
  /// - predicate: (value: bigint, index: number, array: ) =>
  /// - thisArg: any
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber findLastIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg]);

  /// Method [toReversed]
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> toReversed();

  /// Method [toSorted]
  ///
  /// Parameters:
  /// - compareFn: (a: bigint, b: bigint) => number
  ///
  /// Returns:
  /// - BigUint64Array
  external BigUint64Array<_i1.JSArrayBuffer> toSorted([_i1.JSFunction compareFn]);

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
}

/// Interface [BigUint64ArrayConstructor]
@_i1.JS('BigUint64Array')
extension type BigUint64ArrayConstructor<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - length: number
  external BigUint64ArrayConstructor.$1([_i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | Iterable
  external BigUint64ArrayConstructor.$2(_i1.JSAny array);

  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends ArrayBufferLike = ArrayBuffer
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigUint64ArrayConstructor.$3(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - buffer: ArrayBuffer
  /// - byteOffset: number
  /// - length: number
  external BigUint64ArrayConstructor.$4(_i1.JSArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber length]);

  /// Constructor
  ///
  /// Parameters:
  /// - array: ArrayLike | ArrayBuffer
  external BigUint64ArrayConstructor.$5(_i1.JSAny array);

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
extension type Number.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external Number([_i1.JSAny value]);

  /// Method [toLocaleString$1]
  ///
  /// Parameters:
  /// - locales: Intl.LocalesArgument
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$1([_i2.LocalesArgument locales, _i2.NumberFormatOptions options]);

  /// Method [toString$]
  ///
  /// Parameters:
  /// - radix: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('toString')
  external _i1.JSString toString$([_i1.JSNumber radix]);

  /// Method [toFixed]
  ///
  /// Parameters:
  /// - fractionDigits: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toFixed([_i1.JSNumber fractionDigits]);

  /// Method [toExponential]
  ///
  /// Parameters:
  /// - fractionDigits: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toExponential([_i1.JSNumber fractionDigits]);

  /// Method [toPrecision]
  ///
  /// Parameters:
  /// - precision: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString toPrecision([_i1.JSNumber precision]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber valueOf();

  /// Method [toLocaleString$2]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: Intl.NumberFormatOptions
  ///
  /// Returns:
  /// - string
  @_i1.JS('toLocaleString')
  external _i1.JSString toLocaleString$2([_i1.JSAny locales, _i2.NumberFormatOptions options]);
}

/// Interface [PromiseFulfilledResult]
extension type PromiseFulfilledResult<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type PromiseRejectedResult.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type RegExpStringIterator<T extends _i1.JSAny>.$(_i1.JSAny _)
    implements _i1.JSAny, IteratorObject<T, BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [AggregateError]
extension type AggregateError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - errors: Iterable
  /// - message: string
  external AggregateError.$1(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> errors, [_i1.JSString message]);

  /// Constructor
  ///
  /// Parameters:
  /// - errors: Iterable
  /// - message: string
  /// - options: ErrorOptions
  external AggregateError.$2(
    Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> errors, [
    _i1.JSString message,
    ErrorOptions options,
  ]);

  /// Property [errors]
  ///
  /// errors: any[]
  external _i1.JSArray<_i1.JSAny> errors;
}

/// Interface [AggregateErrorConstructor]
@_i1.JS('AggregateError')
extension type AggregateErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - errors: Iterable
  /// - message: string
  external AggregateErrorConstructor.$1(Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> errors, [_i1.JSString message]);

  /// Constructor
  ///
  /// Parameters:
  /// - errors: Iterable
  /// - message: string
  /// - options: ErrorOptions
  external AggregateErrorConstructor.$2(
    Iterable<_i1.JSAny, _i1.JSAny, _i1.JSAny> errors, [
    _i1.JSString message,
    ErrorOptions options,
  ]);

  /// Property [prototype]
  ///
  /// readonly prototype: AggregateError
  external AggregateError get prototype;
}

/// Interface [WeakRef]
extension type WeakRef<T extends WeakKey>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey
  ///
  /// Parameters:
  /// - target: T
  external WeakRef(T target);

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
@_i1.JS('WeakRef')
extension type WeakRefConstructor<T extends WeakKey>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T extends WeakKey
  ///
  /// Parameters:
  /// - target: T
  external WeakRefConstructor(T target);

  /// Property [prototype]
  ///
  /// readonly prototype: WeakRef
  external WeakRef<_i1.JSAny> get prototype;
}

/// Interface [FinalizationRegistry]
extension type FinalizationRegistry<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - cleanupCallback: (heldValue: T) => void
  external FinalizationRegistry(_i1.JSFunction cleanupCallback);

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
@_i1.JS('FinalizationRegistry')
extension type FinalizationRegistryConstructor<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - T
  ///
  /// Parameters:
  /// - cleanupCallback: (heldValue: T) => void
  external FinalizationRegistryConstructor(_i1.JSFunction cleanupCallback);

  /// Property [prototype]
  ///
  /// readonly prototype: FinalizationRegistry
  external FinalizationRegistry<_i1.JSAny> get prototype;
}

/// Interface [ErrorOptions]
extension type ErrorOptions.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [cause]
  ///
  /// cause?:
  external _i1.JSAny? cause;
}

/// Interface [Error]
extension type Error.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external Error.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external Error.$2([_i1.JSString message]);

  /// Property [cause]
  ///
  /// cause?:
  external _i1.JSAny? cause;

  /// Property [name]
  ///
  /// name: string
  external _i1.JSString name;

  /// Property [message]
  ///
  /// message: string
  external _i1.JSString message;

  /// Property [stack]
  ///
  /// stack?: string
  external _i1.JSString? stack;
}

/// Interface [ErrorConstructor]
@_i1.JS('Error')
extension type ErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external ErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external ErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: Error
  external Error get prototype;
}

/// Interface [EvalErrorConstructor]
@_i1.JS('EvalError')
extension type EvalErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external EvalErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external EvalErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: EvalError
  external EvalError get prototype;
}

/// Interface [RangeErrorConstructor]
@_i1.JS('RangeError')
extension type RangeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external RangeErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external RangeErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: RangeError
  external RangeError get prototype;
}

/// Interface [ReferenceErrorConstructor]
@_i1.JS('ReferenceError')
extension type ReferenceErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external ReferenceErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external ReferenceErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: ReferenceError
  external ReferenceError get prototype;
}

/// Interface [SyntaxErrorConstructor]
@_i1.JS('SyntaxError')
extension type SyntaxErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external SyntaxErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external SyntaxErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: SyntaxError
  external SyntaxError get prototype;
}

/// Interface [TypeErrorConstructor]
@_i1.JS('TypeError')
extension type TypeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external TypeErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external TypeErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: TypeError
  external TypeError get prototype;
}

/// Interface [URIErrorConstructor]
@_i1.JS('URIError')
extension type URIErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external URIErrorConstructor.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external URIErrorConstructor.$2([_i1.JSString message]);

  /// Property [prototype]
  ///
  /// readonly prototype: URIError
  external URIError get prototype;
}

/// Interface [RegExpIndicesArray]
extension type RegExpIndicesArray.$(_i1.JSAny _) implements _i1.JSAny, Array<_i1.JSArray<_i1.JSAny>> {
  /// Property [groups]
  ///
  /// groups?:
  external _i1.JSObject? groups;
}

/// Interface [WeakKeyTypes]
extension type WeakKeyTypes.$(_i1.JSAny _) implements _i1.JSAny {
  /// Property [symbol]
  ///
  /// symbol:
  external _i1.JSSymbol symbol;

  /// Property [object]
  ///
  /// object: object
  external _i1.JSObject object;
}

/// Method [eval]
///
/// Parameters:
/// - x: string
@_i1.JS('eval')
external _i1.JSAny eval(_i1.JSString x);

/// Method [parseInt]
///
/// Parameters:
/// - string: string
/// - radix: number
@_i1.JS('parseInt')
external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix]);

/// Method [parseFloat]
///
/// Parameters:
/// - string: string
@_i1.JS('parseFloat')
external _i1.JSNumber parseFloat(_i1.JSString string);

/// Method [isNaN]
///
/// Parameters:
/// - number: number
@_i1.JS('isNaN')
external _i1.JSBoolean isNaN(_i1.JSNumber number);

/// Method [isFinite]
///
/// Parameters:
/// - number: number
@_i1.JS('isFinite')
external _i1.JSBoolean isFinite(_i1.JSNumber number);

/// Method [decodeURI]
///
/// Parameters:
/// - encodedURI: string
@_i1.JS('decodeURI')
external _i1.JSString decodeURI(_i1.JSString encodedURI);

/// Method [decodeURIComponent]
///
/// Parameters:
/// - encodedURIComponent: string
@_i1.JS('decodeURIComponent')
external _i1.JSString decodeURIComponent(_i1.JSString encodedURIComponent);

/// Method [encodeURI]
///
/// Parameters:
/// - uri: string
@_i1.JS('encodeURI')
external _i1.JSString encodeURI(_i1.JSString uri);

/// Method [encodeURIComponent]
///
/// Parameters:
/// - uriComponent: string | number | boolean
@_i1.JS('encodeURIComponent')
external _i1.JSString encodeURIComponent(_i1.JSAny uriComponent);

/// Method [escape]
///
/// Parameters:
/// - string: string
@_i1.JS('escape')
external _i1.JSString escape(_i1.JSString string);

/// Method [unescape]
///
/// Parameters:
/// - string: string
@_i1.JS('unescape')
external _i1.JSString unescape(_i1.JSString string);

/// Typedef [PropertyKey]
///
/// string | number |
typedef PropertyKey = _i1.JSAny;

/// Interface [PropertyDescriptor]
extension type PropertyDescriptor.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type PropertyDescriptorMap.$(_i1.JSAny _) implements _i1.JSAny {
  external void operator []=(PropertyKey key, PropertyDescriptor value);
  external PropertyDescriptor operator [](PropertyKey key);
}

/// Interface [Object]
extension type Object.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external Object([_i1.JSAny value]);

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
@_i1.JS('Function')
extension type FunctionConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - ...args: string[]
  external FunctionConstructor(_i1.JSArray<_i1.JSString> args);

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
extension type CallableFunction.$(_i1.JSAny _) implements _i1.JSAny, Function$ {
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
extension type NewableFunction.$(_i1.JSAny _) implements _i1.JSAny, Function$ {
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
extension type Boolean.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external Boolean([_i1.JSAny value]);

  /// Method [valueOf]
  ///
  /// Returns:
  /// - boolean
  external _i1.JSBoolean valueOf();
}

/// Interface [BooleanConstructor]
@_i1.JS('Boolean')
extension type BooleanConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Constructor
  ///
  /// Parameters:
  /// - value: any
  external BooleanConstructor([_i1.JSAny value]);

  /// Property [prototype]
  ///
  /// readonly prototype: Boolean
  external Boolean get prototype;
}

/// Interface [TemplateStringsArray]
extension type TemplateStringsArray.$(_i1.JSAny _) implements _i1.JSAny, ReadonlyArray<_i1.JSString> {
  /// Property [raw]
  ///
  /// readonly raw: readonly string[]
  external _i1.JSArray<_i1.JSString> get raw;
}

/// Interface [ImportMeta]
extension type ImportMeta.$(_i1.JSAny _) implements _i1.JSAny {}

/// Interface [ImportCallOptions]
extension type ImportCallOptions.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type ImportAssertions.$(_i1.JSAny _) implements _i1.JSAny {
  external void operator []=(_i1.JSString key, _i1.JSString value);
  external _i1.JSString operator [](_i1.JSString key);
}

/// Interface [ImportAttributes]
extension type ImportAttributes.$(_i1.JSAny _) implements _i1.JSAny {
  external void operator []=(_i1.JSString key, _i1.JSString value);
  external _i1.JSString operator [](_i1.JSString key);
}

/// Interface [EvalError]
extension type EvalError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external EvalError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external EvalError.$2([_i1.JSString message]);
}

/// Interface [RangeError]
extension type RangeError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external RangeError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external RangeError.$2([_i1.JSString message]);
}

/// Interface [ReferenceError]
extension type ReferenceError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external ReferenceError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external ReferenceError.$2([_i1.JSString message]);
}

/// Interface [SyntaxError]
extension type SyntaxError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external SyntaxError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external SyntaxError.$2([_i1.JSString message]);
}

/// Interface [TypeError]
extension type TypeError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external TypeError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external TypeError.$2([_i1.JSString message]);
}

/// Interface [URIError]
extension type URIError.$(_i1.JSAny _) implements _i1.JSAny, Error {
  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  /// - options: ErrorOptions
  external URIError.$1([_i1.JSString message, ErrorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - message: string
  external URIError.$2([_i1.JSString message]);
}

/// Interface [ConcatArray]
extension type ConcatArray<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type TypedPropertyDescriptor<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type PromiseLike<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type ArrayLike<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
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
extension type ThisType<T extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {}

/// Typedef [WeakKey]
///
/// WeakKeyTypes[keyof WeakKeyTypes]
typedef WeakKey = _i1.JSAny;

/// Typedef [ArrayBufferLike]
///
/// ArrayBufferTypes[keyof ArrayBufferTypes]
typedef ArrayBufferLike = _i1.JSAny;

/// Interface [ArrayBufferView]
extension type ArrayBufferView<TArrayBuffer extends ArrayBufferLike>.$(_i1.JSAny _) implements _i1.JSAny {
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
@_i1.JS('DataView')
extension type DataViewConstructor<TArrayBuffer extends _i1.JSAny>.$(_i1.JSAny _) implements _i1.JSAny {
  /// Constructor
  ///
  /// Type Parameters:
  /// - TArrayBuffer extends
  ///
  /// Parameters:
  /// - buffer: TArrayBuffer
  /// - byteOffset: number
  /// - byteLength: number
  external DataViewConstructor(TArrayBuffer buffer, [_i1.JSNumber byteOffset, _i1.JSNumber byteLength]);

  /// Property [prototype]
  ///
  /// readonly prototype: DataView
  external DataView<ArrayBufferLike> get prototype;
}
