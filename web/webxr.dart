// ignore_for_file: camel_case_types, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;
import 'package:web/web.dart' as _i2;
import './types.dart' as _i3;

/// Interface [Navigator]
extension type Navigator.$(_i1.JSObject _) implements _i1.JSObject, _i2.Navigator {
  /// Property [xr]
  ///
  /// xr?: XRSystem | undefined
  external XRSystem? xr;
}

/// Interface [WebGLContextAttributes]
extension type WebGLContextAttributes.$(_i1.JSObject _) implements _i1.JSObject, _i2.WebGLContextAttributes {
  /// Property [xrCompatible]
  ///
  /// xrCompatible?: boolean | undefined
  external _i1.JSBoolean? xrCompatible;
}

/// Interface [WebGLRenderingContextBase]
extension type WebGLRenderingContextBase.$(_i1.JSObject _) implements _i1.JSObject {
  /// Method [makeXRCompatible]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise makeXRCompatible();
}

/// Typedef [XRSessionMode]
///
/// "inline" | "immersive-vr" | "immersive-ar"
typedef XRSessionMode = _i1.JSString;

/// Typedef [XRReferenceSpaceType]
///
/// "viewer" | "local" | "local-floor" | "bounded-floor" | "unbounded"
typedef XRReferenceSpaceType = _i1.JSString;

/// Typedef [XREnvironmentBlendMode]
///
/// "opaque" | "additive" | "alpha-blend"
typedef XREnvironmentBlendMode = _i1.JSString;

/// Typedef [XRVisibilityState]
///
/// "visible" | "visible-blurred" | "hidden"
typedef XRVisibilityState = _i1.JSString;

/// Typedef [XRHandedness]
///
/// "none" | "left" | "right"
typedef XRHandedness = _i1.JSString;

/// Typedef [XRTargetRayMode]
///
/// "gaze" | "tracked-pointer" | "screen" | "transient-pointer"
typedef XRTargetRayMode = _i1.JSString;

/// Typedef [XREye]
///
/// "none" | "left" | "right"
typedef XREye = _i1.JSString;

/// Typedef [XRFrameRequestCallback]
///
/// (time: DOMHighResTimeStamp, frame: XRFrame) => void
typedef XRFrameRequestCallback = _i1.JSFunction;

/// Interface [XRSystemDeviceChangeEvent]
extension type XRSystemDeviceChangeEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  /// Property [type]
  ///
  /// type: "devicechange"
  external _i1.JSString type;
}

/// Interface [XRSystemDeviceChangeEventHandler]
extension type XRSystemDeviceChangeEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Interface [XRSystemEventMap]
extension type XRSystemEventMap.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [devicechange]
  ///
  /// devicechange: XRSystemDeviceChangeEvent
  external XRSystemDeviceChangeEvent devicechange;
}

/// Class [XRSystem]
extension type XRSystem._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [ondevicechange]
  ///
  /// ondevicechange: XRSystemDeviceChangeEventHandler | null
  external XRSystemDeviceChangeEventHandler ondevicechange;

  /// Property [onsessiongranted]
  ///
  /// onsessiongranted: XRSystemSessionGrantedEventHandler | null
  external XRSystemSessionGrantedEventHandler onsessiongranted;

  /// Method [requestSession]
  ///
  /// Parameters:
  /// - mode: XRSessionMode
  /// - options: XRSessionInit
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<XRSession> requestSession(
    XRSessionMode mode, [
    XRSessionInit options,
  ]);

  /// Method [isSessionSupported]
  ///
  /// Parameters:
  /// - mode: XRSessionMode
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<_i1.JSBoolean> isSessionSupported(XRSessionMode mode);

  /// Method [addEventListener]
  ///
  /// Type Parameters:
  /// - K extends keyof XRSystemEventMap
  ///
  /// Parameters:
  /// - type: K
  /// - listener: (this: XRSystem, ev: XRSystemEventMap[K]) => any
  /// - options: boolean | AddEventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [addEventListener]
  ///
  /// Parameters:
  /// - type: string
  /// - listener: EventListenerOrEventListenerObject
  /// - options: boolean | AddEventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// Type Parameters:
  /// - K extends keyof XRSystemEventMap
  ///
  /// Parameters:
  /// - type: K
  /// - listener: (this: XRSystem, ev: XRSystemEventMap[K]) => any
  /// - options: boolean | EventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// Parameters:
  /// - type: string
  /// - listener: EventListenerOrEventListenerObject
  /// - options: boolean | EventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// Class [XRViewport]
extension type XRViewport._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [x]
  ///
  /// readonly x: number
  external _i1.JSNumber get x;

  /// Property [y]
  ///
  /// readonly y: number
  external _i1.JSNumber get y;

  /// Property [width]
  ///
  /// readonly width: number
  external _i1.JSNumber get width;

  /// Property [height]
  ///
  /// readonly height: number
  external _i1.JSNumber get height;
}

/// Class [XRSpace]
extension type XRSpace._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRRenderStateInit]
extension type XRRenderStateInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [baseLayer]
  ///
  /// baseLayer?: XRWebGLLayer | undefined
  external XRWebGLLayer? baseLayer;

  /// Property [depthFar]
  ///
  /// depthFar?: number | undefined
  external _i1.JSNumber? depthFar;

  /// Property [depthNear]
  ///
  /// depthNear?: number | undefined
  external _i1.JSNumber? depthNear;

  /// Property [inlineVerticalFieldOfView]
  ///
  /// inlineVerticalFieldOfView?: number | undefined
  external _i1.JSNumber? inlineVerticalFieldOfView;
}

/// Class [XRRenderState]
extension type XRRenderState._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [baseLayer]
  ///
  /// readonly baseLayer?: XRWebGLLayer | undefined
  external XRWebGLLayer? get baseLayer;

  /// Property [depthFar]
  ///
  /// readonly depthFar: number
  external _i1.JSNumber get depthFar;

  /// Property [depthNear]
  ///
  /// readonly depthNear: number
  external _i1.JSNumber get depthNear;

  /// Property [inlineVerticalFieldOfView]
  ///
  /// readonly inlineVerticalFieldOfView?: number | undefined
  external _i1.JSNumber? get inlineVerticalFieldOfView;

  /// Property [layers]
  ///
  /// readonly layers?: XRLayer[] | undefined
  external _i1.JSArray<XRLayer>? get layers;
}

/// Interface [XRReferenceSpaceEventInit]
extension type XRReferenceSpaceEventInit.$(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRReferenceSpaceEventInit {
  /// Property [referenceSpace]
  ///
  /// referenceSpace?: XRReferenceSpace | undefined
  external _i2.XRReferenceSpace? referenceSpace;

  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;
}

/// Class [XRReferenceSpaceEvent]
extension type XRReferenceSpaceEvent.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - type: "reset"
  /// - eventInitDict: XRReferenceSpaceEventInit
  external XRReferenceSpaceEvent(
    _i1.JSString type, [
    _i2.XRReferenceSpaceEventInit eventInitDict,
  ]);

  /// Property [type]
  ///
  /// readonly type: "reset"
  external _i1.JSString get type;

  /// Property [referenceSpace]
  ///
  /// readonly referenceSpace: XRReferenceSpace
  external _i2.XRReferenceSpace get referenceSpace;

  /// Property [transform]
  ///
  /// readonly transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? get transform;
}

