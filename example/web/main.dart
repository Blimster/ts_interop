import 'dart:js_interop';

import 'package:web/web.dart' as web;

@JS('THREE.Scene')
extension type Scene._(JSObject _) implements JSObject {
  external factory Scene();
  external void add(JSObject object);
}

@JS('THREE.PerspectiveCamera')
extension type PerspectiveCamera._(JSObject _) implements JSObject {
  external factory PerspectiveCamera(num fov, num aspect, num near, num far);
  external Vector3 get position;
}

@JS('THREE.WebGLRenderer')
extension type WebGLRenderer._(JSObject _) implements JSObject {
  external factory WebGLRenderer();
  external web.HTMLCanvasElement get domElement;
  external void setSize(num width, num height);
  external void render(Scene scene, PerspectiveCamera camera);
}

@JS('THREE.BoxGeometry')
extension type BoxGeometry._(JSObject _) implements JSObject {
  external factory BoxGeometry(num width, num height, num depth);
}

@JS('THREE.Mesh')
extension type Mesh._(JSObject _) implements JSObject {
  external factory Mesh(JSObject geometry, JSObject material);
  external Euler get rotation;
}

@JS('THREE.Vector3')
extension type Vector3._(JSObject _) implements JSObject {
  external set z(num value);
}

@JS('THREE.Euler')
extension type Euler._(JSObject _) implements JSObject {
  external num get x;
  external set x(num value);
  external num get y;
  external set y(num value);
}

@JS('createThreeMaterial')
external JSObject createThreeMaterial();

void main() {
  final scene = Scene();
  final camera = PerspectiveCamera(75, web.window.innerWidth / web.window.innerHeight, 0.1, 1000);
  final renderer = WebGLRenderer();
  final cube = Mesh(BoxGeometry(1, 1, 1), createThreeMaterial());

  camera.position.z = 5;
  scene.add(cube);
  web.document.body!.append(renderer.domElement);

  void resize() {
    renderer.setSize(web.window.innerWidth, web.window.innerHeight);
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
    cube.rotation.x = cube.rotation.x + 0.01;
    cube.rotation.y = cube.rotation.y + 0.01;
    renderer.render(scene, camera);
    web.window.requestAnimationFrame(animateCallback);
  }

  animateCallback = animate.toJS;
  web.window.requestAnimationFrame(animateCallback);
}
