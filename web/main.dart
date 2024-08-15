import 'dart:js_interop';

import 'package:web/web.dart' as web;

import './webxr.dart' as xr;

void main() async {
  print('done');
  final navigator = xr.Navigator(web.window.navigator);
  final system = navigator.xr;
  if (system != null) {
    final session = await system.requestSession('inline'.toJS).toDart;
    print(session.domOverlayState);
  }
}