/// Interface [XRReferenceSpaceEventHandler]
extension type XRReferenceSpaceEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Interface [XRReferenceSpaceEventMap]
extension type XRReferenceSpaceEventMap.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [reset]
  ///
  /// reset: XRReferenceSpaceEvent
  external _i2.XRReferenceSpaceEvent reset;
}

/// Class [XRReferenceSpace]
extension type XRReferenceSpace._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [onreset]
  ///
  /// onreset: XRReferenceSpaceEventHandler
  external XRReferenceSpaceEventHandler onreset;

  /// Method [getOffsetReferenceSpace]
  ///
  /// Parameters:
  /// - originOffset: XRRigidTransform
  ///
  /// Returns:
  /// - XRReferenceSpace
  external _i2.XRReferenceSpace getOffsetReferenceSpace(_i2.XRRigidTransform originOffset);

  /// Method [addEventListener]
  ///
  /// Type Parameters:
  /// - K extends keyof XRReferenceSpaceEventMap
  ///
  /// Parameters:
  /// - type: K
  /// - listener: (this: XRReferenceSpace, ev: XRReferenceSpaceEventMap[K]) => any
  /// - options: boolean | AddEventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('addEventListener')
  external void addEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [addEventListener]
  ///
  /// Parameters:
  /// - type: string
  /// - listener: EventListenerOrEventListenerObject
  /// - options: boolean | AddEventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('addEventListener')
  external void addEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// Type Parameters:
  /// - K extends keyof XRReferenceSpaceEventMap
  ///
  /// Parameters:
  /// - type: K
  /// - listener: (this: XRReferenceSpace, ev: XRReferenceSpaceEventMap[K]) => any
  /// - options: boolean | EventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('removeEventListener')
  external void removeEventListener$1<K extends _i1.JSAny>(
    K type,
    _i1.JSFunction listener, [
    _i1.JSAny options,
  ]);

  /// Method [removeEventListener]
  ///
  /// Parameters:
  /// - type: string
  /// - listener: EventListenerOrEventListenerObject
  /// - options: boolean | EventListenerOptions
  ///
  /// Returns:
  /// - void
  @_i1.JS('removeEventListener')
  external void removeEventListener$2(
    _i1.JSString type,
    _i3.EventListenerOrEventListenerObject listener, [
    _i1.JSAny options,
  ]);
}

/// Class [XRBoundedReferenceSpace]
extension type XRBoundedReferenceSpace._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [boundsGeometry]
  ///
  /// readonly boundsGeometry: DOMPointReadOnly[]
  external _i1.JSArray<_i2.DOMPointReadOnly> get boundsGeometry;
}

/// Class [XRInputSource]
extension type XRInputSource._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [handedness]
  ///
  /// readonly handedness: XRHandedness
  external _i2.XRHandedness get handedness;

  /// Property [targetRayMode]
  ///
  /// readonly targetRayMode: XRTargetRayMode
  external _i2.XRTargetRayMode get targetRayMode;

  /// Property [targetRaySpace]
  ///
  /// readonly targetRaySpace: XRSpace
  external _i2.XRSpace get targetRaySpace;

  /// Property [gripSpace]
  ///
  /// readonly gripSpace?: XRSpace | undefined
  external _i2.XRSpace? get gripSpace;

  /// Property [gamepad]
  ///
  /// readonly gamepad?: Gamepad | undefined
  external _i2.Gamepad? get gamepad;

  /// Property [profiles]
  ///
  /// readonly profiles: string[]
  external _i1.JSArray<_i1.JSString> get profiles;

  /// Property [hand]
  ///
  /// readonly hand?: XRHand | undefined
  external _i2.XRHand? get hand;
}

/// Interface [GamepadHapticActuator]
extension type GamepadHapticActuator.$(_i1.JSObject _) implements _i1.JSObject, _i2.GamepadHapticActuator {
  /// Method [pulse]
  ///
  /// Parameters:
  /// - value: number
  /// - duration: number
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise<_i1.JSBoolean> pulse(
    _i1.JSNumber value,
    _i1.JSNumber duration,
  );
}

/// Interface [Gamepad]
extension type Gamepad.$(_i1.JSObject _) implements _i1.JSObject, _i2.Gamepad {
  /// Property [hapticActuators]
  ///
  /// readonly hapticActuators: readonly GamepadHapticActuator[]
  external _i1.JSArray<_i2.GamepadHapticActuator> get hapticActuators;
}

/// Class [XRInputSourceArray]
extension type XRInputSourceArray._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [length]
  ///
  /// length: number
  external _i1.JSNumber length;

  external void operator []=(
    _i1.JSNumber n,
    _i2.XRInputSource value,
  );
  external _i2.XRInputSource operator [](_i1.JSNumber n);

  /// Method [entries]
  ///
  /// Returns:
  /// - IterableIterator
  external _i3.IterableIterator<_i1.JSArray<_i1.JSAny>> entries();

  /// Method [keys]
  ///
  /// Returns:
  /// - IterableIterator
  external _i3.IterableIterator<_i1.JSNumber> keys();

  /// Method [values]
  ///
  /// Returns:
  /// - IterableIterator
  external _i3.IterableIterator<_i2.XRInputSource> values();

  /// Method [forEach]
  ///
  /// Parameters:
  /// - callbackfn: (value: XRInputSource, index: number, array: XRInputSource[]) => void
  /// - thisArg: any
  ///
  /// Returns:
  /// - void
  external void forEach(
    _i1.JSFunction callbackfn, [
    _i1.JSAny thisArg,
  ]);
}

/// Class [XRPose]
extension type XRPose._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [transform]
  ///
  /// readonly transform: XRRigidTransform
  external _i2.XRRigidTransform get transform;

  /// Property [linearVelocity]
  ///
  /// readonly linearVelocity?: DOMPointReadOnly | undefined
  external _i2.DOMPointReadOnly? get linearVelocity;

  /// Property [angularVelocity]
  ///
  /// readonly angularVelocity?: DOMPointReadOnly | undefined
  external _i2.DOMPointReadOnly? get angularVelocity;

  /// Property [emulatedPosition]
  ///
  /// readonly emulatedPosition: boolean
  external _i1.JSBoolean get emulatedPosition;
}

