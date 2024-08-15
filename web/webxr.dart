// ignore_for_file: camel_case_types, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;
import 'package:web/web.dart' as _i2;
import './types.dart' as _i3;

/// Interface [Navigator]
extension type Navigator(_i1.JSObject _) implements _i1.JSObject, _i2.Navigator {
  external XRSystem? xr;
}

/// Interface [WebGLContextAttributes]
extension type WebGLContextAttributes(_i1.JSObject _) implements _i1.JSObject, _i2.WebGLContextAttributes {
  external _i1.JSBoolean? xrCompatible;
}

/// Interface [WebGLRenderingContextBase]
extension type WebGLRenderingContextBase(_i1.JSObject _) implements _i1.JSObject {
  /// Method [makeXRCompatible]
  external _i1.JSPromise makeXRCompatible();
}

/// Typedef [XRSessionMode]
///
/// "inline" | "immersive-vr" | "immersive-ar"
///
typedef XRSessionMode = _i1.JSString;

/// Typedef [XRReferenceSpaceType]
///
/// "viewer" | "local" | "local-floor" | "bounded-floor" | "unbounded"
///
typedef XRReferenceSpaceType = _i1.JSString;

/// Typedef [XREnvironmentBlendMode]
///
/// "opaque" | "additive" | "alpha-blend"
///
typedef XREnvironmentBlendMode = _i1.JSString;

/// Typedef [XRVisibilityState]
///
/// "visible" | "visible-blurred" | "hidden"
///
typedef XRVisibilityState = _i1.JSString;

/// Typedef [XRHandedness]
///
/// "none" | "left" | "right"
///
typedef XRHandedness = _i1.JSString;

/// Typedef [XRTargetRayMode]
///
/// "gaze" | "tracked-pointer" | "screen" | "transient-pointer"
///
typedef XRTargetRayMode = _i1.JSString;

/// Typedef [XREye]
///
/// "none" | "left" | "right"
///
typedef XREye = _i1.JSString;

/// Typedef [XRFrameRequestCallback]
///
/// (time: DOMHighResTimeStamp, frame: XRFrame) => void
typedef XRFrameRequestCallback = _i1.JSFunction;

/// Interface [XRSystemDeviceChangeEvent]
extension type XRSystemDeviceChangeEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external _i1.JSString type;
}

/// Interface [XRSystemDeviceChangeEventHandler]
extension type XRSystemDeviceChangeEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRSystemEventMap]
extension type XRSystemEventMap(_i1.JSObject _) implements _i1.JSObject {
  external XRSystemDeviceChangeEvent devicechange;
}

/// Class [XRSystem]
extension type XRSystem._(_i1.JSObject _) implements _i1.JSObject {
  external XRSystemDeviceChangeEventHandler? ondevicechange;

  external XRSystemSessionGrantedEventHandler? onsessiongranted;

  /// Method [requestSession]
  external _i1.JSPromise<XRSession> requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);

  /// Method [isSessionSupported]
  external _i1.JSPromise<_i1.JSBoolean> isSessionSupported(XRSessionMode mode);

  /// Method [addEventListener]
  ///
  /// K extends keyof XRSystemEventMap
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [addEventListener]
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// K extends keyof XRSystemEventMap
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// Class [XRViewport]
extension type XRViewport._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get x;
  external _i1.JSNumber get y;
  external _i1.JSNumber get width;
  external _i1.JSNumber get height;
}

/// Class [XRSpace]
extension type XRSpace._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRRenderStateInit]
extension type XRRenderStateInit(_i1.JSObject _) implements _i1.JSObject {
  external XRWebGLLayer? baseLayer;

  external _i1.JSNumber? depthFar;

  external _i1.JSNumber? depthNear;

  external _i1.JSNumber? inlineVerticalFieldOfView;
}

/// Class [XRRenderState]
extension type XRRenderState._(_i1.JSObject _) implements _i1.JSObject {
  external XRWebGLLayer? get baseLayer;
  external _i1.JSNumber get depthFar;
  external _i1.JSNumber get depthNear;
  external _i1.JSNumber? get inlineVerticalFieldOfView;
  external _i1.JSArray<XRLayer>? get layers;
}

