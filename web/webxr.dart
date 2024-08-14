// ignore_for_file: no_leading_underscores_for_library_prefixes, non_constant_identifier_names, camel_case_types
import 'dart:js_interop' as _i1;
import 'package:web/web.dart' as _i2;
import './types.dart' as _i3;

/// interface Navigator
extension type Navigator(_i1.JSObject _)
    implements _i1.JSObject, _i2.Navigator {
  external XRSystem? xr;
}

/// interface WebGLContextAttributes
extension type WebGLContextAttributes(_i1.JSObject _)
    implements _i1.JSObject, _i2.WebGLContextAttributes {
  external _i1.JSBoolean? xrCompatible;
}

/// interface WebGLRenderingContextBase
extension type WebGLRenderingContextBase(_i1.JSObject _)
    implements _i1.JSObject {
  external _i1.JSPromise makeXRCompatible();
}

/// typedef XRSessionMode
typedef XRSessionMode = _i1.JSString;

/// typedef XRReferenceSpaceType
typedef XRReferenceSpaceType = _i1.JSString;

/// typedef XREnvironmentBlendMode
typedef XREnvironmentBlendMode = _i1.JSString;

/// typedef XRVisibilityState
typedef XRVisibilityState = _i1.JSString;

/// typedef XRHandedness
typedef XRHandedness = _i1.JSString;

/// typedef XRTargetRayMode
typedef XRTargetRayMode = _i1.JSString;

/// typedef XREye
typedef XREye = _i1.JSString;

/// typedef XRFrameRequestCallback
typedef XRFrameRequestCallback = _i1.JSFunction;

/// interface XRSystemDeviceChangeEvent
extension type XRSystemDeviceChangeEvent(_i1.JSObject _)
    implements _i1.JSObject, _i2.Event {
  external _i1.JSString type;
}

/// interface XRSystemDeviceChangeEventHandler
extension type XRSystemDeviceChangeEventHandler(_i1.JSObject _)
    implements _i1.JSObject {}

/// interface XRSystemEventMap
extension type XRSystemEventMap(_i1.JSObject _) implements _i1.JSObject {
  external XRSystemDeviceChangeEvent devicechange;
}

/// class XRSystem
extension type XRSystem._(_i1.JSObject _) implements _i1.JSObject {
  external XRSystemDeviceChangeEventHandler? ondevicechange;

  external XRSystemSessionGrantedEventHandler? onsessiongranted;

  external _i1.JSPromise<XRSession> requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);
  external _i1.JSPromise<_i1.JSBoolean> isSessionSupported(XRSessionMode mode);
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// class XRViewport
extension type XRViewport._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get x;
  external _i1.JSNumber get y;
  external _i1.JSNumber get width;
  external _i1.JSNumber get height;
}

/// class XRSpace
extension type XRSpace._(_i1.JSObject _) implements _i1.JSObject {}

/// interface XRRenderStateInit
extension type XRRenderStateInit(_i1.JSObject _) implements _i1.JSObject {
  external XRWebGLLayer? baseLayer;

  external _i1.JSNumber? depthFar;

  external _i1.JSNumber? depthNear;

  external _i1.JSNumber? inlineVerticalFieldOfView;
}

/// class XRRenderState
extension type XRRenderState._(_i1.JSObject _) implements _i1.JSObject {
  external XRWebGLLayer? get baseLayer;
  external _i1.JSNumber get depthFar;
  external _i1.JSNumber get depthNear;
  external _i1.JSNumber? get inlineVerticalFieldOfView;
  external _i1.JSArray<XRLayer>? get layers;
}