/// Class [XRFrame]
extension type XRFrame._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [trackedAnchors]
  ///
  /// trackedAnchors?: XRAnchorSet | undefined
  external XRAnchorSet? trackedAnchors;

  /// Property [createAnchor]
  ///
  /// createAnchor?: (pose: XRRigidTransform, space: XRSpace) => Promise | undefined
  external _i1.JSFunction? createAnchor;

  /// Property [getJointPose]
  ///
  /// getJointPose?: (joint: XRJointSpace, baseSpace: XRSpace) => XRJointPose | undefined
  external _i1.JSFunction? getJointPose;

  /// Property [session]
  ///
  /// readonly session: XRSession
  external XRSession get session;

  /// Property [predictedDisplayTime]
  ///
  /// readonly predictedDisplayTime: DOMHighResTimeStamp
  external _i2.DOMHighResTimeStamp get predictedDisplayTime;

  /// Method [getPose]
  ///
  /// Parameters:
  /// - space: XRSpace
  /// - baseSpace: XRSpace
  ///
  /// Returns:
  /// - XRPose | undefined
  external _i2.XRPose? getPose(
    _i2.XRSpace space,
    _i2.XRSpace baseSpace,
  );

  /// Method [getViewerPose]
  ///
  /// Parameters:
  /// - referenceSpace: XRReferenceSpace
  ///
  /// Returns:
  /// - XRViewerPose | undefined
  external _i2.XRViewerPose? getViewerPose(_i2.XRReferenceSpace referenceSpace);

  /// Method [getHitTestResults]
  ///
  /// Parameters:
  /// - hitTestSource: XRHitTestSource
  ///
  /// Returns:
  /// - XRHitTestResult[]
  external _i1.JSArray<XRHitTestResult> getHitTestResults(XRHitTestSource hitTestSource);

  /// Method [getHitTestResultsForTransientInput]
  ///
  /// Parameters:
  /// - hitTestSource: XRTransientInputHitTestSource
  ///
  /// Returns:
  /// - XRTransientInputHitTestResult[]
  external _i1.JSArray<XRTransientInputHitTestResult> getHitTestResultsForTransientInput(
      XRTransientInputHitTestSource hitTestSource);

  /// Property [detectedPlanes]
  ///
  /// readonly detectedPlanes?: XRPlaneSet
  external XRPlaneSet? get detectedPlanes;

  /// Property [detectedMeshes]
  ///
  /// readonly detectedMeshes?: XRMeshSet
  external XRMeshSet? get detectedMeshes;

  /// Method [getDepthInformation]
  ///
  /// Parameters:
  /// - view: XRView
  ///
  /// Returns:
  /// - XRCPUDepthInformation | null | undefined
  external XRCPUDepthInformation? getDepthInformation(XRView view);
}

/// Typedef [XRInputSourceEventType]
///
/// "select" | "selectend" | "selectstart" | "squeeze" | "squeezeend" | "squeezestart"
typedef XRInputSourceEventType = _i1.JSString;

/// Interface [XRInputSourceEventInit]
extension type XRInputSourceEventInit.$(_i1.JSObject _)
    implements _i1.JSObject, _i2.EventInit, _i2.XRInputSourceEventInit {
  /// Property [frame]
  ///
  /// frame?: XRFrame | undefined
  external XRFrame? frame;

  /// Property [inputSource]
  ///
  /// inputSource?: XRInputSource | undefined
  external _i2.XRInputSource? inputSource;
}

/// Class [XRInputSourceEvent]
extension type XRInputSourceEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  /// Constructor
  ///
  /// Parameters:
  /// - type: XRInputSourceEventType
  /// - eventInitDict: XRInputSourceEventInit
  external XRInputSourceEvent(
    XRInputSourceEventType type, [
    _i2.XRInputSourceEventInit eventInitDict,
  ]);

  /// Property [type]
  ///
  /// readonly type: XRInputSourceEventType
  external XRInputSourceEventType get type;

  /// Property [frame]
  ///
  /// readonly frame: XRFrame
  external XRFrame get frame;

  /// Property [inputSource]
  ///
  /// readonly inputSource: XRInputSource
  external _i2.XRInputSource get inputSource;
}

/// Interface [XRInputSourceEventHandler]
extension type XRInputSourceEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Typedef [XRSessionEventType]
///
/// "end" | "visibilitychange" | "frameratechange"
typedef XRSessionEventType = _i1.JSString;

/// Interface [XRSessionEventInit]
extension type XRSessionEventInit.$(_i1.JSObject _) implements _i1.JSObject, _i2.EventInit, _i2.XRSessionEventInit {
  /// Property [session]
  ///
  /// session: XRSession
  external XRSession session;
}

/// Class [XRSessionEvent]
extension type XRSessionEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  /// Constructor
  ///
  /// Parameters:
  /// - type: XRSessionEventType
  /// - eventInitDict: XRSessionEventInit
  external XRSessionEvent(
    XRSessionEventType type, [
    _i2.XRSessionEventInit eventInitDict,
  ]);

  /// Property [session]
  ///
  /// readonly session: XRSession
  external XRSession get session;
}

/// Interface [XRSessionEventHandler]
extension type XRSessionEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Interface [XRSessionInit]
extension type XRSessionInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [optionalFeatures]
  ///
  /// optionalFeatures?: string[] | undefined
  external _i1.JSArray<_i1.JSString>? optionalFeatures;

  /// Property [requiredFeatures]
  ///
  /// requiredFeatures?: string[] | undefined
  external _i1.JSArray<_i1.JSString>? requiredFeatures;
}

/// Interface [XRSessionEventMap]
extension type XRSessionEventMap.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [inputsourceschange]
  ///
  /// inputsourceschange: XRInputSourcesChangeEvent
  external _i2.XRInputSourcesChangeEvent inputsourceschange;

  /// Property [end]
  ///
  /// end: XRSessionEvent
  external _i2.XRSessionEvent end;

  /// Property [visibilitychange]
  ///
  /// visibilitychange: XRSessionEvent
  external _i2.XRSessionEvent visibilitychange;

  /// Property [frameratechange]
  ///
  /// frameratechange: XRSessionEvent
  external _i2.XRSessionEvent frameratechange;

  /// Property [select]
  ///
  /// select: XRInputSourceEvent
  external _i2.XRInputSourceEvent select;

  /// Property [selectstart]
  ///
  /// selectstart: XRInputSourceEvent
  external _i2.XRInputSourceEvent selectstart;

  /// Property [selectend]
  ///
  /// selectend: XRInputSourceEvent
  external _i2.XRInputSourceEvent selectend;

  /// Property [squeeze]
  ///
  /// squeeze: XRInputSourceEvent
  external _i2.XRInputSourceEvent squeeze;

  /// Property [squeezestart]
  ///
  /// squeezestart: XRInputSourceEvent
  external _i2.XRInputSourceEvent squeezestart;

  /// Property [squeezeend]
  ///
  /// squeezeend: XRInputSourceEvent
  external _i2.XRInputSourceEvent squeezeend;
}

/// Class [XRSession]
extension type XRSession._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [requestHitTestSource]
  ///
  /// requestHitTestSource?: (options: XRHitTestOptionsInit) => Promise | undefined
  external _i1.JSFunction? requestHitTestSource;

  /// Property [requestHitTestSourceForTransientInput]
  ///
  /// requestHitTestSourceForTransientInput?: (options: XRTransientInputHitTestOptionsInit) => Promise | undefined
  external _i1.JSFunction? requestHitTestSourceForTransientInput;

  /// Property [requestHitTest]
  ///
  /// requestHitTest?: (ray: XRRay, referenceSpace: XRReferenceSpace) => Promise | undefined
  external _i1.JSFunction? requestHitTest;

  /// Method [initiateRoomCapture]
  ///
  /// Returns:
  /// - Promise
  external _i1.JSPromise initiateRoomCapture();

  /// Property [domOverlayState]
  ///
  /// readonly domOverlayState?: XRDOMOverlayState | undefined
  external XRDOMOverlayState? get domOverlayState;

  /// Property [depthUsage]
  ///
  /// readonly depthUsage?: XRDepthUsage | undefined
  external XRDepthUsage? get depthUsage;

  /// Property [depthDataFormat]
  ///
  /// readonly depthDataFormat?: XRDepthDataFormat | undefined
  external XRDepthDataFormat? get depthDataFormat;
}