/// Interface [XRReferenceSpaceEventInit]
extension type XRReferenceSpaceEventInit(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRReferenceSpaceEventInit {
  external _i2.XRReferenceSpace? referenceSpace;

  external _i2.XRRigidTransform? transform;
}

/// Class [XRReferenceSpaceEvent]
extension type XRReferenceSpaceEvent(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSString get type;
  external _i2.XRReferenceSpace get referenceSpace;
  external _i2.XRRigidTransform? get transform;
}

/// Interface [XRReferenceSpaceEventHandler]
extension type XRReferenceSpaceEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRReferenceSpaceEventMap]
extension type XRReferenceSpaceEventMap(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRReferenceSpaceEvent reset;
}

/// Class [XRReferenceSpace]
extension type XRReferenceSpace._(_i1.JSObject _) implements _i1.JSObject {
  external XRReferenceSpaceEventHandler onreset;

  /// Method [getOffsetReferenceSpace]
  external _i2.XRReferenceSpace getOffsetReferenceSpace(_i2.XRRigidTransform originOffset);

  /// Method [addEventListener]
  ///
  /// K extends keyof XRReferenceSpaceEventMap
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [addEventListener]
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// K extends keyof XRReferenceSpaceEventMap
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// Class [XRBoundedReferenceSpace]
extension type XRBoundedReferenceSpace._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<_i2.DOMPointReadOnly> get boundsGeometry;
}

/// Class [XRInputSource]
extension type XRInputSource._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRHandedness get handedness;
  external _i2.XRTargetRayMode get targetRayMode;
  external _i2.XRSpace get targetRaySpace;
  external _i2.XRSpace? get gripSpace;
  external _i2.Gamepad? get gamepad;
  external _i1.JSArray<_i1.JSString> get profiles;
  external _i2.XRHand? get hand;
}

/// Interface [GamepadHapticActuator]
extension type GamepadHapticActuator(_i1.JSObject _) implements _i1.JSObject, _i2.GamepadHapticActuator {
  /// Method [pulse]
  external _i1.JSPromise<_i1.JSBoolean> pulse(
    _i1.JSNumber value,
    _i1.JSNumber duration,
  );
}

/// Interface [Gamepad]
extension type Gamepad(_i1.JSObject _) implements _i1.JSObject, _i2.Gamepad {
  external _i1.JSArray<_i2.GamepadHapticActuator> get hapticActuators;
}

/// Class [XRInputSourceArray]
extension type XRInputSourceArray._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber length;

  external void operator []=(
    _i1.JSNumber n,
    _i3.XRInputSource value,
  );
  external _i3.XRInputSource operator [](_i1.JSNumber n);

  /// Method [entries]
  external _i3.IterableIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  external _i3.IterableIterator<_i1.JSNumber> keys();

  /// Method [values]
  external _i3.IterableIterator<_i3.XRInputSource> values();

  /// Method [forEach]
  external void forEach(
    _i1.JSFunction callbackfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Class [XRPose]
extension type XRPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform get transform;
  external _i2.DOMPointReadOnly? get linearVelocity;
  external _i2.DOMPointReadOnly? get angularVelocity;
  external _i1.JSBoolean get emulatedPosition;
}

/// Class [XRFrame]
extension type XRFrame._(_i1.JSObject _) implements _i1.JSObject {
  external XRAnchorSet? trackedAnchors;

  external _i1.JSFunction createAnchor;

  external _i1.JSFunction getJointPose;

  external XRSession get session;
  external _i2.DOMHighResTimeStamp get predictedDisplayTime;

  /// Method [getPose]
  external _i2.XRPose? getPose(
    _i2.XRSpace space,
    _i2.XRSpace baseSpace,
  );

  /// Method [getViewerPose]
  external _i2.XRViewerPose? getViewerPose(_i2.XRReferenceSpace referenceSpace);

  /// Method [getHitTestResults]
  external _i1.JSArray<XRHitTestResult> getHitTestResults(XRHitTestSource hitTestSource);

  /// Method [getHitTestResultsForTransientInput]
  external _i1.JSArray<XRTransientInputHitTestResult> getHitTestResultsForTransientInput(
      XRTransientInputHitTestSource hitTestSource);
  external XRPlaneSet get detectedPlanes;
  external XRMeshSet get detectedMeshes;

  /// Method [getDepthInformation]
  external XRCPUDepthInformation? getDepthInformation(XRView view);
}

/// Typedef [XRInputSourceEventType]
///
/// "select" | "selectend" | "selectstart" | "squeeze" | "squeezeend" | "squeezestart"
///
typedef XRInputSourceEventType = _i1.JSString;

/// Interface [XRInputSourceEventInit]
extension type XRInputSourceEventInit(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRInputSourceEventInit {
  external _i3.XRFrame? frame;

  external _i3.XRInputSource? inputSource;
}

/// Class [XRInputSourceEvent]
extension type XRInputSourceEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external XRInputSourceEventType get type;
  external _i3.XRFrame get frame;
  external _i3.XRInputSource get inputSource;
}

