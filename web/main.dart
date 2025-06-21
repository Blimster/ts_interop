import 'dart:js_interop';

import 'package:web/web.dart';

import './es2023.dart';

void main() {
  final bodyElement = document.getElementsByTagName('body');
  console.log(bodyElement);

  final date = Date.$1('2023-10-01T00:00:00Z'.toJS);
  console.log(date.getFullYear().subtract(1.toJS));
}