/// Class [XRViewerPose]
extension type XRViewerPose._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [views]
  ///
  /// readonly views: readonly XRView[]
  external _i1.JSArray<XRView> get views;
}

/// Class [XRRigidTransform]
extension type XRRigidTransform.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - position: DOMPointInit
  /// - direction: DOMPointInit
  external XRRigidTransform([
    _i2.DOMPointInit position,
    _i2.DOMPointInit direction,
  ]);

  /// Property [position]
  ///
  /// readonly position: DOMPointReadOnly
  external _i2.DOMPointReadOnly get position;

  /// Property [orientation]
  ///
  /// readonly orientation: DOMPointReadOnly
  external _i2.DOMPointReadOnly get orientation;

  /// Property [matrix]
  ///
  /// readonly matrix: Float32Array
  external _i1.JSFloat32Array get matrix;

  /// Property [inverse]
  ///
  /// readonly inverse: XRRigidTransform
  external _i2.XRRigidTransform get inverse;
}

/// Class [XRView]
extension type XRView._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [eye]
  ///
  /// readonly eye: XREye
  external XREye get eye;

  /// Property [projectionMatrix]
  ///
  /// readonly projectionMatrix: Float32Array
  external _i1.JSFloat32Array get projectionMatrix;

  /// Property [transform]
  ///
  /// readonly transform: XRRigidTransform
  external _i2.XRRigidTransform get transform;

  /// Property [recommendedViewportScale]
  ///
  /// readonly recommendedViewportScale?: number | undefined
  external _i1.JSNumber? get recommendedViewportScale;

  /// Method [requestViewportScale]
  ///
  /// Parameters:
  /// - scale: number
  ///
  /// Returns:
  /// - void
  external void requestViewportScale(_i1.JSNumber scale);
}

/// Interface [XRInputSourcesChangeEvent]
extension type XRInputSourcesChangeEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.XRSessionEvent {
  /// Property [removed]
  ///
  /// readonly removed: readonly XRInputSource[]
  external _i1.JSArray<_i2.XRInputSource> get removed;

  /// Property [added]
  ///
  /// readonly added: readonly XRInputSource[]
  external _i1.JSArray<_i2.XRInputSource> get added;
}

/// Interface [XRInputSourcesChangeEventHandler]
extension type XRInputSourcesChangeEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Typedef [XRAnchorSet]
///
/// Set
typedef XRAnchorSet = Set<XRAnchor>;

/// Class [XRAnchor]
extension type XRAnchor._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [anchorSpace]
  ///
  /// anchorSpace: XRSpace
  external _i2.XRSpace anchorSpace;

  /// Method [delete]
  ///
  /// Returns:
  /// - void
  external void delete();
}

/// Class [XRRay]
extension type XRRay.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - transformOrOrigin: XRRigidTransform | DOMPointInit
  /// - direction: DOMPointInit
  external XRRay([
    _i1.JSAny transformOrOrigin,
    _i2.DOMPointInit direction,
  ]);

  /// Property [origin]
  ///
  /// readonly origin: DOMPointReadOnly
  external _i2.DOMPointReadOnly get origin;

  /// Property [direction]
  ///
  /// readonly direction: DOMPointReadOnly
  external _i2.DOMPointReadOnly get direction;

  /// Property [matrix]
  ///
  /// readonly matrix: Float32Array
  external _i1.JSFloat32Array get matrix;
}

/// Typedef [XRHitTestTrackableType]
///
/// "point" | "plane" | "mesh"
typedef XRHitTestTrackableType = _i1.JSString;

/// Class [XRTransientInputHitTestResult]
extension type XRTransientInputHitTestResult.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [prototype]
  ///
  /// prototype: XRTransientInputHitTestResult
  external XRTransientInputHitTestResult prototype;

  /// Property [inputSource]
  ///
  /// readonly inputSource: XRInputSource
  external _i2.XRInputSource get inputSource;

  /// Property [results]
  ///
  /// readonly results: readonly XRHitTestResult[]
  external _i1.JSArray<XRHitTestResult> get results;
}

/// Class [XRHitTestResult]
extension type XRHitTestResult._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [createAnchor]
  ///
  /// createAnchor?: (pose: XRRigidTransform) => Promise | undefined
  external _i1.JSFunction? createAnchor;

  /// Method [getPose]
  ///
  /// Parameters:
  /// - baseSpace: XRSpace
  ///
  /// Returns:
  /// - XRPose | undefined
  external _i2.XRPose? getPose(_i2.XRSpace baseSpace);
}

/// Class [XRHitTestSource]
extension type XRHitTestSource._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [cancel]
  ///
  /// Returns:
  /// - void
  external void cancel();
}

/// Class [XRTransientInputHitTestSource]
extension type XRTransientInputHitTestSource._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [cancel]
  ///
  /// Returns:
  /// - void
  external void cancel();
}

/// Interface [XRHitTestOptionsInit]
extension type XRHitTestOptionsInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [space]
  ///
  /// space: XRSpace
  external _i2.XRSpace space;

  /// Property [entityTypes]
  ///
  /// entityTypes?: XRHitTestTrackableType[] | undefined
  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  /// Property [offsetRay]
  ///
  /// offsetRay?: XRRay | undefined
  external XRRay? offsetRay;
}

/// Interface [XRTransientInputHitTestOptionsInit]
extension type XRTransientInputHitTestOptionsInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [profile]
  ///
  /// profile: string
  external _i1.JSString profile;

  /// Property [entityTypes]
  ///
  /// entityTypes?: XRHitTestTrackableType[] | undefined
  external _i1.JSArray<XRHitTestTrackableType>? entityTypes;

  /// Property [offsetRay]
  ///
  /// offsetRay?: XRRay | undefined
  external XRRay? offsetRay;
}

/// Interface [XRHitResult]
extension type XRHitResult.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [hitMatrix]
  ///
  /// hitMatrix: Float32Array
  external _i1.JSFloat32Array hitMatrix;
}

/// Typedef [XRPlaneSet]
///
/// Set
typedef XRPlaneSet = Set<XRPlane>;

/// Typedef [XRPlaneOrientation]
///
/// "horizontal" | "vertical"
typedef XRPlaneOrientation = _i1.JSString;

/// Class [XRPlane]
extension type XRPlane._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [orientation]
  ///
  /// orientation: XRPlaneOrientation
  external XRPlaneOrientation orientation;

  /// Property [planeSpace]
  ///
  /// planeSpace: XRSpace
  external _i2.XRSpace planeSpace;

  /// Property [polygon]
  ///
  /// polygon: DOMPointReadOnly[]
  external _i1.JSArray<_i2.DOMPointReadOnly> polygon;

  /// Property [lastChangedTime]
  ///
  /// lastChangedTime: DOMHighResTimeStamp
  external _i2.DOMHighResTimeStamp lastChangedTime;
}

/// Typedef [XRMeshSet]
///
/// Set
typedef XRMeshSet = Set<XRMesh>;