/// Interface [XRInputSourceEventHandler]
extension type XRInputSourceEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [XRSessionEventType]
///
/// "end" | "visibilitychange" | "frameratechange"
///
typedef XRSessionEventType = _i1.JSString;

/// Interface [XRSessionEventInit]
extension type XRSessionEventInit(_i1.JSObject _) implements _i1.JSObject, _i2.EventInit, _i2.XRSessionEventInit {
  external XRSession session;
}

/// Class [XRSessionEvent]
extension type XRSessionEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external XRSession get session;
}

/// Interface [XRSessionEventHandler]
extension type XRSessionEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRSessionInit]
extension type XRSessionInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<_i1.JSString>? optionalFeatures;

  external _i1.JSArray<_i1.JSString>? requiredFeatures;
}

/// Interface [XRSessionEventMap]
extension type XRSessionEventMap(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRInputSourcesChangeEvent inputsourceschange;

  external _i2.XRSessionEvent end;

  external _i2.XRSessionEvent visibilitychange;

  external _i2.XRSessionEvent frameratechange;

  external _i2.XRInputSourceEvent select;

  external _i2.XRInputSourceEvent selectstart;

  external _i2.XRInputSourceEvent selectend;

  external _i2.XRInputSourceEvent squeeze;

  external _i2.XRInputSourceEvent squeezestart;

  external _i2.XRInputSourceEvent squeezeend;
}

/// Class [XRSession]
extension type XRSession._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction requestHitTestSource;

  external _i1.JSFunction requestHitTestSourceForTransientInput;

  external _i1.JSFunction requestHitTest;

  /// Method [initiateRoomCapture]
  external _i1.JSPromise initiateRoomCapture();
  external XRDOMOverlayState? get domOverlayState;
  external XRDepthUsage? get depthUsage;
  external XRDepthDataFormat? get depthDataFormat;
}

/// Class [XRViewerPose]
extension type XRViewerPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<XRView> get views;
}

/// Class [XRRigidTransform]
extension type XRRigidTransform(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly get position;
  external _i2.DOMPointReadOnly get orientation;
  external _i1.JSFloat32Array get matrix;
  external _i2.XRRigidTransform get inverse;
}

/// Class [XRView]
extension type XRView._(_i1.JSObject _) implements _i1.JSObject {
  external XREye get eye;
  external _i1.JSFloat32Array get projectionMatrix;
  external _i2.XRRigidTransform get transform;
  external _i1.JSNumber? get recommendedViewportScale;

  /// Method [requestViewportScale]
  external void requestViewportScale(_i1.JSNumber scale);
}

/// Interface [XRInputSourcesChangeEvent]
extension type XRInputSourcesChangeEvent(_i1.JSObject _) implements _i1.JSObject, _i2.XRSessionEvent {
  external _i1.JSArray<_i3.XRInputSource> get removed;
  external _i1.JSArray<_i3.XRInputSource> get added;
}

/// Interface [XRInputSourcesChangeEventHandler]
extension type XRInputSourcesChangeEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [XRAnchorSet]
///
/// Set
typedef XRAnchorSet = _i3.Set<XRAnchor>;

/// Class [XRAnchor]
extension type XRAnchor._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace anchorSpace;

  /// Method [delete]
  external void delete();
}

/// Class [XRRay]
extension type XRRay(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly get origin;
  external _i2.DOMPointReadOnly get direction;
  external _i1.JSFloat32Array get matrix;
}

/// Typedef [XRHitTestTrackableType]
///
/// "point" | "plane" | "mesh"
///
typedef XRHitTestTrackableType = _i1.JSString;

/// Class [XRTransientInputHitTestResult]
extension type XRTransientInputHitTestResult(_i1.JSObject _) implements _i1.JSObject {
  external XRTransientInputHitTestResult prototype;

  external _i3.XRInputSource get inputSource;
  external _i1.JSArray<XRHitTestResult> get results;
}

/// Class [XRHitTestResult]
extension type XRHitTestResult._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction createAnchor;

  /// Method [getPose]
  external _i2.XRPose? getPose(_i2.XRSpace baseSpace);
}

/// Class [XRHitTestSource]
extension type XRHitTestSource._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [cancel]
  external void cancel();
}

/// Class [XRTransientInputHitTestSource]
extension type XRTransientInputHitTestSource._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [cancel]
  external void cancel();
}

