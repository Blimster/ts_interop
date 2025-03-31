// ignore_for_file: camel_case_types, non_constant_identifier_names

library intl; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;
import 'es2023_Intl.dart' as _i2;

/// Interface [CollatorOptions]
extension type CollatorOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [usage]
  ///
  /// usage?: "sort" | "search" | undefined
  external _i1.JSString? usage;

  /// Property [localeMatcher]
  ///
  /// localeMatcher?: "lookup" | "best fit" | undefined
  external _i1.JSString? localeMatcher;

  /// Property [numeric]
  ///
  /// numeric?: boolean | undefined
  external _i1.JSBoolean? numeric;

  /// Property [caseFirst]
  ///
  /// caseFirst?: "upper" | "lower" | "false" | undefined
  external _i1.JSString? caseFirst;

  /// Property [sensitivity]
  ///
  /// sensitivity?: "base" | "accent" | "case" | "variant" | undefined
  external _i1.JSString? sensitivity;

  /// Property [collation]
  ///
  /// collation?: "big5han" | "compat" | "dict" | "direct" | "ducet" | "emoji" | "eor" | "gb2312" | "phonebk" | "phonetic" | "pinyin" | "reformed" | "searchjl" | "stroke" | "trad" | "unihan" | "zhuyin" | undefined
  external _i1.JSString? collation;

  /// Property [ignorePunctuation]
  ///
  /// ignorePunctuation?: boolean | undefined
  external _i1.JSBoolean? ignorePunctuation;
}

/// Interface [ResolvedCollatorOptions]
extension type ResolvedCollatorOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [usage]
  ///
  /// usage: string
  external _i1.JSString usage;

  /// Property [sensitivity]
  ///
  /// sensitivity: string
  external _i1.JSString sensitivity;

  /// Property [ignorePunctuation]
  ///
  /// ignorePunctuation: boolean
  external _i1.JSBoolean ignorePunctuation;

  /// Property [collation]
  ///
  /// collation: string
  external _i1.JSString collation;

  /// Property [caseFirst]
  ///
  /// caseFirst: string
  external _i1.JSString caseFirst;

  /// Property [numeric]
  ///
  /// numeric: boolean
  external _i1.JSBoolean numeric;
}

/// Interface [Collator]
extension type Collator.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [compare]
  ///
  /// Parameters:
  /// - x: string
  /// - y: string
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber compare(_i1.JSString x, _i1.JSString y);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedCollatorOptions
  external ResolvedCollatorOptions resolvedOptions();
}

/// Interface [CollatorConstructor]
extension type CollatorConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Method [supportedLocalesOf]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: CollatorOptions
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> supportedLocalesOf(_i1.JSAny locales, [CollatorOptions options]);
}

/// Interface [NumberFormatOptionsStyleRegistry]
extension type NumberFormatOptionsStyleRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [decimal]
  ///
  /// decimal:
  external Never decimal;

  /// Property [percent]
  ///
  /// percent:
  external Never percent;

  /// Property [currency]
  ///
  /// currency:
  external Never currency;
}

/// Typedef [NumberFormatOptionsStyle]
///
/// keyof NumberFormatOptionsStyleRegistry
typedef NumberFormatOptionsStyle = _i1.JSString;

/// Interface [NumberFormatOptionsCurrencyDisplayRegistry]
extension type NumberFormatOptionsCurrencyDisplayRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [code]
  ///
  /// code:
  external Never code;

  /// Property [symbol]
  ///
  /// symbol:
  external Never symbol;

  /// Property [name]
  ///
  /// name:
  external Never name;
}

/// Typedef [NumberFormatOptionsCurrencyDisplay]
///
/// keyof NumberFormatOptionsCurrencyDisplayRegistry
typedef NumberFormatOptionsCurrencyDisplay = _i1.JSString;

