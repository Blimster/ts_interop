// ignore_for_file: avoid_shadowing_type_parameters, camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_library_name

library intl; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;
import 'es2023.dart' as _i2;

/// Method [getCanonicalLocales]
///
/// Parameters:
/// - locale: string | readonly string[]
@_i1.JS('getCanonicalLocales')
external _i1.JSArray<_i1.JSString> getCanonicalLocales([_i1.JSAny locale]);

/// Interface [DateTimeFormatPartTypesRegistry]
extension type DateTimeFormatPartTypesRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [day]
  ///
  /// day: any
  external _i1.JSAny day;

  /// Property [dayPeriod]
  ///
  /// dayPeriod: any
  external _i1.JSAny dayPeriod;

  /// Property [era]
  ///
  /// era: any
  external _i1.JSAny era;

  /// Property [hour]
  ///
  /// hour: any
  external _i1.JSAny hour;

  /// Property [literal]
  ///
  /// literal: any
  external _i1.JSAny literal;

  /// Property [minute]
  ///
  /// minute: any
  external _i1.JSAny minute;

  /// Property [month]
  ///
  /// month: any
  external _i1.JSAny month;

  /// Property [second]
  ///
  /// second: any
  external _i1.JSAny second;

  /// Property [timeZoneName]
  ///
  /// timeZoneName: any
  external _i1.JSAny timeZoneName;

  /// Property [weekday]
  ///
  /// weekday: any
  external _i1.JSAny weekday;

  /// Property [year]
  ///
  /// year: any
  external _i1.JSAny year;

  /// Property [unknown]
  ///
  /// unknown:
  external _i1.JSAny unknown;

  /// Property [fractionalSecond]
  ///
  /// fractionalSecond: any
  external _i1.JSAny fractionalSecond;
}

/// Typedef [DateTimeFormatPartTypes]
///
/// keyof DateTimeFormatPartTypesRegistry
typedef DateTimeFormatPartTypes = _i1.JSString;

/// Interface [DateTimeFormatPart]
extension type DateTimeFormatPart.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [type]
  ///
  /// type: DateTimeFormatPartTypes
  external DateTimeFormatPartTypes type;

  /// Property [value]
  ///
  /// value: string
  external _i1.JSString value;
}

/// Interface [DateTimeFormat]
extension type DateTimeFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: DateTimeFormatOptions
  external DateTimeFormat.$1([LocalesArgument locales, DateTimeFormatOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: DateTimeFormatOptions
  external DateTimeFormat.$2([_i1.JSAny locales, DateTimeFormatOptions options]);

  /// Method [formatToParts]
  ///
  /// Parameters:
  /// - date: Date | number
  ///
  /// Returns:
  /// - DateTimeFormatPart[]
  external _i1.JSArray<DateTimeFormatPart> formatToParts([_i1.JSAny date]);

  /// Method [formatRange]
  ///
  /// Parameters:
  /// - startDate: Date | number | bigint
  /// - endDate: Date | number | bigint
  ///
  /// Returns:
  /// - string
  external _i1.JSString formatRange(_i1.JSAny startDate, _i1.JSAny endDate);

  /// Method [formatRangeToParts]
  ///
  /// Parameters:
  /// - startDate: Date | number | bigint
  /// - endDate: Date | number | bigint
  ///
  /// Returns:
  /// - DateTimeRangeFormatPart[]
  external _i1.JSArray<DateTimeRangeFormatPart> formatRangeToParts(_i1.JSAny startDate, _i1.JSAny endDate);

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
  external ResolvedDateTimeFormatOptions resolvedOptions();
}

/// Typedef [LDMLPluralRule]
///
/// "zero" | "one" | "two" | "few" | "many" | "other"
typedef LDMLPluralRule = _i1.JSString;

/// Typedef [PluralRuleType]
///
/// "cardinal" | "ordinal"
typedef PluralRuleType = _i1.JSString;

/// Interface [PluralRulesOptions]
extension type PluralRulesOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: "lookup" | "best fit" | undefined
  external _i1.JSString? localeMatcher;

  /// Property [type]
  ///
  /// type?: PluralRuleType | undefined
  external PluralRuleType? type;

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

/// Interface [ResolvedPluralRulesOptions]
extension type ResolvedPluralRulesOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [pluralCategories]
  ///
  /// pluralCategories: LDMLPluralRule[]
  external _i1.JSArray<LDMLPluralRule> pluralCategories;

  /// Property [type]
  ///
  /// type: PluralRuleType
  external PluralRuleType type;

  /// Property [minimumIntegerDigits]
  ///
  /// minimumIntegerDigits: number
  external _i1.JSNumber minimumIntegerDigits;

  /// Property [minimumFractionDigits]
  ///
  /// minimumFractionDigits: number
  external _i1.JSNumber minimumFractionDigits;

  /// Property [maximumFractionDigits]
  ///
  /// maximumFractionDigits: number
  external _i1.JSNumber maximumFractionDigits;

  /// Property [minimumSignificantDigits]
  ///
  /// minimumSignificantDigits?: number
  external _i1.JSNumber? minimumSignificantDigits;

  /// Property [maximumSignificantDigits]
  ///
  /// maximumSignificantDigits?: number
  external _i1.JSNumber? maximumSignificantDigits;
}