/// Interface [XRHitTestOptionsInit]
extension type XRHitTestOptionsInit(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace space;

  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  external XRRay? offsetRay;
}

/// Interface [XRTransientInputHitTestOptionsInit]
extension type XRTransientInputHitTestOptionsInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSString profile;

  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  external XRRay? offsetRay;
}

/// Interface [XRHitResult]
extension type XRHitResult(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFloat32Array hitMatrix;
}

/// Typedef [XRPlaneSet]
///
/// Set
typedef XRPlaneSet = _i3.Set<XRPlane>;

/// Typedef [XRPlaneOrientation]
///
/// "horizontal" | "vertical"
///
typedef XRPlaneOrientation = _i1.JSString;

/// Class [XRPlane]
extension type XRPlane._(_i1.JSObject _) implements _i1.JSObject {
  external XRPlaneOrientation orientation;

  external _i2.XRSpace planeSpace;

  external _i1.JSArray<_i2.DOMPointReadOnly> polygon;

  external _i2.DOMHighResTimeStamp lastChangedTime;
}

/// Typedef [XRMeshSet]
///
/// Set
typedef XRMeshSet = _i3.Set<XRMesh>;

/// Class [XRMesh]
extension type XRMesh._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace meshSpace;

  external _i1.JSFloat32Array vertices;

  external _i1.JSUint32Array indices;

  external _i2.DOMHighResTimeStamp lastChangedTime;

  external _i1.JSString semanticLabel;
}

/// Typedef [XRHandJoint]
///
/// "wrist" | "thumb-metacarpal" | "thumb-phalanx-proximal" | "thumb-phalanx-distal" | "thumb-tip" | "index-finger-metacarpal" | "index-finger-phalanx-proximal" | "index-finger-phalanx-intermediate" | "index-finger-phalanx-distal" | "index-finger-tip" | "middle-finger-metacarpal" | "middle-finger-phalanx-proximal" | "middle-finger-phalanx-intermediate" | "middle-finger-phalanx-distal" | "middle-finger-tip" | "ring-finger-metacarpal" | "ring-finger-phalanx-proximal" | "ring-finger-phalanx-intermediate" | "ring-finger-phalanx-distal" | "ring-finger-tip" | "pinky-finger-metacarpal" | "pinky-finger-phalanx-proximal" | "pinky-finger-phalanx-intermediate" | "pinky-finger-phalanx-distal" | "pinky-finger-tip"
///
typedef XRHandJoint = _i1.JSString;

/// Class [XRJointSpace]
extension type XRJointSpace._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRHandJoint get jointName;
}

/// Class [XRJointPose]
extension type XRJointPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber? get radius;
}

/// Class [XRHand]
extension type XRHand._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get WRIST;
  external _i1.JSNumber get THUMB_METACARPAL;
  external _i1.JSNumber get THUMB_PHALANX_PROXIMAL;
  external _i1.JSNumber get THUMB_PHALANX_DISTAL;
  external _i1.JSNumber get THUMB_PHALANX_TIP;
  external _i1.JSNumber get INDEX_METACARPAL;
  external _i1.JSNumber get INDEX_PHALANX_PROXIMAL;
  external _i1.JSNumber get INDEX_PHALANX_INTERMEDIATE;
  external _i1.JSNumber get INDEX_PHALANX_DISTAL;
  external _i1.JSNumber get INDEX_PHALANX_TIP;
  external _i1.JSNumber get MIDDLE_METACARPAL;
  external _i1.JSNumber get MIDDLE_PHALANX_PROXIMAL;
  external _i1.JSNumber get MIDDLE_PHALANX_INTERMEDIATE;
  external _i1.JSNumber get MIDDLE_PHALANX_DISTAL;
  external _i1.JSNumber get MIDDLE_PHALANX_TIP;
  external _i1.JSNumber get RING_METACARPAL;
  external _i1.JSNumber get RING_PHALANX_PROXIMAL;
  external _i1.JSNumber get RING_PHALANX_INTERMEDIATE;
  external _i1.JSNumber get RING_PHALANX_DISTAL;
  external _i1.JSNumber get RING_PHALANX_TIP;
  external _i1.JSNumber get LITTLE_METACARPAL;
  external _i1.JSNumber get LITTLE_PHALANX_PROXIMAL;
  external _i1.JSNumber get LITTLE_PHALANX_INTERMEDIATE;
  external _i1.JSNumber get LITTLE_PHALANX_DISTAL;
  external _i1.JSNumber get LITTLE_PHALANX_TIP;
}

