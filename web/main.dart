import 'dart:js_interop';

import 'package:web/web.dart';

import './es2023.dart';

// @JS('Date')
// extension type DateConstructor.$(JSAny _) implements JSAny {
//   /// Constructor
//   ///
//   /// Parameters:
//   /// - value: number | string | Date
//   external DateConstructor.$1(JSString value);

//   external DateConstructor.$2(JSNumber value);
// }

// extension type Date.$(JSAny _) implements JSAny {
//   /// Returns the year of the date.
//   external JSNumber getFullYear();
// }

void main() async {
  final bodyElement = document.getElementsByTagName('body');
  console.log(bodyElement);

  final date = Date.$(DateConstructor('2023-10-01T00:00:00Z'.toJS));
  console.log(date.getFullYear().subtract(1.toJS));
}
