import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'three.dart' as three;

@JS('createThreeMaterial')
external JSObject createThreeMaterial();

@JS('addThreeObject')
external void addThreeObject(JSObject parent, JSObject child);

void main() {
  final scene = three.Scene<three.Object3DEventMap>();
  final camera = three.PerspectiveCamera(
    75.toJS,
    (web.window.innerWidth / web.window.innerHeight).toJS,
    0.1.toJS,
    1000.toJS,
  );
  final renderer = three.WebGLRenderer();
  final cube = three.Mesh<three.BoxGeometry, JSObject, three.Object3DEventMap>(
    three.BoxGeometry(1.toJS, 1.toJS, 1.toJS),
    createThreeMaterial(),
  );

  camera.position.z = 5.toJS;
  addThreeObject(scene, cube);
  web.document.body!.append(renderer.domElement);

  void resize() {
    renderer.setSize(web.window.innerWidth.toJS, web.window.innerHeight.toJS);
    camera.aspect = (web.window.innerWidth / web.window.innerHeight).toJS;
    camera.updateProjectionMatrix();
  }

  resize();
  web.window.addEventListener(
    'resize',
    (web.Event _) {
      resize();
    }.toJS,
  );

  late JSFunction animateCallback;
  void animate(JSAny? _) {
    cube.rotation.x = (cube.rotation.x.toDartDouble + 0.01).toJS;
    cube.rotation.y = (cube.rotation.y.toDartDouble + 0.01).toJS;
    renderer.render(scene, camera);
    web.window.requestAnimationFrame(animateCallback);
  }

  animateCallback = animate.toJS;
  web.window.requestAnimationFrame(animateCallback);
}