/// interface XRReferenceSpaceEventInit
extension type XRReferenceSpaceEventInit(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRReferenceSpaceEventInit {
  external _i2.XRReferenceSpace? referenceSpace;

  external _i2.XRRigidTransform? transform;
}

/// class XRReferenceSpaceEvent
extension type XRReferenceSpaceEvent(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSString get type;
  external _i2.XRReferenceSpace get referenceSpace;
  external _i2.XRRigidTransform? get transform;
}

/// interface XRReferenceSpaceEventHandler
extension type XRReferenceSpaceEventHandler(_i1.JSObject _)
    implements _i1.JSObject {}

/// interface XRReferenceSpaceEventMap
extension type XRReferenceSpaceEventMap(_i1.JSObject _)
    implements _i1.JSObject {
  external _i2.XRReferenceSpaceEvent reset;
}

/// class XRReferenceSpace
extension type XRReferenceSpace._(_i1.JSObject _) implements _i1.JSObject {
  external XRReferenceSpaceEventHandler onreset;

  external _i2.XRReferenceSpace getOffsetReferenceSpace(
      _i2.XRRigidTransform originOffset);
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// class XRBoundedReferenceSpace
extension type XRBoundedReferenceSpace._(_i1.JSObject _)
    implements _i1.JSObject {
  external _i1.JSArray<_i2.DOMPointReadOnly> get boundsGeometry;
}

/// class XRInputSource
extension type XRInputSource._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRHandedness get handedness;
  external _i2.XRTargetRayMode get targetRayMode;
  external _i2.XRSpace get targetRaySpace;
  external _i2.XRSpace? get gripSpace;
  external _i2.Gamepad? get gamepad;
  external _i1.JSArray<_i1.JSString> get profiles;
  external _i2.XRHand? get hand;
}

/// interface GamepadHapticActuator
extension type GamepadHapticActuator(_i1.JSObject _)
    implements _i1.JSObject, _i2.GamepadHapticActuator {
  external _i1.JSPromise<_i1.JSBoolean> pulse(
    _i1.JSNumber value,
    _i1.JSNumber duration,
  );
}

/// interface Gamepad
extension type Gamepad(_i1.JSObject _) implements _i1.JSObject, _i2.Gamepad {
  external _i1.JSArray<_i2.GamepadHapticActuator> get hapticActuators;
}

/// class XRInputSourceArray
extension type XRInputSourceArray._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber length;

  external void operator []=(
    _i1.JSNumber n,
    _i3.XRInputSource value,
  );
  external _i3.XRInputSource operator [](_i1.JSNumber n);
  external _i3.IterableIterator<_i1.JSArray<_i1.JSAny>> entries();
  external _i3.IterableIterator<_i1.JSNumber> keys();
  external _i3.IterableIterator<_i3.XRInputSource> values();
  external void forEach(
    _i1.JSFunction callbackfn, [
    _i1.JSAny thisArg,
  ]);
}

/// class XRPose
extension type XRPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform get transform;
  external _i2.DOMPointReadOnly? get linearVelocity;
  external _i2.DOMPointReadOnly? get angularVelocity;
  external _i1.JSBoolean get emulatedPosition;
}

/// class XRFrame
extension type XRFrame._(_i1.JSObject _) implements _i1.JSObject {
  external XRAnchorSet? trackedAnchors;

  external _i1.JSFunction createAnchor;

  external _i1.JSFunction getJointPose;

  external XRSession get session;
  external _i2.DOMHighResTimeStamp get predictedDisplayTime;
  external _i2.XRPose? getPose(
    _i2.XRSpace space,
    _i2.XRSpace baseSpace,
  );
  external _i2.XRViewerPose? getViewerPose(_i2.XRReferenceSpace referenceSpace);
  external _i1.JSArray<XRHitTestResult> getHitTestResults(
      XRHitTestSource hitTestSource);
  external _i1.JSArray<XRTransientInputHitTestResult>
      getHitTestResultsForTransientInput(
          XRTransientInputHitTestSource hitTestSource);
  external XRPlaneSet get detectedPlanes;
  external XRMeshSet get detectedMeshes;
  external XRCPUDepthInformation? getDepthInformation(XRView view);
}

/// typedef XRInputSourceEventType
typedef XRInputSourceEventType = _i1.JSString;

/// interface XRInputSourceEventInit
extension type XRInputSourceEventInit(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRInputSourceEventInit {
  external _i3.XRFrame? frame;

  external _i3.XRInputSource? inputSource;
}

/// class XRInputSourceEvent
extension type XRInputSourceEvent(_i1.JSObject _)
    implements _i1.JSObject, _i2.Event {
  external XRInputSourceEventType get type;
  external _i3.XRFrame get frame;
  external _i3.XRInputSource get inputSource;
}

/// interface XRInputSourceEventHandler
extension type XRInputSourceEventHandler(_i1.JSObject _)
    implements _i1.JSObject {}

/// typedef XRSessionEventType
typedef XRSessionEventType = _i1.JSString;

/// interface XRSessionEventInit
extension type XRSessionEventInit(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRSessionEventInit {
  external XRSession session;
}

/// class XRSessionEvent
extension type XRSessionEvent(_i1.JSObject _)
    implements _i1.JSObject, _i2.Event {
  external XRSession get session;
}

/// interface XRSessionEventHandler
extension type XRSessionEventHandler(_i1.JSObject _) implements _i1.JSObject {}

/// interface XRSessionInit
extension type XRSessionInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<_i1.JSString>? optionalFeatures;

  external _i1.JSArray<_i1.JSString>? requiredFeatures;
}

/// interface XRSessionEventMap
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

/// class XRSession
extension type XRSession._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction requestHitTestSource;

  external _i1.JSFunction requestHitTestSourceForTransientInput;

  external _i1.JSFunction requestHitTest;

  external _i1.JSPromise initiateRoomCapture();
  external XRDOMOverlayState? get domOverlayState;
  external XRDepthUsage? get depthUsage;
  external XRDepthDataFormat? get depthDataFormat;
}