/// Interface [PluralRules]
extension type PluralRules.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: string | readonly string[]
  /// - options: PluralRulesOptions
  external PluralRules.$1([_i1.JSAny locales, PluralRulesOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: PluralRulesOptions
  external PluralRules.$2([LocalesArgument locales, PluralRulesOptions options]);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedPluralRulesOptions
  external ResolvedPluralRulesOptions resolvedOptions();

  /// Method [select]
  ///
  /// Parameters:
  /// - n: number
  ///
  /// Returns:
  /// - LDMLPluralRule
  external LDMLPluralRule select(_i1.JSNumber n);
}

/// Interface [NumberFormatPartTypeRegistry]
extension type NumberFormatPartTypeRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [literal]
  ///
  /// literal:
  external _i1.JSAny literal;

  /// Property [nan]
  ///
  /// nan:
  external _i1.JSAny nan;

  /// Property [infinity]
  ///
  /// infinity:
  external _i1.JSAny infinity;

  /// Property [percent]
  ///
  /// percent:
  external _i1.JSAny percent;

  /// Property [integer]
  ///
  /// integer:
  external _i1.JSAny integer;

  /// Property [group]
  ///
  /// group:
  external _i1.JSAny group;

  /// Property [decimal]
  ///
  /// decimal:
  external _i1.JSAny decimal;

  /// Property [fraction]
  ///
  /// fraction:
  external _i1.JSAny fraction;

  /// Property [plusSign]
  ///
  /// plusSign:
  external _i1.JSAny plusSign;

  /// Property [minusSign]
  ///
  /// minusSign:
  external _i1.JSAny minusSign;

  /// Property [percentSign]
  ///
  /// percentSign:
  external _i1.JSAny percentSign;

  /// Property [currency]
  ///
  /// currency:
  external _i1.JSAny currency;

  /// Property [compact]
  ///
  /// compact:
  external _i1.JSAny compact;

  /// Property [exponentInteger]
  ///
  /// exponentInteger:
  external _i1.JSAny exponentInteger;

  /// Property [exponentMinusSign]
  ///
  /// exponentMinusSign:
  external _i1.JSAny exponentMinusSign;

  /// Property [exponentSeparator]
  ///
  /// exponentSeparator:
  external _i1.JSAny exponentSeparator;

  /// Property [unit]
  ///
  /// unit:
  external _i1.JSAny unit;

  /// Property [unknown]
  ///
  /// unknown:
  external _i1.JSAny unknown;
}

/// Typedef [NumberFormatPartTypes]
///
/// keyof NumberFormatPartTypeRegistry
typedef NumberFormatPartTypes = _i1.JSString;

/// Interface [NumberFormatPart]
extension type NumberFormatPart.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [type]
  ///
  /// type: NumberFormatPartTypes
  external NumberFormatPartTypes type;

  /// Property [value]
  ///
  /// value: string
  external _i1.JSString value;
}