/// Class [XRMesh]
extension type XRMesh._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [meshSpace]
  ///
  /// meshSpace: XRSpace
  external _i2.XRSpace meshSpace;

  /// Property [vertices]
  ///
  /// vertices: Float32Array
  external _i1.JSFloat32Array vertices;

  /// Property [indices]
  ///
  /// indices: Uint32Array
  external _i1.JSUint32Array indices;

  /// Property [lastChangedTime]
  ///
  /// lastChangedTime: DOMHighResTimeStamp
  external _i2.DOMHighResTimeStamp lastChangedTime;

  /// Property [semanticLabel]
  ///
  /// semanticLabel?: string
  external _i1.JSString? semanticLabel;
}

/// Typedef [XRHandJoint]
///
/// "wrist" | "thumb-metacarpal" | "thumb-phalanx-proximal" | "thumb-phalanx-distal" | "thumb-tip" | "index-finger-metacarpal" | "index-finger-phalanx-proximal" | "index-finger-phalanx-intermediate" | "index-finger-phalanx-distal" | "index-finger-tip" | "middle-finger-metacarpal" | "middle-finger-phalanx-proximal" | "middle-finger-phalanx-intermediate" | "middle-finger-phalanx-distal" | "middle-finger-tip" | "ring-finger-metacarpal" | "ring-finger-phalanx-proximal" | "ring-finger-phalanx-intermediate" | "ring-finger-phalanx-distal" | "ring-finger-tip" | "pinky-finger-metacarpal" | "pinky-finger-phalanx-proximal" | "pinky-finger-phalanx-intermediate" | "pinky-finger-phalanx-distal" | "pinky-finger-tip"
typedef XRHandJoint = _i1.JSString;

/// Class [XRJointSpace]
extension type XRJointSpace._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [jointName]
  ///
  /// readonly jointName: XRHandJoint
  external _i2.XRHandJoint get jointName;
}

/// Class [XRJointPose]
extension type XRJointPose._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [radius]
  ///
  /// readonly radius: number | undefined
  external _i1.JSNumber get radius;
}

/// Class [XRHand]
extension type XRHand._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [WRIST]
  ///
  /// readonly WRIST: number
  external _i1.JSNumber get WRIST;

  /// Property [THUMB_METACARPAL]
  ///
  /// readonly THUMB_METACARPAL: number
  external _i1.JSNumber get THUMB_METACARPAL;

  /// Property [THUMB_PHALANX_PROXIMAL]
  ///
  /// readonly THUMB_PHALANX_PROXIMAL: number
  external _i1.JSNumber get THUMB_PHALANX_PROXIMAL;

  /// Property [THUMB_PHALANX_DISTAL]
  ///
  /// readonly THUMB_PHALANX_DISTAL: number
  external _i1.JSNumber get THUMB_PHALANX_DISTAL;

  /// Property [THUMB_PHALANX_TIP]
  ///
  /// readonly THUMB_PHALANX_TIP: number
  external _i1.JSNumber get THUMB_PHALANX_TIP;

  /// Property [INDEX_METACARPAL]
  ///
  /// readonly INDEX_METACARPAL: number
  external _i1.JSNumber get INDEX_METACARPAL;

  /// Property [INDEX_PHALANX_PROXIMAL]
  ///
  /// readonly INDEX_PHALANX_PROXIMAL: number
  external _i1.JSNumber get INDEX_PHALANX_PROXIMAL;

  /// Property [INDEX_PHALANX_INTERMEDIATE]
  ///
  /// readonly INDEX_PHALANX_INTERMEDIATE: number
  external _i1.JSNumber get INDEX_PHALANX_INTERMEDIATE;

  /// Property [INDEX_PHALANX_DISTAL]
  ///
  /// readonly INDEX_PHALANX_DISTAL: number
  external _i1.JSNumber get INDEX_PHALANX_DISTAL;

  /// Property [INDEX_PHALANX_TIP]
  ///
  /// readonly INDEX_PHALANX_TIP: number
  external _i1.JSNumber get INDEX_PHALANX_TIP;

  /// Property [MIDDLE_METACARPAL]
  ///
  /// readonly MIDDLE_METACARPAL: number
  external _i1.JSNumber get MIDDLE_METACARPAL;

  /// Property [MIDDLE_PHALANX_PROXIMAL]
  ///
  /// readonly MIDDLE_PHALANX_PROXIMAL: number
  external _i1.JSNumber get MIDDLE_PHALANX_PROXIMAL;

  /// Property [MIDDLE_PHALANX_INTERMEDIATE]
  ///
  /// readonly MIDDLE_PHALANX_INTERMEDIATE: number
  external _i1.JSNumber get MIDDLE_PHALANX_INTERMEDIATE;

  /// Property [MIDDLE_PHALANX_DISTAL]
  ///
  /// readonly MIDDLE_PHALANX_DISTAL: number
  external _i1.JSNumber get MIDDLE_PHALANX_DISTAL;

  /// Property [MIDDLE_PHALANX_TIP]
  ///
  /// readonly MIDDLE_PHALANX_TIP: number
  external _i1.JSNumber get MIDDLE_PHALANX_TIP;

  /// Property [RING_METACARPAL]
  ///
  /// readonly RING_METACARPAL: number
  external _i1.JSNumber get RING_METACARPAL;

  /// Property [RING_PHALANX_PROXIMAL]
  ///
  /// readonly RING_PHALANX_PROXIMAL: number
  external _i1.JSNumber get RING_PHALANX_PROXIMAL;

  /// Property [RING_PHALANX_INTERMEDIATE]
  ///
  /// readonly RING_PHALANX_INTERMEDIATE: number
  external _i1.JSNumber get RING_PHALANX_INTERMEDIATE;

  /// Property [RING_PHALANX_DISTAL]
  ///
  /// readonly RING_PHALANX_DISTAL: number
  external _i1.JSNumber get RING_PHALANX_DISTAL;

  /// Property [RING_PHALANX_TIP]
  ///
  /// readonly RING_PHALANX_TIP: number
  external _i1.JSNumber get RING_PHALANX_TIP;

  /// Property [LITTLE_METACARPAL]
  ///
  /// readonly LITTLE_METACARPAL: number
  external _i1.JSNumber get LITTLE_METACARPAL;

  /// Property [LITTLE_PHALANX_PROXIMAL]
  ///
  /// readonly LITTLE_PHALANX_PROXIMAL: number
  external _i1.JSNumber get LITTLE_PHALANX_PROXIMAL;

  /// Property [LITTLE_PHALANX_INTERMEDIATE]
  ///
  /// readonly LITTLE_PHALANX_INTERMEDIATE: number
  external _i1.JSNumber get LITTLE_PHALANX_INTERMEDIATE;

  /// Property [LITTLE_PHALANX_DISTAL]
  ///
  /// readonly LITTLE_PHALANX_DISTAL: number
  external _i1.JSNumber get LITTLE_PHALANX_DISTAL;

  /// Property [LITTLE_PHALANX_TIP]
  ///
  /// readonly LITTLE_PHALANX_TIP: number
  external _i1.JSNumber get LITTLE_PHALANX_TIP;
}