/// class XRViewerPose
extension type XRViewerPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<XRView> get views;
}

/// class XRRigidTransform
extension type XRRigidTransform(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly get position;
  external _i2.DOMPointReadOnly get orientation;
  external _i1.JSFloat32Array get matrix;
  external _i2.XRRigidTransform get inverse;
}

/// class XRView
extension type XRView._(_i1.JSObject _) implements _i1.JSObject {
  external XREye get eye;
  external _i1.JSFloat32Array get projectionMatrix;
  external _i2.XRRigidTransform get transform;
  external _i1.JSNumber? get recommendedViewportScale;
  external void requestViewportScale(_i1.JSNumber scale);
}

/// interface XRInputSourcesChangeEvent
extension type XRInputSourcesChangeEvent(_i1.JSObject _)
    implements _i1.JSObject, _i2.XRSessionEvent, _i2.XRInputSourcesChangeEvent {
  external _i1.JSArray<_i3.XRInputSource> get removed;
  external _i1.JSArray<_i3.XRInputSource> get added;
}

/// interface XRInputSourcesChangeEventHandler
extension type XRInputSourcesChangeEventHandler(_i1.JSObject _)
    implements _i1.JSObject {}

/// typedef XRAnchorSet
typedef XRAnchorSet = Set<XRAnchor>;

/// class XRAnchor
extension type XRAnchor._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace anchorSpace;

  external void delete();
}

/// class XRRay
extension type XRRay(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly get origin;
  external _i2.DOMPointReadOnly get direction;
  external _i1.JSFloat32Array get matrix;
}

/// typedef XRHitTestTrackableType
typedef XRHitTestTrackableType = _i1.JSString;

/// class XRTransientInputHitTestResult
extension type XRTransientInputHitTestResult(_i1.JSObject _)
    implements _i1.JSObject {
  external XRTransientInputHitTestResult prototype;

  external _i3.XRInputSource get inputSource;
  external _i1.JSArray<XRHitTestResult> get results;
}

/// class XRHitTestResult
extension type XRHitTestResult._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction createAnchor;

  external _i2.XRPose? getPose(_i2.XRSpace baseSpace);
}

/// class XRHitTestSource
extension type XRHitTestSource._(_i1.JSObject _) implements _i1.JSObject {
  external void cancel();
}

/// class XRTransientInputHitTestSource
extension type XRTransientInputHitTestSource._(_i1.JSObject _)
    implements _i1.JSObject {
  external void cancel();
}

/// interface XRHitTestOptionsInit
extension type XRHitTestOptionsInit(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace space;

  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  external XRRay? offsetRay;
}

/// interface XRTransientInputHitTestOptionsInit
extension type XRTransientInputHitTestOptionsInit(_i1.JSObject _)
    implements _i1.JSObject {
  external _i1.JSString profile;

  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  external XRRay? offsetRay;
}

/// interface XRHitResult
extension type XRHitResult(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFloat32Array hitMatrix;
}

/// typedef XRPlaneSet
typedef XRPlaneSet = Set<XRPlane>;

/// typedef XRPlaneOrientation
typedef XRPlaneOrientation = _i1.JSString;

/// class XRPlane
extension type XRPlane._(_i1.JSObject _) implements _i1.JSObject {
  external XRPlaneOrientation orientation;

  external _i2.XRSpace planeSpace;

  external _i1.JSArray<_i2.DOMPointReadOnly> polygon;

  external _i2.DOMHighResTimeStamp lastChangedTime;
}

/// typedef XRMeshSet
typedef XRMeshSet = Set<XRMesh>;