/// Interface [NumberFormat]
extension type NumberFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: NumberFormatOptions
  external NumberFormat.$1([LocalesArgument locales, NumberFormatOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: NumberFormatOptions
  external NumberFormat.$2([_i1.JSAny locales, NumberFormatOptions options]);

  /// Method [formatToParts$1]
  ///
  /// Parameters:
  /// - number: number | bigint
  ///
  /// Returns:
  /// - NumberFormatPart[]
  @_i1.JS('formatToParts')
  external _i1.JSArray<NumberFormatPart> formatToParts$1([_i1.JSAny number]);

  /// Method [format$1]
  ///
  /// Parameters:
  /// - value: number | bigint
  ///
  /// Returns:
  /// - string
  @_i1.JS('format')
  external _i1.JSString format$1(_i1.JSAny value);

  /// Method [format$2]
  ///
  /// Parameters:
  /// - value: number | bigint | StringNumericLiteral
  ///
  /// Returns:
  /// - string
  @_i1.JS('format')
  external _i1.JSString format$2(_i1.JSAny value);

  /// Method [formatToParts$2]
  ///
  /// Parameters:
  /// - value: number | bigint | StringNumericLiteral
  ///
  /// Returns:
  /// - NumberFormatPart[]
  @_i1.JS('formatToParts')
  external _i1.JSArray<NumberFormatPart> formatToParts$2(_i1.JSAny value);

  /// Method [formatRange]
  ///
  /// Parameters:
  /// - start: number | bigint | StringNumericLiteral
  /// - end: number | bigint | StringNumericLiteral
  ///
  /// Returns:
  /// - string
  external _i1.JSString formatRange(_i1.JSAny start, _i1.JSAny end);

  /// Method [formatRangeToParts]
  ///
  /// Parameters:
  /// - start: number | bigint | StringNumericLiteral
  /// - end: number | bigint | StringNumericLiteral
  ///
  /// Returns:
  /// - NumberRangeFormatPart[]
  external _i1.JSArray<NumberRangeFormatPart> formatRangeToParts(_i1.JSAny start, _i1.JSAny end);

  /// Method [format$3]
  ///
  /// Parameters:
  /// - value: number
  ///
  /// Returns:
  /// - string
  @_i1.JS('format')
  external _i1.JSString format$3(_i1.JSNumber value);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedNumberFormatOptions
  external ResolvedNumberFormatOptions resolvedOptions();
}

/// Typedef [UnicodeBCP47LocaleIdentifier]
///
/// string
typedef UnicodeBCP47LocaleIdentifier = _i1.JSString;

/// Typedef [RelativeTimeFormatUnit]
///
/// "year" | "years" | "quarter" | "quarters" | "month" | "months" | "week" | "weeks" | "day" | "days" | "hour" | "hours" | "minute" | "minutes" | "second" | "seconds"
typedef RelativeTimeFormatUnit = _i1.JSString;

/// Typedef [RelativeTimeFormatUnitSingular]
///
/// "year" | "quarter" | "month" | "week" | "day" | "hour" | "minute" | "second"
typedef RelativeTimeFormatUnitSingular = _i1.JSString;

/// Typedef [RelativeTimeFormatLocaleMatcher]
///
/// "lookup" | "best fit"
typedef RelativeTimeFormatLocaleMatcher = _i1.JSString;

/// Typedef [RelativeTimeFormatNumeric]
///
/// "always" | "auto"
typedef RelativeTimeFormatNumeric = _i1.JSString;

/// Typedef [RelativeTimeFormatStyle]
///
/// "long" | "short" | "narrow"
typedef RelativeTimeFormatStyle = _i1.JSString;

/// Typedef [LocalesArgument]
///
/// UnicodeBCP47LocaleIdentifier | Locale | readonly (UnicodeBCP47LocaleIdentifier | Locale)[] | undefined
typedef LocalesArgument = _i1.JSAny?;

/// Interface [RelativeTimeFormatOptions]
extension type RelativeTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: RelativeTimeFormatLocaleMatcher
  external RelativeTimeFormatLocaleMatcher? localeMatcher;

  /// Property [numeric]
  ///
  /// numeric?: RelativeTimeFormatNumeric
  external RelativeTimeFormatNumeric? numeric;

  /// Property [style]
  ///
  /// style?: RelativeTimeFormatStyle
  external RelativeTimeFormatStyle? style;
}

/// Interface [ResolvedRelativeTimeFormatOptions]
extension type ResolvedRelativeTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: UnicodeBCP47LocaleIdentifier
  external UnicodeBCP47LocaleIdentifier locale;

  /// Property [style]
  ///
  /// style: RelativeTimeFormatStyle
  external RelativeTimeFormatStyle style;

  /// Property [numeric]
  ///
  /// numeric: RelativeTimeFormatNumeric
  external RelativeTimeFormatNumeric numeric;

  /// Property [numberingSystem]
  ///
  /// numberingSystem: string
  external _i1.JSString numberingSystem;
}

/// Typedef [RelativeTimeFormatPart]
///
///  |
typedef RelativeTimeFormatPart = _i1.JSObject;

