import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:threejs/three.dart' as three;
import 'package:web/web.dart' as web;

void main() {
  final width = web.window.innerWidth;
  final height = web.window.innerHeight;

  final scene = three.Scene();
  final camera = three.PerspectiveCamera(
    75.toJS,
    (width / height).toJS,
    0.1.toJS,
    100.toJS,
  );
  camera.position.z = 3.toJS;

  final renderer = three.WebGLRenderer();
  renderer.setSize(width.toJS, height.toJS);
  web.document.body!.appendChild(renderer.domElement);

  final cube = three.Mesh<three.BoxGeometry, three.MeshNormalMaterial,
      three.Object3DEventMap>(
    three.BoxGeometry(1.toJS, 1.toJS, 1.toJS),
    three.MeshNormalMaterial(),
  );
  //scene.add([cube].toJS);
  scene.callMethod('add'.toJS, cube);

  web.window.addEventListener(
    'resize',
    ((web.Event _) {
      final w = web.window.innerWidth;
      final h = web.window.innerHeight;
      camera.aspect = (w / h).toJS;
      camera.updateProjectionMatrix();
      renderer.setSize(w.toJS, h.toJS);
    }).toJS,
  );

  void animate(num time) {
    cube.rotation.x = (time / 1000).toJS;
    cube.rotation.y = (time / 1500).toJS;
    renderer.render(scene, camera);
  }

  renderer.setAnimationLoop(animate.toJS);
}
