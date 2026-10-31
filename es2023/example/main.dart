import 'dart:js_interop';

import 'package:es2023/es2023.dart';
import 'package:web/web.dart';

void main() {
  window.setInterval(
    (() => displayTime()).toJS,
    null,
    100,
  );
}

void displayTime() {
  final root = document.querySelector('#root');
  final now = Date.$2();
  root?.textContent =
      '${now.toLocaleDateString$2()} ${now.toLocaleTimeString$2()}';
}