/// Class [XRLayer]
extension type XRLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRWebGLLayerInit]
extension type XRWebGLLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSBoolean? antialias;

  external _i1.JSBoolean? depth;

  external _i1.JSBoolean? stencil;

  external _i1.JSBoolean? alpha;

  external _i1.JSBoolean? ignoreDepthValues;

  external _i1.JSNumber? framebufferScaleFactor;
}

/// Class [XRWebGLLayer]
extension type XRWebGLLayer(_i1.JSObject _) implements _i1.JSObject, XRLayer {
  external _i1.JSNumber? fixedFoveation;

  external _i1.JSBoolean get antialias;
  external _i1.JSBoolean get ignoreDepthValues;
  external _i2.WebGLFramebuffer get framebuffer;
  external _i1.JSNumber get framebufferWidth;
  external _i1.JSNumber get framebufferHeight;
}

/// Typedef [XRLayerEventType]
///
/// "redraw"
typedef XRLayerEventType = _i1.JSString;

/// Interface [XRLayerEvent]
extension type XRLayerEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external XRLayerEventType get type;
  external XRLayer get layer;
}

/// Interface [XRCompositionLayerEventMap]
extension type XRCompositionLayerEventMap(_i1.JSObject _) implements _i1.JSObject {
  external XRLayerEvent redraw;
}

/// Class [XRCompositionLayer]
extension type XRCompositionLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [XRTextureType]
///
/// "texture" | "texture-array"
///
typedef XRTextureType = _i1.JSString;

/// Typedef [XRLayerLayout]
///
/// "default" | "mono" | "stereo" | "stereo-left-right" | "stereo-top-bottom"
///
typedef XRLayerLayout = _i1.JSString;

/// Typedef [XRLayerQuality]
///
/// "default" | "text-optimized" | "graphics-optimized"
///
typedef XRLayerQuality = _i1.JSString;

/// Interface [XRProjectionLayerInit]
extension type XRProjectionLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber? scaleFactor;

  external XRTextureType? textureType;

  external _i2.GLenum? colorFormat;

  external _i2.GLenum? depthFormat;
}

/// Class [XRProjectionLayer]
extension type XRProjectionLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber fixedFoveation;

  external _i1.JSNumber get textureWidth;
  external _i1.JSNumber get textureHeight;
  external _i1.JSNumber get textureArrayLength;
  external _i1.JSNumber get ignoreDepthValues;
}

/// Interface [XRLayerInit]
extension type XRLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber? mipLevels;

  external _i1.JSNumber viewPixelWidth;

  external _i1.JSNumber viewPixelHeight;

  external _i1.JSBoolean? isStatic;

  external _i2.GLenum? colorFormat;

  external _i2.GLenum? depthFormat;

  external _i2.XRSpace space;

  external XRLayerLayout? layout;
}

/// Interface [XRMediaLayerInit]
extension type XRMediaLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSBoolean? invertStereo;

  external _i2.XRSpace space;

  external XRLayerLayout? layout;
}

/// Interface [XRCylinderLayerInit]
extension type XRCylinderLayerInit(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralAngle;

  external _i1.JSNumber? aspectRatio;
}

/// Interface [XRMediaCylinderLayerInit]
extension type XRMediaCylinderLayerInit(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralAngle;

  external _i1.JSNumber? aspectRatio;
}

/// Class [XRCylinderLayer]
extension type XRCylinderLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber radius;

  external _i1.JSNumber centralAngle;

  external _i1.JSNumber aspectRatio;
}

/// Interface [XRQuadLayerInit]
extension type XRQuadLayerInit(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? width;

  external _i1.JSNumber? height;
}

/// Interface [XRMediaQuadLayerInit]
extension type XRMediaQuadLayerInit(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? width;

  external _i1.JSNumber? height;
}

/// Class [XRQuadLayer]
extension type XRQuadLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber width;

  external _i1.JSNumber height;
}

/// Interface [XREquirectLayerInit]
extension type XREquirectLayerInit(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralHorizontalAngle;

  external _i1.JSNumber? upperVerticalAngle;

  external _i1.JSNumber? lowerVerticalAngle;
}

/// Interface [XRMediaEquirectLayerInit]
extension type XRMediaEquirectLayerInit(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralHorizontalAngle;

  external _i1.JSNumber? upperVerticalAngle;

  external _i1.JSNumber? lowerVerticalAngle;
}