/// class XRMesh
extension type XRMesh._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRSpace meshSpace;

  external _i1.JSFloat32Array vertices;

  external _i1.JSUint32Array indices;

  external _i2.DOMHighResTimeStamp lastChangedTime;

  external _i1.JSString semanticLabel;
}

/// typedef XRHandJoint
typedef XRHandJoint = _i1.JSString;

/// class XRJointSpace
extension type XRJointSpace._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRHandJoint get jointName;
}

/// class XRJointPose
extension type XRJointPose._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber? get radius;
}

/// class XRHand
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

/// class XRLayer
extension type XRLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// interface XRWebGLLayerInit
extension type XRWebGLLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSBoolean? antialias;

  external _i1.JSBoolean? depth;

  external _i1.JSBoolean? stencil;

  external _i1.JSBoolean? alpha;

  external _i1.JSBoolean? ignoreDepthValues;

  external _i1.JSNumber? framebufferScaleFactor;
}

/// class XRWebGLLayer
extension type XRWebGLLayer(_i1.JSObject _) implements _i1.JSObject, XRLayer {
  external _i1.JSNumber? fixedFoveation;

  external _i1.JSBoolean get antialias;
  external _i1.JSBoolean get ignoreDepthValues;
  external _i2.WebGLFramebuffer get framebuffer;
  external _i1.JSNumber get framebufferWidth;
  external _i1.JSNumber get framebufferHeight;
}

/// typedef XRLayerEventType
typedef XRLayerEventType = _i1.JSString;

/// interface XRLayerEvent
extension type XRLayerEvent(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  external XRLayerEventType get type;
  external XRLayer get layer;
}

/// interface XRCompositionLayerEventMap
extension type XRCompositionLayerEventMap(_i1.JSObject _)
    implements _i1.JSObject {
  external XRLayerEvent redraw;
}

/// class XRCompositionLayer
extension type XRCompositionLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// typedef XRTextureType
typedef XRTextureType = _i1.JSString;

/// typedef XRLayerLayout
typedef XRLayerLayout = _i1.JSString;

/// typedef XRLayerQuality
typedef XRLayerQuality = _i1.JSString;

/// interface XRProjectionLayerInit
extension type XRProjectionLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber? scaleFactor;

  external XRTextureType? textureType;

  external _i2.GLenum? colorFormat;

  external _i2.GLenum? depthFormat;
}

/// class XRProjectionLayer
extension type XRProjectionLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber fixedFoveation;

  external _i1.JSNumber get textureWidth;
  external _i1.JSNumber get textureHeight;
  external _i1.JSNumber get textureArrayLength;
  external _i1.JSNumber get ignoreDepthValues;
}

/// interface XRLayerInit
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

/// interface XRMediaLayerInit
extension type XRMediaLayerInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSBoolean? invertStereo;

  external _i2.XRSpace space;

  external XRLayerLayout? layout;
}

/// interface XRCylinderLayerInit
extension type XRCylinderLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralAngle;

  external _i1.JSNumber? aspectRatio;
}

/// interface XRMediaCylinderLayerInit
extension type XRMediaCylinderLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralAngle;

  external _i1.JSNumber? aspectRatio;
}

/// class XRCylinderLayer
extension type XRCylinderLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber radius;

  external _i1.JSNumber centralAngle;

  external _i1.JSNumber aspectRatio;
}

/// interface XRQuadLayerInit
extension type XRQuadLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? width;

  external _i1.JSNumber? height;
}

/// interface XRMediaQuadLayerInit
extension type XRMediaQuadLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? width;

  external _i1.JSNumber? height;
}

/// class XRQuadLayer
extension type XRQuadLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber width;

  external _i1.JSNumber height;
}

/// interface XREquirectLayerInit
extension type XREquirectLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRLayerInit {
  external XRTextureType? textureType;

  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralHorizontalAngle;

  external _i1.JSNumber? upperVerticalAngle;

  external _i1.JSNumber? lowerVerticalAngle;
}

/// interface XRMediaEquirectLayerInit
extension type XRMediaEquirectLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRMediaLayerInit {
  external _i2.XRRigidTransform? transform;

  external _i1.JSNumber? radius;

  external _i1.JSNumber? centralHorizontalAngle;

  external _i1.JSNumber? upperVerticalAngle;

  external _i1.JSNumber? lowerVerticalAngle;
}

/// class XREquirectLayer
extension type XREquirectLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRRigidTransform transform;

  external _i1.JSNumber radius;

  external _i1.JSNumber centralHorizontalAngle;

  external _i1.JSNumber upperVerticalAngle;

  external _i1.JSNumber lowerVerticalAngle;
}

