// ignore_for_file: camel_case_types, non_constant_identifier_names

library es2023;// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;import 'es2023_intl.dart' as _i2;/// Typedef [ClassMemberDecoratorContext]
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
extension type ClassMethodDecoratorContext<This extends _i1.JSAny,Value extends _i1.JSFunction>.$(_i1.JSObject _) implements _i1.JSObject {
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
extension type ClassGetterDecoratorContext<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
extension type ClassSetterDecoratorContext<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
extension type ClassAccessorDecoratorContext<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
extension type ClassAccessorDecoratorTarget<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
external void set(This this$, Value value, );
}
/// Interface [ClassAccessorDecoratorResult]
extension type ClassAccessorDecoratorResult<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
external void set(This this$, Value value, );
/// Method [init]
///
/// Parameters:
/// - this: This
/// - value: Value
///
/// Returns:
/// - Value
external Value init(This this$, Value value, );
}
/// Interface [ClassFieldDecoratorContext]
extension type ClassFieldDecoratorContext<This extends _i1.JSAny,Value extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
/// <TFunction extends Function>(target: TFunction) => TFunction | void
typedef ClassDecorator = _i1.JSFunction;
/// Typedef [PropertyDecorator]
///
/// (target: Object, propertyKey: string | ) => void
typedef PropertyDecorator = _i1.JSFunction;
/// Typedef [MethodDecorator]
///
/// <T>(target: Object, propertyKey: string | , descriptor: TypedPropertyDescriptor) => TypedPropertyDescriptor | void
typedef MethodDecorator = _i1.JSFunction;
/// Typedef [ParameterDecorator]
///
/// (target: Object, propertyKey: string |  | undefined, parameterIndex: number) => void
typedef ParameterDecorator = _i1.JSFunction;
/// Interface [Map]
extension type Map<K extends _i1.JSAny,V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
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
external _i1.JSAny set(K key, V value, );
/// Property [size]
///
/// readonly size: number
external _i1.JSNumber get size;
}
/// Interface [MapConstructor]
extension type MapConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: Map
external Map<_i1.JSAny,_i1.JSAny> get prototype;
}
/// Interface [ReadonlyMap]
extension type ReadonlyMap<K extends _i1.JSAny,V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [forEach]
///
/// Parameters:
/// - callbackfn: (value: V, key: K, map: ReadonlyMap) => void
/// - thisArg: any
///
/// Returns:
/// - void
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
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
}
/// Interface [WeakMap]
extension type WeakMap<K extends WeakKey,V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSAny set(K key, V value, );
}
/// Interface [WeakMapConstructor]
extension type WeakMapConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: WeakMap
external WeakMap<WeakKey,_i1.JSAny> get prototype;
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
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
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
/// Method [forEach]
///
/// Parameters:
/// - callbackfn: (value: T, value2: T, set: ReadonlySet) => void
/// - thisArg: any
///
/// Returns:
/// - void
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
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
/// Method [find]
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
@_i1.JS('find') external S? find$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [find]
///
/// Parameters:
/// - predicate: (value: T, index: number, obj: T[]) => 
/// - thisArg: any
///
/// Returns:
/// - T | undefined
@_i1.JS('find') external T? find$2(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [findIndex]
///
/// Parameters:
/// - predicate: (value: T, index: number, obj: T[]) => 
/// - thisArg: any
///
/// Returns:
/// - number
external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [fill]
///
/// Parameters:
/// - value: T
/// - start: number
/// - end: number
///
/// Returns:
/// - 
external _i1.JSAny fill(T value, [_i1.JSNumber start, _i1.JSNumber end, ]);
/// Method [copyWithin]
///
/// Parameters:
/// - target: number
/// - start: number
/// - end: number
///
/// Returns:
/// - 
external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end, ]);
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: 
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i1.JSAny options, ]);
}
/// Interface [ArrayConstructor]
extension type ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Type Parameters:
/// - T
///
/// Parameters:
/// - arrayLike: ArrayLike
///
/// Returns:
/// - T[]
@_i1.JS('from') external _i1.JSArray<T> from$1<T extends _i1.JSAny>(ArrayLike<T> arrayLike);
/// Method [from]
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
@_i1.JS('from') external _i1.JSArray<U> from$2<T extends _i1.JSAny,U extends _i1.JSAny>(ArrayLike<T> arrayLike, _i1.JSFunction mapfn, [_i1.JSAny thisArg, ]);
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
}
/// Interface [DateConstructor]
extension type DateConstructor.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Function]
@_i1.JS('Function') extension type Function$.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [name]
///
/// readonly name: string
external _i1.JSString get name;
}
/// Interface [Math]
extension type Math.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSNumber imul(_i1.JSNumber x, _i1.JSNumber y, );
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
}
/// Interface [NumberConstructor]
extension type NumberConstructor.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix, ]);
}
/// Interface [ObjectConstructor]
extension type ObjectConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [assign]
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
@_i1.JS('assign') external _i1.JSAny assign$1<T extends _i1.JSObject,U extends _i1.JSAny>(T target, U source, );
/// Method [assign]
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
@_i1.JS('assign') external _i1.JSAny assign$2<T extends _i1.JSObject,U extends _i1.JSAny,V extends _i1.JSAny>(T target, U source1, V source2, );
/// Method [assign]
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
@_i1.JS('assign') external _i1.JSAny assign$3<T extends _i1.JSObject,U extends _i1.JSAny,V extends _i1.JSAny,W extends _i1.JSAny>(T target, U source1, V source2, W source3, );
/// Method [assign]
///
/// Parameters:
/// - target: object
/// - ...sources: any[]
///
/// Returns:
/// - any
@_i1.JS('assign') external _i1.JSAny assign$4(_i1.JSObject target, _i1.JSArray<_i1.JSAny> sources, );
/// Method [getOwnPropertySymbols]
///
/// Parameters:
/// - o: any
///
/// Returns:
/// - []
external _i1.JSArray<_i1.JSSymbol> getOwnPropertySymbols(_i1.JSAny o);
/// Method [keys]
///
/// Parameters:
/// - o: 
///
/// Returns:
/// - string[]
external _i1.JSArray<_i1.JSString> keys(_i1.JSObject o);
/// Method [is]
///
/// Parameters:
/// - value1: any
/// - value2: any
///
/// Returns:
/// - boolean
@_i1.JS('is') external _i1.JSBoolean is$(_i1.JSAny value1, _i1.JSAny value2, );
/// Method [setPrototypeOf]
///
/// Parameters:
/// - o: any
/// - proto: object | null
///
/// Returns:
/// - any
external _i1.JSAny setPrototypeOf(_i1.JSAny o, _i1.JSObject? proto, );
}
/// Interface [ReadonlyArray]
extension type ReadonlyArray<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [find]
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
@_i1.JS('find') external S? find$1<S extends T>(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [find]
///
/// Parameters:
/// - predicate: (value: T, index: number, obj: readonly T[]) => 
/// - thisArg: any
///
/// Returns:
/// - T | undefined
@_i1.JS('find') external T? find$2(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [findIndex]
///
/// Parameters:
/// - predicate: (value: T, index: number, obj: readonly T[]) => 
/// - thisArg: any
///
/// Returns:
/// - number
external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: 
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i1.JSAny options, ]);
}
/// Interface [RegExp]
extension type RegExp.$(_i1.JSObject _) implements _i1.JSObject {
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
}
/// Interface [RegExpConstructor]
extension type RegExpConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [String]
extension type String.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSBoolean includes(_i1.JSString searchString, [_i1.JSNumber position, ]);
/// Method [endsWith]
///
/// Parameters:
/// - searchString: string
/// - endPosition: number
///
/// Returns:
/// - boolean
external _i1.JSBoolean endsWith(_i1.JSString searchString, [_i1.JSNumber endPosition, ]);
/// Method [normalize]
///
/// Parameters:
/// - form: "NFC" | "NFD" | "NFKC" | "NFKD"
///
/// Returns:
/// - string
@_i1.JS('normalize') external _i1.JSString normalize$1(_i1.JSString form);
/// Method [normalize]
///
/// Parameters:
/// - form: string
///
/// Returns:
/// - string
@_i1.JS('normalize') external _i1.JSString normalize$2([_i1.JSString form]);
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
external _i1.JSBoolean startsWith(_i1.JSString searchString, [_i1.JSNumber position, ]);
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
/// Method [fontsize]
///
/// Parameters:
/// - size: number
///
/// Returns:
/// - string
@_i1.JS('fontsize') external _i1.JSString fontsize$1(_i1.JSNumber size);
/// Method [fontsize]
///
/// Parameters:
/// - size: string
///
/// Returns:
/// - string
@_i1.JS('fontsize') external _i1.JSString fontsize$2(_i1.JSString size);
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
/// Method [raw]
///
/// Parameters:
/// - template: 
/// - ...substitutions: any[]
///
/// Returns:
/// - string
external _i1.JSString raw(_i1.JSObject template, _i1.JSArray<_i1.JSAny> substitutions, );
}
/// Interface [Int8Array]
extension type Int8Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Uint8Array]
extension type Uint8Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Uint8ClampedArray]
extension type Uint8ClampedArray.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Int16Array]
extension type Int16Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Uint16Array]
extension type Uint16Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Int32Array]
extension type Int32Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Uint32Array]
extension type Uint32Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Float32Array]
extension type Float32Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Float64Array]
extension type Float64Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString(_i1.JSAny locales, [_i2.NumberFormatOptions options, ]);
}
/// Interface [Generator]
extension type Generator<T extends _i1.JSAny,TReturn extends _i1.JSAny,TNext extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Iterator<T,TReturn,TNext> {
/// Method [next]
///
/// Parameters:
/// - ...args: [] | [TNext]
///
/// Returns:
/// - IteratorResult
external IteratorResult<T,TReturn> next(_i1.JSArray<JSAny extends _i1.JSAny> args);
/// Method [return]
///
/// Parameters:
/// - value: TReturn
///
/// Returns:
/// - IteratorResult
@_i1.JS('return') external IteratorResult<T,TReturn> return$(TReturn value);
/// Method [throw]
///
/// Parameters:
/// - e: any
///
/// Returns:
/// - IteratorResult
@_i1.JS('throw') external IteratorResult<T,TReturn> throw$(_i1.JSAny e);
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
external Generator<_i1.JSAny> get prototype;
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
extension type SymbolConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [iterator]
///
/// readonly iterator:  
external _i1.JSSymbol get iterator;
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
typedef IteratorResult<T extends _i1.JSAny,TReturn extends _i1.JSAny> = _i1.JSAny;
/// Interface [Iterator]
extension type Iterator<T extends _i1.JSAny,TReturn extends _i1.JSAny,TNext extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [next]
///
/// Parameters:
/// - ...args: [] | [TNext]
///
/// Returns:
/// - IteratorResult
external IteratorResult<T,TReturn> next(_i1.JSArray<JSAny extends _i1.JSAny> args);
/// Method [return]
///
/// Parameters:
/// - value: TReturn
///
/// Returns:
/// - IteratorResult
@_i1.JS('return') external IteratorResult<T,TReturn> return$([TReturn value]);
/// Method [throw]
///
/// Parameters:
/// - e: any
///
/// Returns:
/// - IteratorResult
@_i1.JS('throw') external IteratorResult<T,TReturn> throw$([_i1.JSAny e]);
}
/// Interface [Iterable]
extension type Iterable<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [IterableIterator]
extension type IterableIterator<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Iterator<T,_i1.JSAny,null> {
}
/// Interface [IArguments]
extension type IArguments.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Map]
extension type Map<K extends _i1.JSAny,V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [entries]
///
/// Returns:
/// - IterableIterator
external IterableIterator<_i1.JSArray<_i1.JSAny>> entries();
/// Method [keys]
///
/// Returns:
/// - IterableIterator
external IterableIterator<K> keys();
/// Method [values]
///
/// Returns:
/// - IterableIterator
external IterableIterator<V> values();
}
/// Interface [Promise]
extension type Promise<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [PromiseConstructor]
extension type PromiseConstructor.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSPromise<_i1.JSArray<Awaited<T>>> all<T extends _i1.JSAny>(Iterable<_i1.JSAny> values);
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
external _i1.JSPromise<Awaited<T>> race<T extends _i1.JSAny>(Iterable<_i1.JSAny> values);
}
/// Interface [Int8ArrayConstructor]
extension type Int8ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Int8Array
external _i1.JSInt8Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Uint8ArrayConstructor]
extension type Uint8ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Uint8Array
external _i1.JSUint8Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Uint8ClampedArrayConstructor]
extension type Uint8ClampedArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Uint8ClampedArray
external _i1.JSUint8ClampedArray from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Int16ArrayConstructor]
extension type Int16ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Int16Array
external _i1.JSInt16Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Uint16ArrayConstructor]
extension type Uint16ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Uint16Array
external _i1.JSUint16Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Int32ArrayConstructor]
extension type Int32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Int32Array
external _i1.JSInt32Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Uint32ArrayConstructor]
extension type Uint32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Uint32Array
external _i1.JSUint32Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Float32ArrayConstructor]
extension type Float32ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Float32Array
external _i1.JSFloat32Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
}
/// Interface [Float64ArrayConstructor]
extension type Float64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [from]
///
/// Parameters:
/// - arrayLike: Iterable
/// - mapfn: (v: number, k: number) => number
/// - thisArg: any
///
/// Returns:
/// - Float64Array
external _i1.JSFloat64Array from(Iterable<_i1.JSNumber> arrayLike, [_i1.JSFunction mapfn, _i1.JSAny thisArg, ]);
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
external _i1.JSAny apply(T target, _i1.JSAny thisArg, _i1.JSArray<_i1.JSAny> argArray, );
/// Method [construct]
///
/// Parameters:
/// - target: T
/// - argArray: any[]
/// - newTarget: Function
///
/// Returns:
/// - object
external _i1.JSObject construct(T target, _i1.JSArray<_i1.JSAny> argArray, Function$ newTarget, );
/// Method [defineProperty]
///
/// Parameters:
/// - target: T
/// - property: string | 
/// - attributes: PropertyDescriptor
///
/// Returns:
/// - boolean
external _i1.JSBoolean defineProperty(T target, _i1.JSAny property, PropertyDescriptor attributes, );
/// Method [deleteProperty]
///
/// Parameters:
/// - target: T
/// - p: string | 
///
/// Returns:
/// - boolean
external _i1.JSBoolean deleteProperty(T target, _i1.JSAny p, );
/// Method [get]
///
/// Parameters:
/// - target: T
/// - p: string | 
/// - receiver: any
///
/// Returns:
/// - any
external _i1.JSAny get(T target, _i1.JSAny p, _i1.JSAny receiver, );
/// Method [getOwnPropertyDescriptor]
///
/// Parameters:
/// - target: T
/// - p: string | 
///
/// Returns:
/// - PropertyDescriptor | undefined
external PropertyDescriptor? getOwnPropertyDescriptor(T target, _i1.JSAny p, );
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
external _i1.JSBoolean has(T target, _i1.JSAny p, );
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
external _i1.JSBoolean set(T target, _i1.JSAny p, _i1.JSAny newValue, _i1.JSAny receiver, );
/// Method [setPrototypeOf]
///
/// Parameters:
/// - target: T
/// - v: object | null
///
/// Returns:
/// - boolean
external _i1.JSBoolean setPrototypeOf(T target, _i1.JSObject? v, );
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
external _i1.JSObject revocable<T extends _i1.JSAny>(T target, ProxyHandler<T> handler, );
}
/// Interface [Symbol]
extension type Symbol.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [Date]
extension type Date.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Map]
extension type Map<K extends _i1.JSAny,V extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [JSON]
extension type JSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [GeneratorFunction]
extension type GeneratorFunction.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [ArrayBuffer]
extension type ArrayBuffer.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [DataView]
extension type DataView.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : string
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [ArrayBufferConstructor]
extension type ArrayBufferConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [null]
///
/// readonly : ArrayBufferConstructor
@_i1.JS('null') external ArrayBufferConstructor get _;
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
external SharedArrayBuffer slice(_i1.JSNumber begin, [_i1.JSNumber end, ]);
/// Property [null]
///
/// readonly : SharedArrayBuffer
@_i1.JS('null') external SharedArrayBuffer get _;
/// Property [null]
///
/// readonly : "SharedArrayBuffer"
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [SharedArrayBufferConstructor]
extension type SharedArrayBufferConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: SharedArrayBuffer
external SharedArrayBuffer get prototype;
}
/// Interface [ArrayBufferTypes]
extension type ArrayBufferTypes.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [SharedArrayBuffer]
///
/// SharedArrayBuffer: SharedArrayBuffer
external SharedArrayBuffer SharedArrayBuffer;

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
external _i1.JSNumber add(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
/// Method [and]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber and(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
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
external _i1.JSNumber compareExchange(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber expectedValue, _i1.JSNumber replacementValue, );
/// Method [exchange]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber exchange(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
/// Method [isLockFree]
///
/// Parameters:
/// - size: number
///
/// Returns:
/// - boolean
external _i1.JSBoolean isLockFree(_i1.JSNumber size);
/// Method [load]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
///
/// Returns:
/// - number
external _i1.JSNumber load(_i1.JSAny typedArray, _i1.JSNumber index, );
/// Method [or]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber or(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
/// Method [store]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber store(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
/// Method [sub]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber sub(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
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
external _i1.JSString wait(_i1.JSInt32Array typedArray, _i1.JSNumber index, _i1.JSNumber value, [_i1.JSNumber timeout, ]);
/// Method [notify]
///
/// Parameters:
/// - typedArray: Int32Array
/// - index: number
/// - count: number
///
/// Returns:
/// - number
external _i1.JSNumber notify(_i1.JSInt32Array typedArray, _i1.JSNumber index, [_i1.JSNumber count, ]);
/// Method [xor]
///
/// Parameters:
/// - typedArray: Int8Array | Uint8Array | Int16Array | Uint16Array | Int32Array | Uint32Array
/// - index: number
/// - value: number
///
/// Returns:
/// - number
external _i1.JSNumber xor(_i1.JSAny typedArray, _i1.JSNumber index, _i1.JSNumber value, );
/// Property [null]
///
/// readonly : "Atomics"
@_i1.JS('null') external _i1.JSString get _;
}
/// Interface [AsyncGenerator]
extension type AsyncGenerator<T extends _i1.JSAny,TReturn extends _i1.JSAny,TNext extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,AsyncIterator<T,TReturn,TNext> {
/// Method [next]
///
/// Parameters:
/// - ...args: [] | [TNext]
///
/// Returns:
/// - Promise
external _i1.JSPromise<IteratorResult<T,TReturn>> next(_i1.JSArray<JSAny extends _i1.JSAny> args);
/// Method [return]
///
/// Parameters:
/// - value: TReturn | PromiseLike
///
/// Returns:
/// - Promise
@_i1.JS('return') external _i1.JSPromise<IteratorResult<T,TReturn>> return$(_i1.JSAny value);
/// Method [throw]
///
/// Parameters:
/// - e: any
///
/// Returns:
/// - Promise
@_i1.JS('throw') external _i1.JSPromise<IteratorResult<T,TReturn>> throw$(_i1.JSAny e);
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
external AsyncGenerator<_i1.JSAny> get prototype;
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
extension type AsyncIterator<T extends _i1.JSAny,TReturn extends _i1.JSAny,TNext extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [next]
///
/// Parameters:
/// - ...args: [] | [TNext]
///
/// Returns:
/// - Promise
external _i1.JSPromise<IteratorResult<T,TReturn>> next(_i1.JSArray<JSAny extends _i1.JSAny> args);
/// Method [return]
///
/// Parameters:
/// - value: TReturn | PromiseLike
///
/// Returns:
/// - Promise
@_i1.JS('return') external _i1.JSPromise<IteratorResult<T,TReturn>> return$([_i1.JSAny value]);
/// Method [throw]
///
/// Parameters:
/// - e: any
///
/// Returns:
/// - Promise
@_i1.JS('throw') external _i1.JSPromise<IteratorResult<T,TReturn>> throw$([_i1.JSAny e]);
}
/// Interface [AsyncIterable]
extension type AsyncIterable<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [AsyncIterableIterator]
extension type AsyncIterableIterator<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,AsyncIterator<T,_i1.JSAny,null> {
}
/// Interface [RegExpMatchArray]
extension type RegExpMatchArray.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [groups]
///
/// groups?: 
external _i1.JSObject? groups;

}
/// Interface [RegExpExecArray]
extension type RegExpExecArray.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [groups]
///
/// groups?: 
external _i1.JSObject? groups;

}
/// Typedef [FlatArray]
///
/// []
typedef FlatArray<Arr extends _i1.JSAny,Depth extends _i1.JSNumber> = _i1.JSAny;
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
/// Method [toString]
///
/// Parameters:
/// - radix: number
///
/// Returns:
/// - string
@_i1.JS('toString') external _i1.JSString toString$([_i1.JSNumber radix]);
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: Intl.LocalesArgument
/// - options: BigIntToLocaleStringOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString([_i2.LocalesArgument locales, BigIntToLocaleStringOptions options, ]);
/// Method [valueOf]
///
/// Returns:
/// - bigint
external _i1.JSBigInt valueOf();
/// Property [null]
///
/// readonly : "BigInt"
@_i1.JS('null') external _i1.JSString get _;
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
external _i1.JSBigInt asIntN(_i1.JSNumber bits, _i1.JSBigInt int, );
/// Method [asUintN]
///
/// Parameters:
/// - bits: number
/// - int: bigint
///
/// Returns:
/// - bigint
external _i1.JSBigInt asUintN(_i1.JSNumber bits, _i1.JSBigInt int, );
}
/// Interface [BigInt64Array]
extension type BigInt64Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [BYTES_PER_ELEMENT]
///
/// readonly BYTES_PER_ELEMENT: number
external _i1.JSNumber get BYTES_PER_ELEMENT;
/// Property [buffer]
///
/// readonly buffer: ArrayBufferLike
external ArrayBufferLike get buffer;
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
external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end, ]);
/// Method [entries]
///
/// Returns:
/// - IterableIterator
external IterableIterator<_i1.JSArray<_i1.JSAny>> entries();
/// Method [every]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - boolean
external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [fill]
///
/// Parameters:
/// - value: bigint
/// - start: number
/// - end: number
///
/// Returns:
/// - 
external _i1.JSAny fill(_i1.JSBigInt value, [_i1.JSNumber start, _i1.JSNumber end, ]);
/// Method [filter]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigInt64Array) => any
/// - thisArg: any
///
/// Returns:
/// - BigInt64Array
external BigInt64Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [find]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - bigint | undefined
external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [findIndex]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - number
external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [forEach]
///
/// Parameters:
/// - callbackfn: (value: bigint, index: number, array: BigInt64Array) => void
/// - thisArg: any
///
/// Returns:
/// - void
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
/// Method [includes]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - boolean
external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
/// Method [indexOf]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - number
external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
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
/// - IterableIterator
external IterableIterator<_i1.JSNumber> keys();
/// Method [lastIndexOf]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - number
external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
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
external BigInt64Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
/// Method [reduce]
///
/// Parameters:
/// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
///
/// Returns:
/// - bigint
@_i1.JS('reduce') external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);
/// Method [reduce]
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
@_i1.JS('reduce') external U reduce$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue, );
/// Method [reduceRight]
///
/// Parameters:
/// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint
///
/// Returns:
/// - bigint
@_i1.JS('reduceRight') external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);
/// Method [reduceRight]
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
@_i1.JS('reduceRight') external U reduceRight$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue, );
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
external void set(ArrayLike array, [_i1.JSNumber offset, ]);
/// Method [slice]
///
/// Parameters:
/// - start: number
/// - end: number
///
/// Returns:
/// - BigInt64Array
external BigInt64Array slice([_i1.JSNumber start, _i1.JSNumber end, ]);
/// Method [some]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigInt64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - boolean
external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
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
external BigInt64Array subarray([_i1.JSNumber begin, _i1.JSNumber end, ]);
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options, ]);
/// Method [toString]
///
/// Returns:
/// - string
@_i1.JS('toString') external _i1.JSString toString$();
/// Method [valueOf]
///
/// Returns:
/// - BigInt64Array
external BigInt64Array valueOf();
/// Method [values]
///
/// Returns:
/// - IterableIterator
external IterableIterator values();
/// Property [null]
///
/// readonly : "BigInt64Array"
@_i1.JS('null') external _i1.JSString get _;
external void operator []=(_i1.JSNumber index, value, );
external operator [](_i1.JSNumber index);
}
/// Interface [BigInt64ArrayConstructor]
extension type BigInt64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: BigInt64Array
external BigInt64Array get prototype;
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
external BigInt64Array of(_i1.JSArray<_i1.JSBigInt> items);
/// Method [from]
///
/// Parameters:
/// - arrayLike: ArrayLike
///
/// Returns:
/// - BigInt64Array
@_i1.JS('from') external BigInt64Array from$1(ArrayLike arrayLike);
/// Method [from]
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
@_i1.JS('from') external BigInt64Array from$2<U extends _i1.JSAny>(ArrayLike<U> arrayLike, _i1.JSFunction mapfn, [_i1.JSAny thisArg, ]);
}
/// Interface [BigUint64Array]
extension type BigUint64Array.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [BYTES_PER_ELEMENT]
///
/// readonly BYTES_PER_ELEMENT: number
external _i1.JSNumber get BYTES_PER_ELEMENT;
/// Property [buffer]
///
/// readonly buffer: ArrayBufferLike
external ArrayBufferLike get buffer;
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
external _i1.JSAny copyWithin(_i1.JSNumber target, _i1.JSNumber start, [_i1.JSNumber end, ]);
/// Method [entries]
///
/// Returns:
/// - IterableIterator
external IterableIterator<_i1.JSArray<_i1.JSAny>> entries();
/// Method [every]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - boolean
external _i1.JSBoolean every(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [fill]
///
/// Parameters:
/// - value: bigint
/// - start: number
/// - end: number
///
/// Returns:
/// - 
external _i1.JSAny fill(_i1.JSBigInt value, [_i1.JSNumber start, _i1.JSNumber end, ]);
/// Method [filter]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigUint64Array) => any
/// - thisArg: any
///
/// Returns:
/// - BigUint64Array
external BigUint64Array filter(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [find]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - bigint | undefined
external _i1.JSBigInt? find(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [findIndex]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - number
external _i1.JSNumber findIndex(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
/// Method [forEach]
///
/// Parameters:
/// - callbackfn: (value: bigint, index: number, array: BigUint64Array) => void
/// - thisArg: any
///
/// Returns:
/// - void
external void forEach(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
/// Method [includes]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - boolean
external _i1.JSBoolean includes(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
/// Method [indexOf]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - number
external _i1.JSNumber indexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
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
/// - IterableIterator
external IterableIterator<_i1.JSNumber> keys();
/// Method [lastIndexOf]
///
/// Parameters:
/// - searchElement: bigint
/// - fromIndex: number
///
/// Returns:
/// - number
external _i1.JSNumber lastIndexOf(_i1.JSBigInt searchElement, [_i1.JSNumber fromIndex, ]);
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
external BigUint64Array map(_i1.JSFunction callbackfn, [_i1.JSAny thisArg, ]);
/// Method [reduce]
///
/// Parameters:
/// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
///
/// Returns:
/// - bigint
@_i1.JS('reduce') external _i1.JSBigInt reduce$1(_i1.JSFunction callbackfn);
/// Method [reduce]
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
@_i1.JS('reduce') external U reduce$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue, );
/// Method [reduceRight]
///
/// Parameters:
/// - callbackfn: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array) => bigint
///
/// Returns:
/// - bigint
@_i1.JS('reduceRight') external _i1.JSBigInt reduceRight$1(_i1.JSFunction callbackfn);
/// Method [reduceRight]
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
@_i1.JS('reduceRight') external U reduceRight$2<U extends _i1.JSAny>(_i1.JSFunction callbackfn, U initialValue, );
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
external void set(ArrayLike array, [_i1.JSNumber offset, ]);
/// Method [slice]
///
/// Parameters:
/// - start: number
/// - end: number
///
/// Returns:
/// - BigUint64Array
external BigUint64Array slice([_i1.JSNumber start, _i1.JSNumber end, ]);
/// Method [some]
///
/// Parameters:
/// - predicate: (value: bigint, index: number, array: BigUint64Array) => boolean
/// - thisArg: any
///
/// Returns:
/// - boolean
external _i1.JSBoolean some(_i1.JSFunction predicate, [_i1.JSAny thisArg, ]);
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
external BigUint64Array subarray([_i1.JSNumber begin, _i1.JSNumber end, ]);
/// Method [toLocaleString]
///
/// Parameters:
/// - locales: string | string[]
/// - options: Intl.NumberFormatOptions
///
/// Returns:
/// - string
external _i1.JSString toLocaleString([_i1.JSAny locales, _i2.NumberFormatOptions options, ]);
/// Method [toString]
///
/// Returns:
/// - string
@_i1.JS('toString') external _i1.JSString toString$();
/// Method [valueOf]
///
/// Returns:
/// - BigUint64Array
external BigUint64Array valueOf();
/// Method [values]
///
/// Returns:
/// - IterableIterator
external IterableIterator values();
/// Property [null]
///
/// readonly : "BigUint64Array"
@_i1.JS('null') external _i1.JSString get _;
external void operator []=(_i1.JSNumber index, value, );
external operator [](_i1.JSNumber index);
}
/// Interface [BigUint64ArrayConstructor]
extension type BigUint64ArrayConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: BigUint64Array
external BigUint64Array get prototype;
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
external BigUint64Array of(_i1.JSArray<_i1.JSBigInt> items);
/// Method [from]
///
/// Parameters:
/// - arrayLike: ArrayLike
///
/// Returns:
/// - BigUint64Array
@_i1.JS('from') external BigUint64Array from$1(ArrayLike arrayLike);
/// Method [from]
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
@_i1.JS('from') external BigUint64Array from$2<U extends _i1.JSAny>(ArrayLike<U> arrayLike, _i1.JSFunction mapfn, [_i1.JSAny thisArg, ]);
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
external _i1.JSString toLocaleString([_i2.LocalesArgument locales, _i2.NumberFormatOptions options, ]);
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
/// Interface [AggregateError]
extension type AggregateError.$(_i1.JSObject _) implements _i1.JSObject,Error {
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
/// Property [null]
///
/// readonly : "WeakRef"
@_i1.JS('null') external _i1.JSString get _;
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
/// Property [null]
///
/// readonly : "FinalizationRegistry"
@_i1.JS('null') external _i1.JSString get _;
/// Method [register]
///
/// Parameters:
/// - target: WeakKey
/// - heldValue: T
/// - unregisterToken: WeakKey
///
/// Returns:
/// - void
external void register(WeakKey target, T heldValue, [WeakKey unregisterToken, ]);
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
/// Property [cause]
///
/// cause?: 
external _i1.JSAny? cause;

}
/// Interface [ErrorConstructor]
extension type ErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [EvalErrorConstructor]
extension type EvalErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [RangeErrorConstructor]
extension type RangeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [ReferenceErrorConstructor]
extension type ReferenceErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [SyntaxErrorConstructor]
extension type SyntaxErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [TypeErrorConstructor]
extension type TypeErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [URIErrorConstructor]
extension type URIErrorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
}
/// Interface [RegExpIndicesArray]
extension type RegExpIndicesArray.$(_i1.JSObject _) implements _i1.JSObject,Array<_i1.JSArray<_i1.JSAny>> {
/// Property [groups]
///
/// groups?: 
external _i1.JSObject? groups;

}
/// Interface [WeakKeyTypes]
extension type WeakKeyTypes.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [symbol]
///
/// symbol: 
external _i1.JSSymbol symbol;

}
/// Method [eval]
///
/// Parameters:
/// - x: string
external _i1.JSAny eval(_i1.JSString x);/// Method [parseInt]
///
/// Parameters:
/// - string: string
/// - radix: number
external _i1.JSNumber parseInt(_i1.JSString string, [_i1.JSNumber radix, ]);/// Method [parseFloat]
///
/// Parameters:
/// - string: string
external _i1.JSNumber parseFloat(_i1.JSString string);/// Method [isNaN]
///
/// Parameters:
/// - number: number
external _i1.JSBoolean isNaN(_i1.JSNumber number);/// Method [isFinite]
///
/// Parameters:
/// - number: number
external _i1.JSBoolean isFinite(_i1.JSNumber number);/// Method [decodeURI]
///
/// Parameters:
/// - encodedURI: string
external _i1.JSString decodeURI(_i1.JSString encodedURI);/// Method [decodeURIComponent]
///
/// Parameters:
/// - encodedURIComponent: string
external _i1.JSString decodeURIComponent(_i1.JSString encodedURIComponent);/// Method [encodeURI]
///
/// Parameters:
/// - uri: string
external _i1.JSString encodeURI(_i1.JSString uri);/// Method [encodeURIComponent]
///
/// Parameters:
/// - uriComponent: string | number | boolean
external _i1.JSString encodeURIComponent(_i1.JSAny uriComponent);/// Method [escape]
///
/// Parameters:
/// - string: string
external _i1.JSString escape(_i1.JSString string);/// Method [unescape]
///
/// Parameters:
/// - string: string
external _i1.JSString unescape(_i1.JSString string);/// Typedef [PropertyKey]
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
external void operator []=(PropertyKey key, PropertyDescriptor value, );
external PropertyDescriptor operator [](PropertyKey key);
}
/// Interface [Object]
extension type Object.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [constructor]
///
/// constructor: Function
external Function$ constructor;

/// Method [toString]
///
/// Returns:
/// - string
@_i1.JS('toString') external _i1.JSString toString$();
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
/// readonly prototype: Function
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
extension type CallableFunction.$(_i1.JSObject _) implements _i1.JSObject,Function$ {
/// Method [apply]
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
@_i1.JS('apply') external R apply$1<T extends _i1.JSAny,R extends _i1.JSAny>(_i1.JSFunction this$, T thisArg, );
/// Method [apply]
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
@_i1.JS('apply') external R apply$2<T extends _i1.JSAny,A extends _i1.JSArray<_i1.JSAny>,R extends _i1.JSAny>(_i1.JSFunction this$, T thisArg, A args, );
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
external R call<T extends _i1.JSAny,A extends _i1.JSArray<_i1.JSAny>,R extends _i1.JSAny>(_i1.JSFunction this$, T thisArg, A args, );
/// Method [bind]
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
@_i1.JS('bind') external OmitThisParameter<T> bind$1<T extends _i1.JSAny>(T this$, ThisParameterType<T> thisArg, );
/// Method [bind]
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
@_i1.JS('bind') external _i1.JSFunction bind$2<T extends _i1.JSAny,A extends _i1.JSArray<_i1.JSAny>,B extends _i1.JSArray<_i1.JSAny>,R extends _i1.JSAny>(_i1.JSFunction this$, T thisArg, A args, );
}
/// Interface [NewableFunction]
extension type NewableFunction.$(_i1.JSObject _) implements _i1.JSObject,Function$ {
/// Method [apply]
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
@_i1.JS('apply') external void apply$1<T extends _i1.JSAny>(T this$, T thisArg, );
/// Method [apply]
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
@_i1.JS('apply') external void apply$2<T extends _i1.JSAny,A extends _i1.JSArray<_i1.JSAny>>(T this$, T thisArg, A args, );
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
external void call<T extends _i1.JSAny,A extends _i1.JSArray<_i1.JSAny>>(T this$, T thisArg, A args, );
/// Method [bind]
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
@_i1.JS('bind') external T bind$1<T extends _i1.JSAny>(T this$, _i1.JSAny thisArg, );
/// Method [bind]
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
@_i1.JS('bind') external R bind$2<A extends _i1.JSArray<_i1.JSAny>,B extends _i1.JSArray<_i1.JSAny>,R extends _i1.JSAny>(R this$, _i1.JSAny thisArg, A args, );
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
extension type TemplateStringsArray.$(_i1.JSObject _) implements _i1.JSObject,ReadonlyArray<_i1.JSString> {
/// Property [raw]
///
/// readonly raw: readonly string[]
external _i1.JSArray<_i1.JSString> get raw;
}
/// Interface [ImportMeta]
extension type ImportMeta.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [ImportCallOptions]
extension type ImportCallOptions.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [assert]
///
/// assert?: ImportAssertions
@_i1.JS('assert') external ImportAssertions? assert$;

/// Property [with]
///
/// with?: ImportAttributes
@_i1.JS('with') external ImportAttributes? with$;

}
/// Interface [ImportAssertions]
extension type ImportAssertions.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSString value, );
external _i1.JSString operator [](_i1.JSString key);
}
/// Interface [ImportAttributes]
extension type ImportAttributes.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSString value, );
external _i1.JSString operator [](_i1.JSString key);
}
/// Interface [EvalError]
extension type EvalError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [RangeError]
extension type RangeError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [ReferenceError]
extension type ReferenceError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [SyntaxError]
extension type SyntaxError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [TypeError]
extension type TypeError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [URIError]
extension type URIError.$(_i1.JSObject _) implements _i1.JSObject,Error {
}
/// Interface [ConcatArray]
extension type ConcatArray<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [length]
///
/// readonly length: number
external _i1.JSNumber get length;
external void operator []=(_i1.JSNumber n, T value, );
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
external _i1.JSArray<T> slice([_i1.JSNumber start, _i1.JSNumber end, ]);
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
typedef PromiseConstructorLike = PromiseLike<T>;
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
external PromiseLike<_i1.JSAny> then<TResult1 extends _i1.JSAny,TResult2 extends _i1.JSAny>([_i1.JSFunction? onfulfilled, _i1.JSFunction? onrejected, ]);
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
external void operator []=(_i1.JSNumber n, T value, );
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
typedef Pick<T extends _i1.JSAny,K extends _i1.JSAny> = _i1.JSObject;
/// Typedef [Record]
///
/// 
typedef Record<K extends _i1.JSAny,T extends _i1.JSAny> = _i1.JSObject;
/// Typedef [Exclude]
///
/// 
typedef Exclude<T extends _i1.JSAny,U extends _i1.JSAny> = _i1.JSAny;
/// Typedef [Extract]
///
/// 
typedef Extract<T extends _i1.JSAny,U extends _i1.JSAny> = _i1.JSAny;
/// Typedef [Omit]
///
/// Pick
typedef Omit<T extends _i1.JSAny,K extends _i1.JSAny> = Pick<T,Exclude<_i1.JSAny,K>>;
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
extension type ThisType<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Typedef [WeakKey]
///
/// WeakKeyTypes[keyof WeakKeyTypes]
typedef WeakKey = _i1.JSAny;
/// Interface [ArrayBuffer]
extension type ArrayBuffer.$(_i1.JSObject _) implements _i1.JSObject {
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
external _i1.JSArrayBuffer slice(_i1.JSNumber begin, [_i1.JSNumber end, ]);
}
/// Typedef [ArrayBufferLike]
///
/// ArrayBufferTypes[keyof ArrayBufferTypes]
typedef ArrayBufferLike = _i1.JSAny;
/// Interface [ArrayBufferView]
extension type ArrayBufferView.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [buffer]
///
/// buffer: ArrayBufferLike
external ArrayBufferLike buffer;

/// Property [byteLength]
///
/// byteLength: number
external _i1.JSNumber byteLength;

/// Property [byteOffset]
///
/// byteOffset: number
external _i1.JSNumber byteOffset;

}
/// Interface [DataViewConstructor]
extension type DataViewConstructor.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [prototype]
///
/// readonly prototype: DataView
external DataView get prototype;
}