/// Interface [RelativeTimeFormat]
extension type RelativeTimeFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: RelativeTimeFormatOptions
  external RelativeTimeFormat([LocalesArgument locales, RelativeTimeFormatOptions options]);

  /// Method [format]
  ///
  /// Parameters:
  /// - value: number
  /// - unit: RelativeTimeFormatUnit
  ///
  /// Returns:
  /// - string
  external _i1.JSString format(_i1.JSNumber value, RelativeTimeFormatUnit unit);

  /// Method [formatToParts]
  ///
  /// Parameters:
  /// - value: number
  /// - unit: RelativeTimeFormatUnit
  ///
  /// Returns:
  /// - RelativeTimeFormatPart[]
  external _i1.JSArray<RelativeTimeFormatPart> formatToParts(_i1.JSNumber value, RelativeTimeFormatUnit unit);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedRelativeTimeFormatOptions
  external ResolvedRelativeTimeFormatOptions resolvedOptions();
}

/// Interface [NumberFormatOptionsStyleRegistry]
extension type NumberFormatOptionsStyleRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [unit]
  ///
  /// unit:
  external _i1.JSAny unit;

  /// Property [decimal]
  ///
  /// decimal:
  external _i1.JSAny decimal;

  /// Property [percent]
  ///
  /// percent:
  external _i1.JSAny percent;

  /// Property [currency]
  ///
  /// currency:
  external _i1.JSAny currency;
}

/// Interface [NumberFormatOptionsCurrencyDisplayRegistry]
extension type NumberFormatOptionsCurrencyDisplayRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [narrowSymbol]
  ///
  /// narrowSymbol:
  external _i1.JSAny narrowSymbol;

  /// Property [code]
  ///
  /// code:
  external _i1.JSAny code;

  /// Property [symbol]
  ///
  /// symbol:
  external _i1.JSAny symbol;

  /// Property [name]
  ///
  /// name:
  external _i1.JSAny name;
}

/// Interface [NumberFormatOptionsSignDisplayRegistry]
extension type NumberFormatOptionsSignDisplayRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [auto]
  ///
  /// auto:
  external _i1.JSAny auto;

  /// Property [never]
  ///
  /// never:
  external _i1.JSAny never;

  /// Property [always]
  ///
  /// always:
  external _i1.JSAny always;

  /// Property [exceptZero]
  ///
  /// exceptZero:
  external _i1.JSAny exceptZero;

  /// Property [negative]
  ///
  /// negative:
  external _i1.JSAny negative;
}

/// Typedef [NumberFormatOptionsSignDisplay]
///
/// keyof NumberFormatOptionsSignDisplayRegistry
typedef NumberFormatOptionsSignDisplay = _i1.JSString;