/// interface XRCubeLayerInit
extension type XRCubeLayerInit(_i1.JSObject _)
    implements _i1.JSObject, XRLayerInit {
  external _i2.DOMPointReadOnly? orientation;
}

/// class XRCubeLayer
extension type XRCubeLayer._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.DOMPointReadOnly orientation;
}

/// class XRSubImage
extension type XRSubImage._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.XRViewport get viewport;
}

/// class XRWebGLSubImage
extension type XRWebGLSubImage._(_i1.JSObject _) implements _i1.JSObject {
  external _i2.WebGLTexture get colorTexture;
  external _i2.WebGLTexture get depthStencilTexture;
  external _i1.JSNumber get imageIndex;
  external _i1.JSNumber get textureWidth;
  external _i1.JSNumber get textureHeight;
}

/// class XRWebGLBinding
extension type XRWebGLBinding(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get nativeProjectionScaleFactor;
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
}

/// class XRMediaBinding
extension type XRMediaBinding(_i1.JSObject _) implements _i1.JSObject {}

/// enum XOVR_multiview2
extension type XOVR_multiview2(_i1.JSObject _) implements _i1.JSObject {}

/// class OVR_multiview2
extension type OVR_multiview2._(_i1.JSObject _) implements _i1.JSObject {}

/// interface XRSessionGrant
extension type XRSessionGrant(_i1.JSObject _) implements _i1.JSObject {
  external XRSessionMode mode;
}

/// interface XRSystemSessionGrantedEvent
extension type XRSystemSessionGrantedEvent(_i1.JSObject _)
    implements _i1.JSObject, _i2.Event {
  external _i1.JSString type;

  external XRSessionGrant session;
}

/// interface XRSystemSessionGrantedEventHandler
extension type XRSystemSessionGrantedEventHandler(_i1.JSObject _)
    implements _i1.JSObject {}

/// class OCULUS_multiview
extension type OCULUS_multiview._(_i1.JSObject _) implements _i1.JSObject {
  external void framebufferTextureMultisampleMultiviewOVR(
    _i2.GLenum target,
    _i2.GLenum attachment,
    _i1.JSAny texture,
    _i2.GLint level,
    _i2.GLsizei samples,
    _i2.GLint baseViewIndex,
    _i2.GLsizei numViews,
  );
}

/// interface GlobalEventHandlersEventMap
extension type GlobalEventHandlersEventMap(_i1.JSObject _)
    implements _i1.JSObject {
  external _i2.XRSessionEvent beforexrselect;
}

/// interface GlobalEventHandlers
extension type GlobalEventHandlers(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSFunction? onbeforexrselect;
}

/// interface XRDOMOverlayInit
extension type XRDOMOverlayInit(_i1.JSObject _) implements _i1.JSObject {
  external _i2.Element root;
}

/// typedef XRDOMOverlayType
typedef XRDOMOverlayType = _i1.JSString;

/// interface XRDOMOverlayState
extension type XRDOMOverlayState(_i1.JSObject _) implements _i1.JSObject {
  external XRDOMOverlayType type;
}

/// typedef XRDepthUsage
typedef XRDepthUsage = _i1.JSString;

/// typedef XRDepthDataFormat
typedef XRDepthDataFormat = _i1.JSString;

/// interface XRDepthStateInit
extension type XRDepthStateInit(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<XRDepthUsage> usagePreference;

  external _i1.JSArray<XRDepthDataFormat> dataFormatPreference;
}

/// interface XRDepthInformation
extension type XRDepthInformation(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSNumber get width;
  external _i1.JSNumber get height;
  external _i2.XRRigidTransform get normDepthBufferFromNormView;
  external _i1.JSNumber get rawValueToMeters;
}

/// interface XRCPUDepthInformation
extension type XRCPUDepthInformation(_i1.JSObject _)
    implements _i1.JSObject, XRDepthInformation {
  external _i1.JSArrayBuffer get data;
  external _i1.JSNumber getDepthInMeters(
    _i1.JSNumber x,
    _i1.JSNumber y,
  );
}

/// interface XRWebGLDepthInformation
extension type XRWebGLDepthInformation(_i1.JSObject _)
    implements _i1.JSObject, XRDepthInformation {
  external _i2.WebGLTexture get texture;
  external XRTextureType get textureType;
  external _i1.JSNumber? get imageIndex;
}