/// Class [XRLayer]
extension type XRLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRWebGLLayerInit]
extension type XRWebGLLayerInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [antialias]
  ///
  /// antialias?: boolean | undefined
  external _i1.JSBoolean? antialias;

  /// Property [depth]
  ///
  /// depth?: boolean | undefined
  external _i1.JSBoolean? depth;

  /// Property [stencil]
  ///
  /// stencil?: boolean | undefined
  external _i1.JSBoolean? stencil;

  /// Property [alpha]
  ///
  /// alpha?: boolean | undefined
  external _i1.JSBoolean? alpha;

  /// Property [ignoreDepthValues]
  ///
  /// ignoreDepthValues?: boolean | undefined
  external _i1.JSBoolean? ignoreDepthValues;

  /// Property [framebufferScaleFactor]
  ///
  /// framebufferScaleFactor?: number | undefined
  external _i1.JSNumber? framebufferScaleFactor;
}

/// Class [XRWebGLLayer]
extension type XRWebGLLayer.$(_i1.JSObject _) implements _i1.JSObject, XRLayer {
  /// Constructor
  ///
  /// Parameters:
  /// - session: XRSession
  /// - context: WebGLRenderingContext | WebGL2RenderingContext
  /// - layerInit: XRWebGLLayerInit
  external XRWebGLLayer(
    XRSession session,
    _i1.JSAny context, [
    XRWebGLLayerInit layerInit,
  ]);

  /// Property [fixedFoveation]
  ///
  /// fixedFoveation?: number | undefined
  external _i1.JSNumber? fixedFoveation;

  /// Method [getNativeFramebufferScaleFactor]
  ///
  /// Parameters:
  /// - session: XRSession
  external static _i1.JSNumber getNativeFramebufferScaleFactor(XRSession session);

  /// Property [antialias]
  ///
  /// readonly antialias: boolean
  external _i1.JSBoolean get antialias;

  /// Property [ignoreDepthValues]
  ///
  /// readonly ignoreDepthValues: boolean
  external _i1.JSBoolean get ignoreDepthValues;

  /// Property [framebuffer]
  ///
  /// readonly framebuffer: WebGLFramebuffer
  external _i2.WebGLFramebuffer get framebuffer;

  /// Property [framebufferWidth]
  ///
  /// readonly framebufferWidth: number
  external _i1.JSNumber get framebufferWidth;

  /// Property [framebufferHeight]
  ///
  /// readonly framebufferHeight: number
  external _i1.JSNumber get framebufferHeight;

  /// Method [getViewport]
  ///
  /// Parameters:
  /// - view: XRView
  external _i2.XRViewport? getViewport(XRView view);
}

/// Typedef [XRLayerEventType]
///
/// "redraw"
typedef XRLayerEventType = _i1.JSString;

/// Interface [XRLayerEvent]
extension type XRLayerEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  /// Property [type]
  ///
  /// readonly type: XRLayerEventType
  external XRLayerEventType get type;

  /// Property [layer]
  ///
  /// readonly layer: XRLayer
  external XRLayer get layer;
}

/// Interface [XRCompositionLayerEventMap]
extension type XRCompositionLayerEventMap.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [redraw]
  ///
  /// redraw: XRLayerEvent
  external XRLayerEvent redraw;
}

/// Class [XRCompositionLayer]
extension type XRCompositionLayer._(_i1.JSObject _) implements _i1.JSObject {}

/// Typedef [XRTextureType]
///
/// "texture" | "texture-array"
typedef XRTextureType = _i1.JSString;

/// Typedef [XRLayerLayout]
///
/// "default" | "mono" | "stereo" | "stereo-left-right" | "stereo-top-bottom"
typedef XRLayerLayout = _i1.JSString;

/// Typedef [XRLayerQuality]
///
/// "default" | "text-optimized" | "graphics-optimized"
typedef XRLayerQuality = _i1.JSString;

/// Interface [XRProjectionLayerInit]
extension type XRProjectionLayerInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [scaleFactor]
  ///
  /// scaleFactor?: number | undefined
  external _i1.JSNumber? scaleFactor;

  /// Property [textureType]
  ///
  /// textureType?: XRTextureType | undefined
  external XRTextureType? textureType;

  /// Property [colorFormat]
  ///
  /// colorFormat?: GLenum | undefined
  external _i2.GLenum? colorFormat;

  /// Property [depthFormat]
  ///
  /// depthFormat?: GLenum | undefined
  external _i2.GLenum? depthFormat;
}

/// Class [XRProjectionLayer]
extension type XRProjectionLayer._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [fixedFoveation]
  ///
  /// fixedFoveation: number
  external _i1.JSNumber fixedFoveation;

  /// Property [textureWidth]
  ///
  /// readonly textureWidth: number
  external _i1.JSNumber get textureWidth;

  /// Property [textureHeight]
  ///
  /// readonly textureHeight: number
  external _i1.JSNumber get textureHeight;

  /// Property [textureArrayLength]
  ///
  /// readonly textureArrayLength: number
  external _i1.JSNumber get textureArrayLength;

  /// Property [ignoreDepthValues]
  ///
  /// readonly ignoreDepthValues: number
  external _i1.JSNumber get ignoreDepthValues;
}

/// Interface [XRLayerInit]
extension type XRLayerInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [mipLevels]
  ///
  /// mipLevels?: number | undefined
  external _i1.JSNumber? mipLevels;

  /// Property [viewPixelWidth]
  ///
  /// viewPixelWidth: number
  external _i1.JSNumber viewPixelWidth;

  /// Property [viewPixelHeight]
  ///
  /// viewPixelHeight: number
  external _i1.JSNumber viewPixelHeight;

  /// Property [isStatic]
  ///
  /// isStatic?: boolean | undefined
  external _i1.JSBoolean? isStatic;

  /// Property [colorFormat]
  ///
  /// colorFormat?: GLenum | undefined
  external _i2.GLenum? colorFormat;

  /// Property [depthFormat]
  ///
  /// depthFormat?: GLenum | undefined
  external _i2.GLenum? depthFormat;

  /// Property [space]
  ///
  /// space: XRSpace
  external _i2.XRSpace space;

  /// Property [layout]
  ///
  /// layout?: XRLayerLayout | undefined
  external XRLayerLayout? layout;
}

/// Interface [XRMediaLayerInit]
extension type XRMediaLayerInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [invertStereo]
  ///
  /// invertStereo?: boolean | undefined
  external _i1.JSBoolean? invertStereo;

  /// Property [space]
  ///
  /// space: XRSpace
  external _i2.XRSpace space;

  /// Property [layout]
  ///
  /// layout?: XRLayerLayout | undefined
  external XRLayerLayout? layout;
}

/// Interface [XRCylinderLayerInit]
extension type XRCylinderLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  /// Property [textureType]
  ///
  /// textureType?: XRTextureType | undefined
  external XRTextureType? textureType;

  /// Property [transform]
  ///
  /// transform: XRRigidTransform
  external _i2.XRRigidTransform transform;

  /// Property [radius]
  ///
  /// radius?: number | undefined
  external _i1.JSNumber? radius;

  /// Property [centralAngle]
  ///
  /// centralAngle?: number | undefined
  external _i1.JSNumber? centralAngle;

  /// Property [aspectRatio]
  ///
  /// aspectRatio?: number | undefined
  external _i1.JSNumber? aspectRatio;
}

/// Interface [XRMediaCylinderLayerInit]
extension type XRMediaCylinderLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;

  /// Property [radius]
  ///
  /// radius?: number | undefined
  external _i1.JSNumber? radius;

  /// Property [centralAngle]
  ///
  /// centralAngle?: number | undefined
  external _i1.JSNumber? centralAngle;

  /// Property [aspectRatio]
  ///
  /// aspectRatio?: number | undefined
  external _i1.JSNumber? aspectRatio;
}

