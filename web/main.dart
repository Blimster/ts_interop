import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'three.dart' as three;

@JS('addThreeObject')
external void addThreeObject(JSObject parent, JSObject child);

three.MeshStandardMaterial _createMaterial(int color) {
  final material = three.MeshStandardMaterial();
  three.MeshStandardMaterialProperties.$(material).color.setHex(color.toJS);
  return material;
}

void main() {
  final scene = three.Scene<three.Object3DEventMap>();
  final camera = three.PerspectiveCamera(
    75.toJS,
    (web.window.innerWidth / web.window.innerHeight).toJS,
    0.1.toJS,
    1000.toJS,
  );
  final renderer = three.WebGLRenderer();
  final materials = <three.MeshStandardMaterial>[
    for (final color in [0xe63946, 0xf1c40f, 0x2a9d8f, 0x4361ee, 0x9b5de5, 0xf77f00])
      _createMaterial(color),
  ].toJS;
  final cube =
      three.Mesh<three.BoxGeometry, JSArray<three.MeshStandardMaterial>, three.Object3DEventMap>(
    three.BoxGeometry(1.toJS, 1.toJS, 1.toJS),
    materials,
  );
  final ambientLight = three.AmbientLight(0xffffff.toJS, 0.8.toJS);
  final directionalLight = three.DirectionalLight(0xffffff.toJS, 2.toJS);

  camera.position.z = 5.toJS;
  addThreeObject(scene, cube);
  addThreeObject(scene, ambientLight);
  directionalLight.position.set(5.toJS, 5.toJS, 5.toJS);
  addThreeObject(scene, directionalLight);
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