/// Interface [NumberFormatOptionsUseGroupingRegistry]
extension type NumberFormatOptionsUseGroupingRegistry.$(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [NumberFormatOptionsUseGrouping]
///
///
typedef NumberFormatOptionsUseGrouping = _i1.JSAny;

/// Typedef [ResolvedNumberFormatOptionsUseGrouping]
///
///
typedef ResolvedNumberFormatOptionsUseGrouping = _i1.JSAny;

/// Interface [NumberFormatOptions]
extension type NumberFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: "lookup" | "best fit" | undefined
  external _i1.JSString? localeMatcher;

  /// Property [style]
  ///
  /// style?: NumberFormatOptionsStyle | undefined
  external NumberFormatOptionsStyle? style;

  /// Property [currency]
  ///
  /// currency?: string | undefined
  external _i1.JSString? currency;

  /// Property [currencyDisplay]
  ///
  /// currencyDisplay?: NumberFormatOptionsCurrencyDisplay | undefined
  external NumberFormatOptionsCurrencyDisplay? currencyDisplay;

  /// Property [useGrouping]
  ///
  /// useGrouping?: NumberFormatOptionsUseGrouping | undefined
  external NumberFormatOptionsUseGrouping? useGrouping;

  /// Property [minimumIntegerDigits]
  ///
  /// minimumIntegerDigits?: number | undefined
  external _i1.JSNumber? minimumIntegerDigits;

  /// Property [minimumFractionDigits]
  ///
  /// minimumFractionDigits?: number | undefined
  external _i1.JSNumber? minimumFractionDigits;

  /// Property [maximumFractionDigits]
  ///
  /// maximumFractionDigits?: number | undefined
  external _i1.JSNumber? maximumFractionDigits;

  /// Property [minimumSignificantDigits]
  ///
  /// minimumSignificantDigits?: number | undefined
  external _i1.JSNumber? minimumSignificantDigits;

  /// Property [maximumSignificantDigits]
  ///
  /// maximumSignificantDigits?: number | undefined
  external _i1.JSNumber? maximumSignificantDigits;
}

/// Interface [ResolvedNumberFormatOptions]
extension type ResolvedNumberFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [numberingSystem]
  ///
  /// numberingSystem: string
  external _i1.JSString numberingSystem;

  /// Property [style]
  ///
  /// style: NumberFormatOptionsStyle
  external NumberFormatOptionsStyle style;

  /// Property [currency]
  ///
  /// currency?: string
  external _i1.JSString? currency;

  /// Property [currencyDisplay]
  ///
  /// currencyDisplay?: NumberFormatOptionsCurrencyDisplay
  external NumberFormatOptionsCurrencyDisplay? currencyDisplay;

  /// Property [minimumIntegerDigits]
  ///
  /// minimumIntegerDigits: number
  external _i1.JSNumber minimumIntegerDigits;

  /// Property [minimumFractionDigits]
  ///
  /// minimumFractionDigits?: number
  external _i1.JSNumber? minimumFractionDigits;

  /// Property [maximumFractionDigits]
  ///
  /// maximumFractionDigits?: number
  external _i1.JSNumber? maximumFractionDigits;

  /// Property [minimumSignificantDigits]
  ///
  /// minimumSignificantDigits?: number
  external _i1.JSNumber? minimumSignificantDigits;

  /// Property [maximumSignificantDigits]
  ///
  /// maximumSignificantDigits?: number
  external _i1.JSNumber? maximumSignificantDigits;

  /// Property [useGrouping]
  ///
  /// useGrouping: ResolvedNumberFormatOptionsUseGrouping
  external ResolvedNumberFormatOptionsUseGrouping useGrouping;
}

/// Interface [NumberFormat]
extension type NumberFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [format]
  ///
  /// Parameters:
  /// - value: number
  ///
  /// Returns:
  /// - string
  external _i1.JSString format(_i1.JSNumber value);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedNumberFormatOptions
  external _i2.ResolvedNumberFormatOptions resolvedOptions();
}

/// Interface [NumberFormatConstructor]
extension type NumberFormatConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Method [supportedLocalesOf]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: NumberFormatOptions
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> supportedLocalesOf(_i1.JSAny locales, [_i2.NumberFormatOptions options]);

  /// Property [prototype]
  ///
  /// readonly prototype: NumberFormat
  external _i2.NumberFormat get prototype;
}