/// Interface [NumberFormatOptions]
extension type NumberFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [numberingSystem]
  ///
  /// numberingSystem?: string | undefined
  external _i1.JSString? numberingSystem;

  /// Property [compactDisplay]
  ///
  /// compactDisplay?: "short" | "long" | undefined
  external _i1.JSString? compactDisplay;

  /// Property [notation]
  ///
  /// notation?: "standard" | "scientific" | "engineering" | "compact" | undefined
  external _i1.JSString? notation;

  /// Property [signDisplay]
  ///
  /// signDisplay?: NumberFormatOptionsSignDisplay | undefined
  external NumberFormatOptionsSignDisplay? signDisplay;

  /// Property [unit]
  ///
  /// unit?: string | undefined
  external _i1.JSString? unit;

  /// Property [unitDisplay]
  ///
  /// unitDisplay?: "short" | "long" | "narrow" | undefined
  external _i1.JSString? unitDisplay;

  /// Property [currencySign]
  ///
  /// currencySign?: "standard" | "accounting" | undefined
  external _i1.JSString? currencySign;

  /// Property [roundingPriority]
  ///
  /// roundingPriority?: "auto" | "morePrecision" | "lessPrecision" | undefined
  external _i1.JSString? roundingPriority;

  /// Property [roundingIncrement]
  ///
  /// roundingIncrement?: 1 | 2 | 5 | 10 | 20 | 25 | 50 | 100 | 200 | 250 | 500 | 1000 | 2000 | 2500 | 5000 | undefined
  external _i1.JSNumber? roundingIncrement;

  /// Property [roundingMode]
  ///
  /// roundingMode?: "ceil" | "floor" | "expand" | "trunc" | "halfCeil" | "halfFloor" | "halfExpand" | "halfTrunc" | "halfEven" | undefined
  external _i1.JSString? roundingMode;

  /// Property [trailingZeroDisplay]
  ///
  /// trailingZeroDisplay?: "auto" | "stripIfInteger" | undefined
  external _i1.JSString? trailingZeroDisplay;

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
  /// Property [compactDisplay]
  ///
  /// compactDisplay?: "short" | "long"
  external _i1.JSString? compactDisplay;

  /// Property [notation]
  ///
  /// notation: "standard" | "scientific" | "engineering" | "compact"
  external _i1.JSString notation;

  /// Property [signDisplay]
  ///
  /// signDisplay: NumberFormatOptionsSignDisplay
  external NumberFormatOptionsSignDisplay signDisplay;

  /// Property [unit]
  ///
  /// unit?: string
  external _i1.JSString? unit;

  /// Property [unitDisplay]
  ///
  /// unitDisplay?: "short" | "long" | "narrow"
  external _i1.JSString? unitDisplay;

  /// Property [currencySign]
  ///
  /// currencySign?: "standard" | "accounting"
  external _i1.JSString? currencySign;

  /// Property [roundingPriority]
  ///
  /// roundingPriority: "auto" | "morePrecision" | "lessPrecision"
  external _i1.JSString roundingPriority;

  /// Property [roundingMode]
  ///
  /// roundingMode: "ceil" | "floor" | "expand" | "trunc" | "halfCeil" | "halfFloor" | "halfExpand" | "halfTrunc" | "halfEven"
  external _i1.JSString roundingMode;

  /// Property [roundingIncrement]
  ///
  /// roundingIncrement: 1 | 2 | 5 | 10 | 20 | 25 | 50 | 100 | 200 | 250 | 500 | 1000 | 2000 | 2500 | 5000
  external _i1.JSNumber roundingIncrement;

  /// Property [trailingZeroDisplay]
  ///
  /// trailingZeroDisplay: "auto" | "stripIfInteger"
  external _i1.JSString trailingZeroDisplay;

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

/// Interface [DateTimeFormatOptions]
extension type DateTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [calendar]
  ///
  /// calendar?: string | undefined
  external _i1.JSString? calendar;

  /// Property [dayPeriod$1]
  ///
  /// dayPeriod$1?: "narrow" | "short" | "long" | undefined
  @_i1.JS('dayPeriod')
  external _i1.JSString? dayPeriod$1;

  /// Property [numberingSystem]
  ///
  /// numberingSystem?: string | undefined
  external _i1.JSString? numberingSystem;

  /// Property [dateStyle$1]
  ///
  /// dateStyle$1?: "full" | "long" | "medium" | "short" | undefined
  @_i1.JS('dateStyle')
  external _i1.JSString? dateStyle$1;

  /// Property [timeStyle$1]
  ///
  /// timeStyle$1?: "full" | "long" | "medium" | "short" | undefined
  @_i1.JS('timeStyle')
  external _i1.JSString? timeStyle$1;

  /// Property [hourCycle]
  ///
  /// hourCycle?: "h11" | "h12" | "h23" | "h24" | undefined
  external _i1.JSString? hourCycle;

  /// Property [formatMatcher$1]
  ///
  /// formatMatcher$1?: "basic" | "best fit" | "best fit" | undefined
  @_i1.JS('formatMatcher')
  external _i1.JSString? formatMatcher$1;

  /// Property [dateStyle$2]
  ///
  /// dateStyle$2?: "full" | "long" | "medium" | "short" | undefined
  @_i1.JS('dateStyle')
  external _i1.JSString? dateStyle$2;

  /// Property [timeStyle$2]
  ///
  /// timeStyle$2?: "full" | "long" | "medium" | "short" | undefined
  @_i1.JS('timeStyle')
  external _i1.JSString? timeStyle$2;

  /// Property [dayPeriod$2]
  ///
  /// dayPeriod$2?: "narrow" | "short" | "long" | undefined
  @_i1.JS('dayPeriod')
  external _i1.JSString? dayPeriod$2;

  /// Property [fractionalSecondDigits]
  ///
  /// fractionalSecondDigits?: 1 | 2 | 3 | undefined
  external _i1.JSNumber? fractionalSecondDigits;

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

  /// Property [formatMatcher$2]
  ///
  /// formatMatcher$2?: "best fit" | "basic" | undefined
  @_i1.JS('formatMatcher')
  external _i1.JSString? formatMatcher$2;

  /// Property [houronetwo]
  ///
  /// houronetwo?: boolean | undefined
  @_i1.JS('hour12')
  external _i1.JSBoolean? houronetwo;

  /// Property [timeZone]
  ///
  /// timeZone?: string | undefined
  external _i1.JSString? timeZone;
}