/// Class [XREquirectLayer]
extension type XREquirectLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber radius;

  external _i1.JSNumber centralHorizontalAngle;

  external _i1.JSNumber upperVerticalAngle;

  external _i1.JSNumber lowerVerticalAngle;
}

/// Interface [XRCubeLayerInit]
extension type XRCubeLayerInit(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  external _i2.DOMPointReadOnly? orientation;
}

/// Class [XRCubeLayer]
extension type XRCubeLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly orientation;
}

/// Class [XRSubImage]
extension type XRSubImage._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRViewport get viewport;
}

/// Class [XRWebGLSubImage]
extension type XRWebGLSubImage._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.WebGLTexture get colorTexture;
  external _i2.WebGLTexture get depthStencilTexture;
  external _i1.JSNumber get imageIndex;
  external _i1.JSNumber get textureWidth;
  external _i1.JSNumber get textureHeight;
}

/// Class [XRWebGLBinding]
extension type XRWebGLBinding(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get nativeProjectionScaleFactor;

  /// Method [getDepthInformation]
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
}

/// Class [XRMediaBinding]
extension type XRMediaBinding(_i1.JSObject _) implements _i1.JSObject {}

/// enum XOVR_multiview2
extension type XOVR_multiview2(_i1.JSObject _) implements _i1.JSObject {}

/// Class [OVR_multiview2]
extension type OVR_multiview2._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRSessionGrant]
extension type XRSessionGrant(_i1.JSObject _) implements _i1.JSObject {
  external XRSessionMode mode;
}

/// Interface [XRSystemSessionGrantedEvent]
extension type XRSystemSessionGrantedEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external _i1.JSString type;

  external XRSessionGrant session;
}

/// Interface [XRSystemSessionGrantedEventHandler]
extension type XRSystemSessionGrantedEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// Class [OCULUS_multiview]
extension type OCULUS_multiview._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [framebufferTextureMultisampleMultiviewOVR]
  external void framebufferTextureMultisampleMultiviewOVR(
    _i2.GLenum target,
    _i2.GLenum attachment,
    _i2.WebGLTexture? texture,
    _i2.GLint level,
    _i2.GLsizei samples,
    _i2.GLint baseViewIndex,
    _i2.GLsizei numViews,
  );
}

/// Interface [GlobalEventHandlersEventMap]
extension type GlobalEventHandlersEventMap(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSessionEvent beforexrselect;
}

/// Interface [GlobalEventHandlers]
extension type GlobalEventHandlers(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction? onbeforexrselect;
}

/// Interface [XRDOMOverlayInit]
extension type XRDOMOverlayInit(_i1.JSObject _) implements _i1.JSObject {
  external _i2.Element root;
}

/// Typedef [XRDOMOverlayType]
///
/// "screen" | "floating" | "head-locked"
///
typedef XRDOMOverlayType = _i1.JSString;

/// Interface [XRDOMOverlayState]
extension type XRDOMOverlayState(_i1.JSObject _) implements _i1.JSObject {
  external XRDOMOverlayType type;
}

/// Typedef [XRDepthUsage]
///
/// "cpu-optimized" | "gpu-optimized"
///
typedef XRDepthUsage = _i1.JSString;

/// Typedef [XRDepthDataFormat]
///
/// "luminance-alpha" | "float32" | "unsigned-short"
///
typedef XRDepthDataFormat = _i1.JSString;

/// Interface [XRDepthStateInit]
extension type XRDepthStateInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<XRDepthUsage> usagePreference;

  external _i1.JSArray<XRDepthDataFormat> dataFormatPreference;
}

/// Interface [XRDepthInformation]
extension type XRDepthInformation(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get width;
  external _i1.JSNumber get height;
  external _i2.XRRigidTransform get normDepthBufferFromNormView;
  external _i1.JSNumber get rawValueToMeters;
}

/// Interface [XRCPUDepthInformation]
extension type XRCPUDepthInformation(_i1.JSObject _) implements _i1.JSObject, XRDepthInformation {
  external _i1.JSArrayBuffer get data;

  /// Method [getDepthInMeters]
  external _i1.JSNumber getDepthInMeters(
    _i1.JSNumber x,
    _i1.JSNumber y,
  );
}

/// Interface [XRWebGLDepthInformation]
extension type XRWebGLDepthInformation(_i1.JSObject _) implements _i1.JSObject, XRDepthInformation {
  external _i2.WebGLTexture get texture;
  external XRTextureType get textureType;
  external _i1.JSNumber? get imageIndex;
}
