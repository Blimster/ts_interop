import 'dart:js_interop';

import 'package:web/web.dart' as web;

import './webxr.dart' as xr;

void main() async {
  final navigator = xr.Navigator.$(web.window.navigator);
  print(navigator.language);
  final system = navigator.xr;
  if (system != null) {
    print(await system.isSessionSupported('inline'.toJS).toDart);
  }
}