/// Class [XRCylinderLayer]
extension type XRCylinderLayer._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [transform]
  ///
  /// transform: XRRigidTransform
  external _i2.XRRigidTransform transform;

  /// Property [radius]
  ///
  /// radius: number
  external _i1.JSNumber radius;

  /// Property [centralAngle]
  ///
  /// centralAngle: number
  external _i1.JSNumber centralAngle;

  /// Property [aspectRatio]
  ///
  /// aspectRatio: number
  external _i1.JSNumber aspectRatio;
}

/// Interface [XRQuadLayerInit]
extension type XRQuadLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  /// Property [textureType]
  ///
  /// textureType?: XRTextureType | undefined
  external XRTextureType? textureType;

  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;

  /// Property [width]
  ///
  /// width?: number | undefined
  external _i1.JSNumber? width;

  /// Property [height]
  ///
  /// height?: number | undefined
  external _i1.JSNumber? height;
}

/// Interface [XRMediaQuadLayerInit]
extension type XRMediaQuadLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;

  /// Property [width]
  ///
  /// width?: number | undefined
  external _i1.JSNumber? width;

  /// Property [height]
  ///
  /// height?: number | undefined
  external _i1.JSNumber? height;
}

/// Class [XRQuadLayer]
extension type XRQuadLayer._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [transform]
  ///
  /// transform: XRRigidTransform
  external _i2.XRRigidTransform transform;

  /// Property [width]
  ///
  /// width: number
  external _i1.JSNumber width;

  /// Property [height]
  ///
  /// height: number
  external _i1.JSNumber height;
}

/// Interface [XREquirectLayerInit]
extension type XREquirectLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  /// Property [textureType]
  ///
  /// textureType?: XRTextureType | undefined
  external XRTextureType? textureType;

  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;

  /// Property [radius]
  ///
  /// radius?: number | undefined
  external _i1.JSNumber? radius;

  /// Property [centralHorizontalAngle]
  ///
  /// centralHorizontalAngle?: number | undefined
  external _i1.JSNumber? centralHorizontalAngle;

  /// Property [upperVerticalAngle]
  ///
  /// upperVerticalAngle?: number | undefined
  external _i1.JSNumber? upperVerticalAngle;

  /// Property [lowerVerticalAngle]
  ///
  /// lowerVerticalAngle?: number | undefined
  external _i1.JSNumber? lowerVerticalAngle;
}

/// Interface [XRMediaEquirectLayerInit]
extension type XRMediaEquirectLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRMediaLayerInit {
  /// Property [transform]
  ///
  /// transform?: XRRigidTransform | undefined
  external _i2.XRRigidTransform? transform;

  /// Property [radius]
  ///
  /// radius?: number | undefined
  external _i1.JSNumber? radius;

  /// Property [centralHorizontalAngle]
  ///
  /// centralHorizontalAngle?: number | undefined
  external _i1.JSNumber? centralHorizontalAngle;

  /// Property [upperVerticalAngle]
  ///
  /// upperVerticalAngle?: number | undefined
  external _i1.JSNumber? upperVerticalAngle;

  /// Property [lowerVerticalAngle]
  ///
  /// lowerVerticalAngle?: number | undefined
  external _i1.JSNumber? lowerVerticalAngle;
}

/// Class [XREquirectLayer]
extension type XREquirectLayer._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [transform]
  ///
  /// transform: XRRigidTransform
  external _i2.XRRigidTransform transform;

  /// Property [radius]
  ///
  /// radius: number
  external _i1.JSNumber radius;

  /// Property [centralHorizontalAngle]
  ///
  /// centralHorizontalAngle: number
  external _i1.JSNumber centralHorizontalAngle;

  /// Property [upperVerticalAngle]
  ///
  /// upperVerticalAngle: number
  external _i1.JSNumber upperVerticalAngle;

  /// Property [lowerVerticalAngle]
  ///
  /// lowerVerticalAngle: number
  external _i1.JSNumber lowerVerticalAngle;
}

/// Interface [XRCubeLayerInit]
extension type XRCubeLayerInit.$(_i1.JSObject _) implements _i1.JSObject, XRLayerInit {
  /// Property [orientation]
  ///
  /// orientation?: DOMPointReadOnly | undefined
  external _i2.DOMPointReadOnly? orientation;
}

/// Class [XRCubeLayer]
extension type XRCubeLayer._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [orientation]
  ///
  /// orientation: DOMPointReadOnly
  external _i2.DOMPointReadOnly orientation;
}

/// Class [XRSubImage]
extension type XRSubImage._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [viewport]
  ///
  /// readonly viewport: XRViewport
  external _i2.XRViewport get viewport;
}

/// Class [XRWebGLSubImage]
extension type XRWebGLSubImage._(_i1.JSObject _) implements _i1.JSObject {
  /// Property [colorTexture]
  ///
  /// readonly colorTexture: WebGLTexture
  external _i2.WebGLTexture get colorTexture;

  /// Property [depthStencilTexture]
  ///
  /// readonly depthStencilTexture: WebGLTexture
  external _i2.WebGLTexture get depthStencilTexture;

  /// Property [imageIndex]
  ///
  /// readonly imageIndex: number
  external _i1.JSNumber get imageIndex;

  /// Property [textureWidth]
  ///
  /// readonly textureWidth: number
  external _i1.JSNumber get textureWidth;

  /// Property [textureHeight]
  ///
  /// readonly textureHeight: number
  external _i1.JSNumber get textureHeight;
}

/// Class [XRWebGLBinding]
extension type XRWebGLBinding.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - session: XRSession
  /// - context: WebGLRenderingContext
  external XRWebGLBinding(
    XRSession session,
    _i2.WebGLRenderingContext context,
  );

  /// Property [nativeProjectionScaleFactor]
  ///
  /// readonly nativeProjectionScaleFactor: number
  external _i1.JSNumber get nativeProjectionScaleFactor;

  /// Method [createProjectionLayer]
  ///
  /// Parameters:
  /// - init: XRProjectionLayerInit
  external XRProjectionLayer createProjectionLayer([XRProjectionLayerInit init]);

  /// Method [createQuadLayer]
  ///
  /// Parameters:
  /// - init: XRQuadLayerInit
  external XRQuadLayer createQuadLayer([XRQuadLayerInit init]);

  /// Method [createCylinderLayer]
  ///
  /// Parameters:
  /// - init: XRCylinderLayerInit
  external XRCylinderLayer createCylinderLayer([XRCylinderLayerInit init]);

  /// Method [createEquirectLayer]
  ///
  /// Parameters:
  /// - init: XREquirectLayerInit
  external XREquirectLayer createEquirectLayer([XREquirectLayerInit init]);

  /// Method [createCubeLayer]
  ///
  /// Parameters:
  /// - init: XRCubeLayerInit
  external XRCubeLayer createCubeLayer([XRCubeLayerInit init]);

  /// Method [getSubImage]
  ///
  /// Parameters:
  /// - layer: XRCompositionLayer
  /// - frame: XRFrame
  /// - eye: XREye
  external XRWebGLSubImage getSubImage(
    XRCompositionLayer layer,
    XRFrame frame, [
    XREye eye,
  ]);

  /// Method [getViewSubImage]
  ///
  /// Parameters:
  /// - layer: XRProjectionLayer
  /// - view: XRView
  external XRWebGLSubImage getViewSubImage(
    XRProjectionLayer layer,
    XRView view,
  );

  /// Method [getDepthInformation]
  ///
  /// Parameters:
  /// - view: XRView
  ///
  /// Returns:
  /// - XRWebGLDepthInformation | null | undefined
  external XRWebGLDepthInformation? getDepthInformation(XRView view);
}