/// Typedef [LocaleHourCycleKey]
///
/// "h12" | "h23" | "h11" | "h24"
typedef LocaleHourCycleKey = _i1.JSString;

/// Typedef [LocaleCollationCaseFirst]
///
/// "upper" | "lower" | "false"
typedef LocaleCollationCaseFirst = _i1.JSString;

/// Interface [LocaleOptions]
extension type LocaleOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [baseName]
  ///
  /// baseName?: string
  external _i1.JSString? baseName;

  /// Property [calendar]
  ///
  /// calendar?: string
  external _i1.JSString? calendar;

  /// Property [caseFirst]
  ///
  /// caseFirst?: LocaleCollationCaseFirst
  external LocaleCollationCaseFirst? caseFirst;

  /// Property [collation]
  ///
  /// collation?: string
  external _i1.JSString? collation;

  /// Property [hourCycle]
  ///
  /// hourCycle?: LocaleHourCycleKey
  external LocaleHourCycleKey? hourCycle;

  /// Property [language]
  ///
  /// language?: string
  external _i1.JSString? language;

  /// Property [numberingSystem]
  ///
  /// numberingSystem?: string
  external _i1.JSString? numberingSystem;

  /// Property [numeric]
  ///
  /// numeric?: boolean
  external _i1.JSBoolean? numeric;

  /// Property [region]
  ///
  /// region?: string
  external _i1.JSString? region;

  /// Property [script]
  ///
  /// script?: string
  external _i1.JSString? script;
}

/// Interface [Locale]
extension type Locale.$(_i1.JSObject _) implements _i1.JSObject, LocaleOptions {
  /// Constructor
  ///
  /// Parameters:
  /// - tag: UnicodeBCP47LocaleIdentifier | Locale
  /// - options: LocaleOptions
  external Locale(_i1.JSAny tag, [LocaleOptions options]);

  /// Property [baseName]
  ///
  /// baseName: string
  external _i1.JSString baseName;

  /// Property [language]
  ///
  /// language: string
  external _i1.JSString language;

  /// Method [maximize]
  ///
  /// Returns:
  /// - Locale
  external Locale maximize();

  /// Method [minimize]
  ///
  /// Returns:
  /// - Locale
  external Locale minimize();

  /// Method [toString$]
  ///
  /// Returns:
  /// - UnicodeBCP47LocaleIdentifier
  @_i1.JS('toString')
  external UnicodeBCP47LocaleIdentifier toString$();
}

/// Typedef [DisplayNamesFallback]
///
/// "code" | "none"
typedef DisplayNamesFallback = _i1.JSString;

/// Typedef [DisplayNamesType]
///
/// "language" | "region" | "script" | "calendar" | "dateTimeField" | "currency"
typedef DisplayNamesType = _i1.JSString;

/// Typedef [DisplayNamesLanguageDisplay]
///
/// "dialect" | "standard"
typedef DisplayNamesLanguageDisplay = _i1.JSString;

/// Interface [DisplayNamesOptions]
extension type DisplayNamesOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: RelativeTimeFormatLocaleMatcher
  external RelativeTimeFormatLocaleMatcher? localeMatcher;

  /// Property [style]
  ///
  /// style?: RelativeTimeFormatStyle
  external RelativeTimeFormatStyle? style;

  /// Property [type]
  ///
  /// type: DisplayNamesType
  external DisplayNamesType type;

  /// Property [languageDisplay]
  ///
  /// languageDisplay?: DisplayNamesLanguageDisplay
  external DisplayNamesLanguageDisplay? languageDisplay;

  /// Property [fallback]
  ///
  /// fallback?: DisplayNamesFallback
  external DisplayNamesFallback? fallback;
}

