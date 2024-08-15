import 'dart:js_interop';

import 'package:web/web.dart' as web;

import './webxr.dart' as xr;

void main() async {
  print('done');
  final navigator = xr.Navigator(web.window.navigator);
  if (navigator.xr case xr.Navigator(xr: final xrSystem?)) {
    final session = await xrSystem.requestSession('inline'.toJS).toDart;
    print(session.domOverlayState);
  }
}