/// Interface [DateTimeFormatOptions]
extension type DateTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: "best fit" | "lookup" | undefined
  external _i1.JSString? localeMatcher;

  /// Property [weekday]
  ///
  /// weekday?: "long" | "short" | "narrow" | undefined
  external _i1.JSString? weekday;

  /// Property [era]
  ///
  /// era?: "long" | "short" | "narrow" | undefined
  external _i1.JSString? era;

  /// Property [year]
  ///
  /// year?: "numeric" | "2-digit" | undefined
  external _i1.JSString? year;

  /// Property [month]
  ///
  /// month?: "numeric" | "2-digit" | "long" | "short" | "narrow" | undefined
  external _i1.JSString? month;

  /// Property [day]
  ///
  /// day?: "numeric" | "2-digit" | undefined
  external _i1.JSString? day;

  /// Property [hour]
  ///
  /// hour?: "numeric" | "2-digit" | undefined
  external _i1.JSString? hour;

  /// Property [minute]
  ///
  /// minute?: "numeric" | "2-digit" | undefined
  external _i1.JSString? minute;

  /// Property [second]
  ///
  /// second?: "numeric" | "2-digit" | undefined
  external _i1.JSString? second;

  /// Property [timeZoneName]
  ///
  /// timeZoneName?: "short" | "long" | "shortOffset" | "longOffset" | "shortGeneric" | "longGeneric" | undefined
  external _i1.JSString? timeZoneName;

  /// Property [formatMatcher]
  ///
  /// formatMatcher?: "best fit" | "basic" | undefined
  external _i1.JSString? formatMatcher;

  /// Property [hour12]
  ///
  /// hour12?: boolean | undefined
  external _i1.JSBoolean? hour12;

  /// Property [timeZone]
  ///
  /// timeZone?: string | undefined
  external _i1.JSString? timeZone;
}

/// Interface [ResolvedDateTimeFormatOptions]
extension type ResolvedDateTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [calendar]
  ///
  /// calendar: string
  external _i1.JSString calendar;

  /// Property [numberingSystem]
  ///
  /// numberingSystem: string
  external _i1.JSString numberingSystem;

  /// Property [timeZone]
  ///
  /// timeZone: string
  external _i1.JSString timeZone;

  /// Property [hour12]
  ///
  /// hour12?: boolean
  external _i1.JSBoolean? hour12;

  /// Property [weekday]
  ///
  /// weekday?: string
  external _i1.JSString? weekday;

  /// Property [era]
  ///
  /// era?: string
  external _i1.JSString? era;

  /// Property [year]
  ///
  /// year?: string
  external _i1.JSString? year;

  /// Property [month]
  ///
  /// month?: string
  external _i1.JSString? month;

  /// Property [day]
  ///
  /// day?: string
  external _i1.JSString? day;

  /// Property [hour]
  ///
  /// hour?: string
  external _i1.JSString? hour;

  /// Property [minute]
  ///
  /// minute?: string
  external _i1.JSString? minute;

  /// Property [second]
  ///
  /// second?: string
  external _i1.JSString? second;

  /// Property [timeZoneName]
  ///
  /// timeZoneName?: string
  external _i1.JSString? timeZoneName;
}

/// Interface [DateTimeFormat]
extension type DateTimeFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [format]
  ///
  /// Parameters:
  /// - date: Date | number
  ///
  /// Returns:
  /// - string
  external _i1.JSString format([_i1.JSAny date]);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedDateTimeFormatOptions
  external _i2.ResolvedDateTimeFormatOptions resolvedOptions();
}

/// Interface [DateTimeFormatConstructor]
extension type DateTimeFormatConstructor.$(_i1.JSFunction _) implements _i1.JSFunction {
  /// Method [supportedLocalesOf]
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: DateTimeFormatOptions
  ///
  /// Returns:
  /// - string[]
  external _i1.JSArray<_i1.JSString> supportedLocalesOf(_i1.JSAny locales, [_i2.DateTimeFormatOptions options]);

  /// Property [prototype]
  ///
  /// readonly prototype: DateTimeFormat
  external _i2.DateTimeFormat get prototype;
}