/// Class [XRMediaBinding]
extension type XRMediaBinding.$(_i1.JSObject _) implements _i1.JSObject {
  /// Constructor
  ///
  /// Parameters:
  /// - sesion: XRSession
  external XRMediaBinding(XRSession sesion);

  /// Method [createQuadLayer]
  ///
  /// Parameters:
  /// - video: HTMLVideoElement
  /// - init: XRMediaQuadLayerInit
  external XRQuadLayer createQuadLayer(
    _i2.HTMLVideoElement video, [
    XRMediaQuadLayerInit init,
  ]);

  /// Method [createCylinderLayer]
  ///
  /// Parameters:
  /// - video: HTMLVideoElement
  /// - init: XRMediaCylinderLayerInit
  external XRCylinderLayer createCylinderLayer(
    _i2.HTMLVideoElement video, [
    XRMediaCylinderLayerInit init,
  ]);

  /// Method [createEquirectLayer]
  ///
  /// Parameters:
  /// - video: HTMLVideoElement
  /// - init: XRMediaEquirectLayerInit
  external XREquirectLayer createEquirectLayer(
    _i2.HTMLVideoElement video, [
    XRMediaEquirectLayerInit init,
  ]);
}

/// enum XOVR_multiview2
extension type XOVR_multiview2(_i1.JSObject _) implements _i1.JSObject {
  /// member FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = 0x9630
  external _i1.JSNumber FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR;

  /// member FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR = 0x9632
  external _i1.JSNumber FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR;

  /// member MAX_VIEWS_OVR = 0x9631
  external _i1.JSNumber MAX_VIEWS_OVR;

  /// member FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR = 0x9633
  external _i1.JSNumber FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR;

  external _i1.JSString operator [](_i1.JSAny value);
}

/// Class [OVR_multiview2]
extension type OVR_multiview2._(_i1.JSObject _) implements _i1.JSObject {}

/// Interface [XRSessionGrant]
extension type XRSessionGrant.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [mode]
  ///
  /// mode: XRSessionMode
  external XRSessionMode mode;
}

/// Interface [XRSystemSessionGrantedEvent]
extension type XRSystemSessionGrantedEvent.$(_i1.JSObject _) implements _i1.JSObject, _i2.Event {
  /// Property [type]
  ///
  /// type: "sessiongranted"
  external _i1.JSString type;

  /// Property [session]
  ///
  /// session: XRSessionGrant
  external XRSessionGrant session;
}

/// Interface [XRSystemSessionGrantedEventHandler]
extension type XRSystemSessionGrantedEventHandler.$(_i1.JSFunction _) implements _i1.JSFunction {}

/// Class [OCULUS_multiview]
extension type OCULUS_multiview._(_i1.JSObject _) implements _i1.JSObject {
  /// Method [framebufferTextureMultisampleMultiviewOVR]
  ///
  /// Parameters:
  /// - target: GLenum
  /// - attachment: GLenum
  /// - texture: WebGLTexture | null
  /// - level: GLint
  /// - samples: GLsizei
  /// - baseViewIndex: GLint
  /// - numViews: GLsizei
  ///
  /// Returns:
  /// - void
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
extension type GlobalEventHandlersEventMap.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [beforexrselect]
  ///
  /// beforexrselect: XRSessionEvent
  external _i2.XRSessionEvent beforexrselect;
}

/// Interface [GlobalEventHandlers]
extension type GlobalEventHandlers.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [onbeforexrselect]
  ///
  /// onbeforexrselect: ((this: GlobalEventHandlers, ev: XRSessionEvent) => any) | null
  external _i1.JSFunction onbeforexrselect;
}

/// Interface [XRDOMOverlayInit]
extension type XRDOMOverlayInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [root]
  ///
  /// root: Element
  external _i2.Element root;
}

/// Typedef [XRDOMOverlayType]
///
/// "screen" | "floating" | "head-locked"
typedef XRDOMOverlayType = _i1.JSString;

/// Interface [XRDOMOverlayState]
extension type XRDOMOverlayState.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [type]
  ///
  /// type: XRDOMOverlayType
  external XRDOMOverlayType type;
}

/// Typedef [XRDepthUsage]
///
/// "cpu-optimized" | "gpu-optimized"
typedef XRDepthUsage = _i1.JSString;

/// Typedef [XRDepthDataFormat]
///
/// "luminance-alpha" | "float32" | "unsigned-short"
typedef XRDepthDataFormat = _i1.JSString;

/// Interface [XRDepthStateInit]
extension type XRDepthStateInit.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [usagePreference]
  ///
  /// usagePreference: XRDepthUsage[]
  external _i1.JSArray<XRDepthUsage> usagePreference;

  /// Property [dataFormatPreference]
  ///
  /// dataFormatPreference: XRDepthDataFormat[]
  external _i1.JSArray<XRDepthDataFormat> dataFormatPreference;
}

/// Interface [XRDepthInformation]
extension type XRDepthInformation.$(_i1.JSObject _) implements _i1.JSObject {
  /// Property [width]
  ///
  /// readonly width: number
  external _i1.JSNumber get width;

  /// Property [height]
  ///
  /// readonly height: number
  external _i1.JSNumber get height;

  /// Property [normDepthBufferFromNormView]
  ///
  /// readonly normDepthBufferFromNormView: XRRigidTransform
  external _i2.XRRigidTransform get normDepthBufferFromNormView;

  /// Property [rawValueToMeters]
  ///
  /// readonly rawValueToMeters: number
  external _i1.JSNumber get rawValueToMeters;
}

/// Interface [XRCPUDepthInformation]
extension type XRCPUDepthInformation.$(_i1.JSObject _) implements _i1.JSObject, XRDepthInformation {
  /// Property [data]
  ///
  /// readonly data: ArrayBuffer
  external _i1.JSArrayBuffer get data;

  /// Method [getDepthInMeters]
  ///
  /// Parameters:
  /// - x: number
  /// - y: number
  ///
  /// Returns:
  /// - number
  external _i1.JSNumber getDepthInMeters(
    _i1.JSNumber x,
    _i1.JSNumber y,
  );
}

/// Interface [XRWebGLDepthInformation]
extension type XRWebGLDepthInformation.$(_i1.JSObject _) implements _i1.JSObject, XRDepthInformation {
  /// Property [texture]
  ///
  /// readonly texture: WebGLTexture
  external _i2.WebGLTexture get texture;

  /// Property [textureType]
  ///
  /// readonly textureType: XRTextureType
  external XRTextureType get textureType;

  /// Property [imageIndex]
  ///
  /// readonly imageIndex?: number | null | undefined
  external _i1.JSNumber? get imageIndex;
}