/// Interface [ResolvedDisplayNamesOptions]
extension type ResolvedDisplayNamesOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: UnicodeBCP47LocaleIdentifier
  external UnicodeBCP47LocaleIdentifier locale;

  /// Property [style]
  ///
  /// style: RelativeTimeFormatStyle
  external RelativeTimeFormatStyle style;

  /// Property [type]
  ///
  /// type: DisplayNamesType
  external DisplayNamesType type;

  /// Property [fallback]
  ///
  /// fallback: DisplayNamesFallback
  external DisplayNamesFallback fallback;

  /// Property [languageDisplay]
  ///
  /// languageDisplay?: DisplayNamesLanguageDisplay
  external DisplayNamesLanguageDisplay? languageDisplay;
}

/// Interface [DisplayNames]
extension type DisplayNames.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: DisplayNamesOptions
  external DisplayNames(LocalesArgument locales, DisplayNamesOptions options);

  /// Method [of]
  ///
  /// Parameters:
  /// - code: string
  ///
  /// Returns:
  /// - string | undefined
  external _i1.JSString? of(_i1.JSString code);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedDisplayNamesOptions
  external ResolvedDisplayNamesOptions resolvedOptions();
}

/// Interface [DateTimeRangeFormatPart]
extension type DateTimeRangeFormatPart.$(_i1.JSObject _) implements _i1.JSObject, DateTimeFormatPart {
  /// Property [source]
  ///
  /// source: "startRange" | "endRange" | "shared"
  external _i1.JSString source;
}

/// Interface [ResolvedDateTimeFormatOptions]
extension type ResolvedDateTimeFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [formatMatcher]
  ///
  /// formatMatcher?: "basic" | "best fit" | "best fit"
  external _i1.JSString? formatMatcher;

  /// Property [dateStyle]
  ///
  /// dateStyle?: "full" | "long" | "medium" | "short"
  external _i1.JSString? dateStyle;

  /// Property [timeStyle]
  ///
  /// timeStyle?: "full" | "long" | "medium" | "short"
  external _i1.JSString? timeStyle;

  /// Property [hourCycle]
  ///
  /// hourCycle?: "h11" | "h12" | "h23" | "h24"
  external _i1.JSString? hourCycle;

  /// Property [dayPeriod]
  ///
  /// dayPeriod?: "narrow" | "short" | "long"
  external _i1.JSString? dayPeriod;

  /// Property [fractionalSecondDigits]
  ///
  /// fractionalSecondDigits?: 1 | 2 | 3
  external _i1.JSNumber? fractionalSecondDigits;

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

  /// Property [houronetwo]
  ///
  /// houronetwo?: boolean
  @_i1.JS('hour12')
  external _i1.JSBoolean? houronetwo;

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

/// Typedef [ListFormatLocaleMatcher]
///
/// "lookup" | "best fit"
typedef ListFormatLocaleMatcher = _i1.JSString;

/// Typedef [ListFormatType]
///
/// "conjunction" | "disjunction" | "unit"
typedef ListFormatType = _i1.JSString;

/// Typedef [ListFormatStyle]
///
/// "long" | "short" | "narrow"
typedef ListFormatStyle = _i1.JSString;

/// Interface [ListFormatOptions]
extension type ListFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: ListFormatLocaleMatcher | undefined
  external ListFormatLocaleMatcher? localeMatcher;

  /// Property [type]
  ///
  /// type?: ListFormatType | undefined
  external ListFormatType? type;

  /// Property [style]
  ///
  /// style?: ListFormatStyle | undefined
  external ListFormatStyle? style;
}

/// Interface [ResolvedListFormatOptions]
extension type ResolvedListFormatOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [style]
  ///
  /// style: ListFormatStyle
  external ListFormatStyle style;

  /// Property [type]
  ///
  /// type: ListFormatType
  external ListFormatType type;
}

/// Interface [ListFormat]
extension type ListFormat.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: ListFormatOptions
  external ListFormat([LocalesArgument locales, ListFormatOptions options]);

  /// Method [format]
  ///
  /// Parameters:
  /// - list: Iterable
  ///
  /// Returns:
  /// - string
  external _i1.JSString format(_i2.Iterable<_i1.JSString, _i1.JSAny, _i1.JSAny> list);

  /// Method [formatToParts]
  ///
  /// Parameters:
  /// - list: Iterable
  ///
  /// Returns:
  /// - []
  external _i1.JSArray<_i1.JSObject> formatToParts(_i2.Iterable<_i1.JSString, _i1.JSAny, _i1.JSAny> list);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedListFormatOptions
  external ResolvedListFormatOptions resolvedOptions();
}

