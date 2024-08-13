import 'package:web/web.dart' as web;

import './webxr.dart' as xr;

void main() {
  print('done');
  final navigator = xr.Navigator(web.window.navigator);
  print(navigator.language);
  final system = navigator.xr;
  print(system);
}