/// Interface [SegmenterOptions]
extension type SegmenterOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [localeMatcher]
  ///
  /// localeMatcher?: "best fit" | "lookup" | undefined
  external _i1.JSString? localeMatcher;

  /// Property [granularity]
  ///
  /// granularity?: "grapheme" | "word" | "sentence" | undefined
  external _i1.JSString? granularity;
}

/// Interface [Segmenter]
extension type Segmenter.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: SegmenterOptions
  external Segmenter([LocalesArgument locales, SegmenterOptions options]);

  /// Method [segment]
  ///
  /// Parameters:
  /// - input: string
  ///
  /// Returns:
  /// - Segments
  external Segments segment(_i1.JSString input);

  /// Method [resolvedOptions]
  ///
  /// Returns:
  /// - ResolvedSegmenterOptions
  external ResolvedSegmenterOptions resolvedOptions();
}

/// Interface [ResolvedSegmenterOptions]
extension type ResolvedSegmenterOptions.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [locale]
  ///
  /// locale: string
  external _i1.JSString locale;

  /// Property [granularity]
  ///
  /// granularity: "grapheme" | "word" | "sentence"
  external _i1.JSString granularity;
}

/// Interface [SegmentIterator]
extension type SegmentIterator<T extends _i1.JSAny>.$(_i1.JSObject _)
    implements _i1.JSObject, _i2.IteratorObject<T, _i2.BuiltinIteratorReturn, _i1.JSAny> {}

/// Interface [Segments]
extension type Segments.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [containing]
  ///
  /// Parameters:
  /// - codeUnitIndex: number
  ///
  /// Returns:
  /// - SegmentData
  external SegmentData containing([_i1.JSNumber codeUnitIndex]);
}

/// Interface [SegmentData]
extension type SegmentData.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [segment]
  ///
  /// segment: string
  external _i1.JSString segment;

  /// Property [index]
  ///
  /// index: number
  external _i1.JSNumber index;

  /// Property [input]
  ///
  /// input: string
  external _i1.JSString input;

  /// Property [isWordLike]
  ///
  /// isWordLike?: boolean
  external _i1.JSBoolean? isWordLike;
}

/// Method [supportedValuesOf]
///
/// Parameters:
/// - key: "calendar" | "collation" | "currency" | "numberingSystem" | "timeZone" | "unit"
@_i1.JS('supportedValuesOf')
external _i1.JSArray<_i1.JSString> supportedValuesOf(_i1.JSString key);

/// Interface [NumberFormatOptionsUseGroupingRegistry]
extension type NumberFormatOptionsUseGroupingRegistry.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [mintwo]
  ///
  /// mintwo:
  @_i1.JS('min2')
  external _i1.JSAny mintwo;

  /// Property [auto]
  ///
  /// auto:
  external _i1.JSAny auto;

  /// Property [always]
  ///
  /// always:
  external _i1.JSAny always;
}

/// Interface [NumberRangeFormatPart]
extension type NumberRangeFormatPart.$(_i1.JSObject _) implements _i1.JSObject, NumberFormatPart {
  /// Property [source]
  ///
  /// source: "startRange" | "endRange" | "shared"
  external _i1.JSString source;
}

/// Typedef [StringNumericLiteral]
///
///  | "Infinity" | "-Infinity" | "+Infinity"
typedef StringNumericLiteral = _i1.JSString;

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
  /// Constructor
  ///
  /// Parameters:
  /// - locales: LocalesArgument
  /// - options: CollatorOptions
  external Collator.$1([LocalesArgument locales, CollatorOptions options]);

  /// Constructor
  ///
  /// Parameters:
  /// - locales: string | string[]
  /// - options: CollatorOptions
  external Collator.$2([_i1.JSAny locales, CollatorOptions options]);

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

/// Typedef [NumberFormatOptionsStyle]
///
/// keyof NumberFormatOptionsStyleRegistry
typedef NumberFormatOptionsStyle = _i1.JSString;

/// Typedef [NumberFormatOptionsCurrencyDisplay]
///
/// keyof NumberFormatOptionsCurrencyDisplayRegistry
typedef NumberFormatOptionsCurrencyDisplay = _i1.JSString;

/// Typedef [NumberFormatOptionsUseGrouping]
///
///
typedef NumberFormatOptionsUseGrouping = _i1.JSAny;

/// Typedef [ResolvedNumberFormatOptionsUseGrouping]
///
///
typedef ResolvedNumberFormatOptionsUseGrouping = _i1.JSAny;
