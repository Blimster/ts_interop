// ignore_for_file: avoid_shadowing_type_parameters, camel_case_types
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_library_name

library three;// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;import 'package:es2023/es2023.dart' as _i2;import 'package:web/web.dart' as _i3;import 'package:webxr/webxr.dart' as _i4;/// Class [AnimationAction]
extension type AnimationAction.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - mixer: AnimationMixer
/// - clip: AnimationClip
/// - localRoot: Object3D | null
/// - blendMode: AnimationBlendMode
external AnimationAction(AnimationMixer mixer, AnimationClip clip, [Object3D<Object3DEventMap>? localRoot, AnimationBlendMode blendMode, ]);

/// Property [blendMode]
///
/// blendMode: AnimationBlendMode
external AnimationBlendMode blendMode;

/// Property [loop]
///
/// loop: AnimationActionLoopStyles
external AnimationActionLoopStyles loop;

/// Property [time]
///
/// time: number
external _i1.JSNumber time;

/// Property [timeScale]
///
/// timeScale: number
external _i1.JSNumber timeScale;

/// Property [weight]
///
/// weight: number
external _i1.JSNumber weight;

/// Property [repetitions]
///
/// repetitions: number
external _i1.JSNumber repetitions;

/// Property [paused]
///
/// paused: boolean
external _i1.JSBoolean paused;

/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [clampWhenFinished]
///
/// clampWhenFinished: boolean
external _i1.JSBoolean clampWhenFinished;

/// Property [zeroSlopeAtStart]
///
/// zeroSlopeAtStart: boolean
external _i1.JSBoolean zeroSlopeAtStart;

/// Property [zeroSlopeAtEnd]
///
/// zeroSlopeAtEnd: boolean
external _i1.JSBoolean zeroSlopeAtEnd;

/// Method [play]
external AnimationAction play();
/// Method [stop]
external AnimationAction stop();
/// Method [reset]
external AnimationAction reset();
/// Method [isRunning]
external _i1.JSBoolean isRunning();
/// Method [isScheduled]
external _i1.JSBoolean isScheduled();
/// Method [startAt]
///
/// Parameters:
/// - time: number
external AnimationAction startAt(_i1.JSNumber time);
/// Method [setLoop]
///
/// Parameters:
/// - mode: AnimationActionLoopStyles
/// - repetitions: number
external AnimationAction setLoop(AnimationActionLoopStyles mode, _i1.JSNumber repetitions, );
/// Method [setEffectiveWeight]
///
/// Parameters:
/// - weight: number
external AnimationAction setEffectiveWeight(_i1.JSNumber weight);
/// Method [getEffectiveWeight]
external _i1.JSNumber getEffectiveWeight();
/// Method [fadeIn]
///
/// Parameters:
/// - duration: number
external AnimationAction fadeIn(_i1.JSNumber duration);
/// Method [fadeOut]
///
/// Parameters:
/// - duration: number
external AnimationAction fadeOut(_i1.JSNumber duration);
/// Method [crossFadeFrom]
///
/// Parameters:
/// - fadeOutAction: AnimationAction
/// - duration: number
/// - warp: boolean
external AnimationAction crossFadeFrom(AnimationAction fadeOutAction, _i1.JSNumber duration, [_i1.JSBoolean warp, ]);
/// Method [crossFadeTo]
///
/// Parameters:
/// - fadeInAction: AnimationAction
/// - duration: number
/// - warp: boolean
external AnimationAction crossFadeTo(AnimationAction fadeInAction, _i1.JSNumber duration, [_i1.JSBoolean warp, ]);
/// Method [stopFading]
external AnimationAction stopFading();
/// Method [setEffectiveTimeScale]
///
/// Parameters:
/// - timeScale: number
external AnimationAction setEffectiveTimeScale(_i1.JSNumber timeScale);
/// Method [getEffectiveTimeScale]
external _i1.JSNumber getEffectiveTimeScale();
/// Method [setDuration]
///
/// Parameters:
/// - duration: number
external AnimationAction setDuration(_i1.JSNumber duration);
/// Method [syncWith]
///
/// Parameters:
/// - action: AnimationAction
external AnimationAction syncWith(AnimationAction action);
/// Method [halt]
///
/// Parameters:
/// - duration: number
external AnimationAction halt(_i1.JSNumber duration);
/// Method [warp]
///
/// Parameters:
/// - startTimeScale: number
/// - endTimeScale: number
/// - duration: number
external AnimationAction warp(_i1.JSNumber startTimeScale, _i1.JSNumber endTimeScale, _i1.JSNumber duration, );
/// Method [stopWarping]
external AnimationAction stopWarping();
/// Method [getMixer]
external AnimationMixer getMixer();
/// Method [getClip]
external AnimationClip getClip();
/// Method [getRoot]
external Object3D<Object3DEventMap> getRoot();
}
/// Interface [AnimationClipJSON]
extension type AnimationClipJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [duration]
///
/// duration: number
external _i1.JSNumber duration;

/// Property [tracks]
///
/// tracks: KeyframeTrackJSON[]
external _i1.JSArray<KeyframeTrackJSON> tracks;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [blendMode]
///
/// blendMode: AnimationBlendMode
external AnimationBlendMode blendMode;

}
/// Interface [MorphTarget]
extension type MorphTarget.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [vertices]
///
/// vertices: Vector3[]
external _i1.JSArray<Vector3> vertices;

}
/// Class [AnimationClip]
extension type AnimationClip.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - name: string
/// - duration: number
/// - tracks: Array
/// - blendMode: AnimationBlendMode
external AnimationClip([_i1.JSString name, _i1.JSNumber duration, _i2.Array<KeyframeTrack> tracks, AnimationBlendMode blendMode, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [tracks]
///
/// tracks: Array
external _i2.Array<KeyframeTrack> tracks;

/// Property [duration]
///
/// duration: number
external _i1.JSNumber duration;

/// Property [blendMode]
///
/// blendMode: AnimationBlendMode
external AnimationBlendMode blendMode;

/// Property [userData]
///
/// userData: Record
external _i2.Record<_i1.JSString,_i1.JSAny> userData;

/// Method [parse]
///
/// Parameters:
/// - json: AnimationClipJSON
external static AnimationClip parse(AnimationClipJSON json);
/// Method [toJSON$1]
///
/// Parameters:
/// - clip: AnimationClip
@_i1.JS('toJSON') external static AnimationClipJSON toJSON$1(AnimationClip clip);
/// Method [CreateFromMorphTargetSequence]
///
/// Parameters:
/// - name: string
/// - morphTargetSequence: Array
/// - fps: number
/// - noLoop: boolean
external static AnimationClip CreateFromMorphTargetSequence(_i1.JSString name, _i2.Array<MorphTarget> morphTargetSequence, _i1.JSNumber fps, _i1.JSBoolean noLoop, );
/// Method [findByName]
///
/// Parameters:
/// - objectOrClipArray: Array | Object3D
/// - name: string
external static AnimationClip? findByName(_i1.JSAny objectOrClipArray, _i1.JSString name, );
/// Method [CreateClipsFromMorphTargetSequences]
///
/// Parameters:
/// - morphTargets: Array
/// - fps: number
/// - noLoop: boolean
external static _i2.Array<AnimationClip> CreateClipsFromMorphTargetSequences(_i2.Array<MorphTarget> morphTargets, _i1.JSNumber fps, _i1.JSBoolean noLoop, );
/// Method [parseAnimation]
///
/// Parameters:
/// - animation: AnimationClipJSON
/// - bones: Array
external static AnimationClip? parseAnimation(AnimationClipJSON animation, _i2.Array<Bone<Object3DEventMap>> bones, );
/// Property [uuid]
///
/// readonly uuid: string
external _i1.JSString get uuid;
/// Method [resetDuration]
external AnimationClip resetDuration();
/// Method [trim]
external AnimationClip trim();
/// Method [validate]
external _i1.JSBoolean validate();
/// Method [optimize]
external AnimationClip optimize();
/// Method [clone]
external _i1.JSAny clone();
/// Method [toJSON$2]
@_i1.JS('toJSON') external AnimationClipJSON toJSON$2();
}
/// Interface [AnimationMixerEventMap]
extension type AnimationMixerEventMap.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [loop]
///
/// loop: AnimationMixerEventMap$Loop$TypeLiteral
external AnimationMixerEventMap$Loop$TypeLiteral loop;

/// Property [finished]
///
/// finished: AnimationMixerEventMap$Finished$TypeLiteral
external AnimationMixerEventMap$Finished$TypeLiteral finished;

}
/// Interface [MixerControlInterpolant]
extension type MixerControlInterpolant.$(_i1.JSObject _) implements LinearInterpolant {
}
/// Interface [AnimationMixerStats]
extension type AnimationMixerStats.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [actions]
///
/// actions: AnimationMixerStats$Actions$TypeLiteral
external AnimationMixerStats$Actions$TypeLiteral actions;

/// Property [bindings]
///
/// bindings: AnimationMixerStats$Bindings$TypeLiteral
external AnimationMixerStats$Bindings$TypeLiteral bindings;

/// Property [controlInterpolants]
///
/// controlInterpolants: AnimationMixerStats$ControlInterpolants$TypeLiteral
external AnimationMixerStats$ControlInterpolants$TypeLiteral controlInterpolants;

}
/// Class [AnimationMixer]
extension type AnimationMixer.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<AnimationMixerEventMap> {
/// Constructor
///
/// Parameters:
/// - root: Object3D | AnimationObjectGroup
external AnimationMixer(_i1.JSAny root);

/// Property [time]
///
/// time: number
external _i1.JSNumber time;

/// Property [timeScale]
///
/// timeScale: number
external _i1.JSNumber timeScale;

/// Property [stats]
///
/// stats: AnimationMixerStats
external AnimationMixerStats stats;

/// Method [clipAction$1]
///
/// Parameters:
/// - clip: AnimationClip
/// - optionalRoot: Object3D | AnimationObjectGroup
/// - blendMode: AnimationBlendMode
@_i1.JS('clipAction') external AnimationAction clipAction$1(AnimationClip clip, [_i1.JSAny optionalRoot, AnimationBlendMode blendMode, ]);
/// Method [clipAction$2]
///
/// Parameters:
/// - clip: AnimationClip | string
/// - optionalRoot: Object3D | AnimationObjectGroup
/// - blendMode: AnimationBlendMode
@_i1.JS('clipAction') external AnimationAction? clipAction$2(_i1.JSAny clip, [_i1.JSAny optionalRoot, AnimationBlendMode blendMode, ]);
/// Method [existingAction]
///
/// Parameters:
/// - clip: AnimationClip | string
/// - optionalRoot: Object3D | AnimationObjectGroup
external AnimationAction? existingAction(_i1.JSAny clip, [_i1.JSAny optionalRoot, ]);
/// Method [stopAllAction]
external AnimationMixer stopAllAction();
/// Method [update]
///
/// Parameters:
/// - deltaTime: number
external AnimationMixer update(_i1.JSNumber deltaTime);
/// Method [setTime]
///
/// Parameters:
/// - time: number
external AnimationMixer setTime(_i1.JSNumber time);
/// Method [getRoot]
external _i1.JSAny getRoot();
/// Method [uncacheClip]
///
/// Parameters:
/// - clip: AnimationClip
external void uncacheClip(AnimationClip clip);
/// Method [uncacheRoot]
///
/// Parameters:
/// - root: Object3D | AnimationObjectGroup
external void uncacheRoot(_i1.JSAny root);
/// Method [uncacheAction]
///
/// Parameters:
/// - clip: AnimationClip | string
/// - optionalRoot: Object3D | AnimationObjectGroup
external void uncacheAction(_i1.JSAny clip, [_i1.JSAny optionalRoot, ]);
}
/// Interface [AnimationMixerEventMap$Loop$TypeLiteral]
extension type AnimationMixerEventMap$Loop$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [action]
///
/// action: AnimationAction
external AnimationAction action;

/// Property [loopDelta]
///
/// loopDelta: number
external _i1.JSNumber loopDelta;

}
/// Interface [AnimationMixerEventMap$Finished$TypeLiteral]
extension type AnimationMixerEventMap$Finished$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [action]
///
/// action: AnimationAction
external AnimationAction action;

/// Property [direction]
///
/// direction: number
external _i1.JSNumber direction;

}
/// Interface [AnimationMixerStats$Actions$TypeLiteral]
extension type AnimationMixerStats$Actions$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [total]
///
/// readonly total: number
external _i1.JSNumber get total;
/// Property [inUse]
///
/// readonly inUse: number
external _i1.JSNumber get inUse;
}
/// Interface [AnimationMixerStats$Bindings$TypeLiteral]
extension type AnimationMixerStats$Bindings$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [total]
///
/// readonly total: number
external _i1.JSNumber get total;
/// Property [inUse]
///
/// readonly inUse: number
external _i1.JSNumber get inUse;
}
/// Interface [AnimationMixerStats$ControlInterpolants$TypeLiteral]
extension type AnimationMixerStats$ControlInterpolants$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [total]
///
/// readonly total: number
external _i1.JSNumber get total;
/// Property [inUse]
///
/// readonly inUse: number
external _i1.JSNumber get inUse;
}
/// Interface [AnimationMixer$_bindingsByRootAndName$TypeLiteral]
extension type AnimationMixer$_bindingsByRootAndName$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString trackName, PropertyMixer value, );
external PropertyMixer operator [](_i1.JSString trackName);
}
/// Interface [AnimationMixer$_bindingsByRootAndName$TypeLiteral$2]
extension type AnimationMixer$_bindingsByRootAndName$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString rootUuid, AnimationMixer$_bindingsByRootAndName$TypeLiteral value, );
external AnimationMixer$_bindingsByRootAndName$TypeLiteral operator [](_i1.JSString rootUuid);
}
/// Interface [AnimationMixer$_actionsByClip$ActionByRoot$TypeLiteral]
extension type AnimationMixer$_actionsByClip$ActionByRoot$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString rootUuid, AnimationAction value, );
external AnimationAction operator [](_i1.JSString rootUuid);
}
/// Interface [AnimationMixer$_actionsByClip$TypeLiteral]
extension type AnimationMixer$_actionsByClip$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [knownActions]
///
/// knownActions: AnimationAction[]
external _i1.JSArray<AnimationAction> knownActions;

/// Property [actionByRoot]
///
/// actionByRoot: AnimationMixer$_actionsByClip$ActionByRoot$TypeLiteral
external AnimationMixer$_actionsByClip$ActionByRoot$TypeLiteral actionByRoot;

}
/// Interface [AnimationMixer$_actionsByClip$TypeLiteral$2]
extension type AnimationMixer$_actionsByClip$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString clipUuid, AnimationMixer$_actionsByClip$TypeLiteral value, );
external AnimationMixer$_actionsByClip$TypeLiteral operator [](_i1.JSString clipUuid);
}
/// Class [AnimationObjectGroup]
extension type AnimationObjectGroup.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - ...args: Object3D[]
external AnimationObjectGroup(_i1.JSArray<Object3D<Object3DEventMap>> args);

/// Property [isAnimationObjectGroup]
///
/// readonly isAnimationObjectGroup: true
external _i1.JSBoolean get isAnimationObjectGroup;
/// Property [uuid]
///
/// readonly uuid: string
external _i1.JSString get uuid;
/// Method [add]
///
/// Parameters:
/// - ...args: Object3D[]
external void add(_i1.JSArray<Object3D<Object3DEventMap>> args);
/// Method [remove]
///
/// Parameters:
/// - ...args: Object3D[]
external void remove(_i1.JSArray<Object3D<Object3DEventMap>> args);
/// Method [uncache]
///
/// Parameters:
/// - ...args: Object3D[]
external void uncache(_i1.JSArray<Object3D<Object3DEventMap>> args);
}
/// Method [convertArray]
///
/// Parameters:
/// - array: TypedArray | number[]
/// - type: TypedArrayConstructor
@_i1.JS('convertArray') external TypedArray convertArray(_i1.JSAny array, TypedArrayConstructor type, );/// Method [getKeyframeOrder]
///
/// Parameters:
/// - times: Array
@_i1.JS('getKeyframeOrder') external _i2.Array<_i1.JSNumber> getKeyframeOrder(_i2.Array<_i1.JSNumber> times);/// Method [sortedArray]
///
/// Parameters:
/// - values: Array
/// - stride: number
/// - order: Array
@_i1.JS('sortedArray') external _i2.Array<_i1.JSNumber> sortedArray(_i2.Array<_i1.JSNumber> values, _i1.JSNumber stride, _i2.Array<_i1.JSNumber> order, );/// Method [flattenJSON]
///
/// Parameters:
/// - jsonKeys: Array
/// - times: Array
/// - values: Array
/// - valuePropertyName: string
@_i1.JS('flattenJSON') external void flattenJSON(_i2.Array<_i1.JSNumber> jsonKeys, _i2.Array<_i1.JSNumber> times, _i2.Array<_i1.JSNumber> values, _i1.JSString valuePropertyName, );/// Method [subclip]
///
/// Parameters:
/// - sourceClip: AnimationClip
/// - name: string
/// - startFrame: number
/// - endFrame: number
/// - fps: number
@_i1.JS('subclip') external AnimationClip subclip(AnimationClip sourceClip, _i1.JSString name, _i1.JSNumber startFrame, _i1.JSNumber endFrame, [_i1.JSNumber fps, ]);/// Method [makeClipAdditive]
///
/// Parameters:
/// - targetClip: AnimationClip
/// - referenceFrame: number
/// - referenceClip: AnimationClip
/// - fps: number
@_i1.JS('makeClipAdditive') external AnimationClip makeClipAdditive(AnimationClip targetClip, [_i1.JSNumber referenceFrame, AnimationClip referenceClip, _i1.JSNumber fps, ]);/// Class [AnimationUtils]
extension type AnimationUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [convertArray]
///
/// Parameters:
/// - array: TypedArray | number[]
/// - type: TypedArrayConstructor
external static _i1.JSAny convertArray(_i1.JSAny array, TypedArrayConstructor type, );
/// Method [isTypedArray]
///
/// Parameters:
/// - object: 
external static _i1.JSBoolean isTypedArray(_i1.JSAny object);
/// Method [getKeyframeOrder]
///
/// Parameters:
/// - times: Array
external static _i2.Array<_i1.JSNumber> getKeyframeOrder(_i2.Array<_i1.JSNumber> times);
/// Method [sortedArray]
///
/// Parameters:
/// - values: Array
/// - stride: number
/// - order: Array
external static _i2.Array<_i1.JSNumber> sortedArray(_i2.Array<_i1.JSNumber> values, _i1.JSNumber stride, _i2.Array<_i1.JSNumber> order, );
/// Method [flattenJSON]
///
/// Parameters:
/// - jsonKeys: Array
/// - times: Array
/// - values: Array
/// - valuePropertyName: string
external static void flattenJSON(_i2.Array<_i1.JSNumber> jsonKeys, _i2.Array<_i1.JSNumber> times, _i2.Array<_i1.JSNumber> values, _i1.JSString valuePropertyName, );
/// Method [subclip]
///
/// Parameters:
/// - sourceClip: AnimationClip
/// - name: string
/// - startFrame: number
/// - endFrame: number
/// - fps: number
external static AnimationClip subclip(AnimationClip sourceClip, _i1.JSString name, _i1.JSNumber startFrame, _i1.JSNumber endFrame, [_i1.JSNumber fps, ]);
/// Method [makeClipAdditive]
///
/// Parameters:
/// - targetClip: AnimationClip
/// - referenceFrame: number
/// - referenceClip: AnimationClip
/// - fps: number
external static AnimationClip makeClipAdditive(AnimationClip targetClip, [_i1.JSNumber referenceFrame, AnimationClip referenceClip, _i1.JSNumber fps, ]);
}
/// Interface [KeyframeTrackJSON]
extension type KeyframeTrackJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [times]
///
/// times: number[]
external _i1.JSArray<_i1.JSNumber> times;

/// Property [values]
///
/// values: number[]
external _i1.JSArray<_i1.JSNumber> values;

/// Property [interpolation]
///
/// interpolation?: InterpolationModes
external InterpolationModes? interpolation;

/// Property [type]
///
/// type: string
external _i1.JSString type;

}
/// Class [KeyframeTrack]
extension type KeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
/// - interpolation: InterpolationModes
external KeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSAny> values, [InterpolationModes interpolation, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [times]
///
/// times: Float32Array
external _i1.JSFloat32Array times;

/// Property [values]
///
/// values: Float32Array
external _i1.JSFloat32Array values;

/// Property [ValueTypeName]
///
/// ValueTypeName: string
external _i1.JSString ValueTypeName;

/// Property [TimeBufferType]
///
/// TimeBufferType: TypedArrayConstructor | ArrayConstructor
external _i1.JSAny TimeBufferType;

/// Property [ValueBufferType]
///
/// ValueBufferType: TypedArrayConstructor | ArrayConstructor
external _i1.JSAny ValueBufferType;

/// Property [DefaultInterpolation]
///
/// DefaultInterpolation: InterpolationModes
external InterpolationModes DefaultInterpolation;

/// Method [toJSON]
///
/// Parameters:
/// - track: KeyframeTrack
external static KeyframeTrackJSON toJSON(KeyframeTrack track);
/// Method [InterpolantFactoryMethodDiscrete]
///
/// Parameters:
/// - result: TypedArray
external DiscreteInterpolant InterpolantFactoryMethodDiscrete([TypedArray result]);
/// Method [InterpolantFactoryMethodLinear]
///
/// Parameters:
/// - result: TypedArray
external LinearInterpolant InterpolantFactoryMethodLinear([TypedArray result]);
/// Method [InterpolantFactoryMethodSmooth]
///
/// Parameters:
/// - result: TypedArray
external CubicInterpolant InterpolantFactoryMethodSmooth([TypedArray result]);
/// Method [InterpolantFactoryMethodBezier]
///
/// Parameters:
/// - result: TypedArray
external BezierInterpolant InterpolantFactoryMethodBezier([TypedArray result]);
/// Method [setInterpolation]
///
/// Parameters:
/// - interpolation: InterpolationModes
external KeyframeTrack setInterpolation(InterpolationModes interpolation);
/// Method [getInterpolation]
external InterpolationModes getInterpolation();
/// Method [getValueSize]
external _i1.JSNumber getValueSize();
/// Method [shift]
///
/// Parameters:
/// - timeOffset: number
external KeyframeTrack shift(_i1.JSNumber timeOffset);
/// Method [scale]
///
/// Parameters:
/// - timeScale: number
external KeyframeTrack scale(_i1.JSNumber timeScale);
/// Method [trim]
///
/// Parameters:
/// - startTime: number
/// - endTime: number
external KeyframeTrack trim(_i1.JSNumber startTime, _i1.JSNumber endTime, );
/// Method [validate]
external _i1.JSBoolean validate();
/// Method [optimize]
external _i1.JSAny optimize();
/// Method [clone]
external _i1.JSAny clone();
}
/// Interface [ParseTrackNameResults]
extension type ParseTrackNameResults.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [nodeName]
///
/// nodeName: string
external _i1.JSString nodeName;

/// Property [objectName]
///
/// objectName: string
external _i1.JSString objectName;

/// Property [objectIndex]
///
/// objectIndex: string
external _i1.JSString objectIndex;

/// Property [propertyName]
///
/// propertyName: string
external _i1.JSString propertyName;

/// Property [propertyIndex]
///
/// propertyIndex: string
external _i1.JSString propertyIndex;

}
/// Class [PropertyBinding]
extension type PropertyBinding.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - rootNode: Object3D | Skeleton
/// - path: string
/// - parsedPath: object | null
external PropertyBinding(_i1.JSAny rootNode, _i1.JSString path, [_i1.JSObject? parsedPath, ]);

/// Property [path]
///
/// path: string
external _i1.JSString path;

/// Property [parsedPath]
///
/// parsedPath: object
external _i1.JSObject parsedPath;

/// Property [node]
///
/// node: object | null
external _i1.JSObject node;

/// Property [rootNode]
///
/// rootNode: Object3D | Skeleton
external _i1.JSAny rootNode;

/// Method [create]
///
/// Parameters:
/// - root: object
/// - path: string
/// - parsedPath: object | null
external static _i1.JSAny create(_i1.JSObject root, _i1.JSString path, [_i1.JSObject? parsedPath, ]);
/// Method [sanitizeNodeName]
///
/// Parameters:
/// - name: string
external static _i1.JSString sanitizeNodeName(_i1.JSString name);
/// Method [parseTrackName]
///
/// Parameters:
/// - trackName: string
external static ParseTrackNameResults parseTrackName(_i1.JSString trackName);
/// Method [findNode]
///
/// Parameters:
/// - root: object
/// - nodeName: string | number
external static _i1.JSObject? findNode(_i1.JSObject root, _i1.JSAny nodeName, );
/// Method [bind]
external void bind();
/// Method [unbind]
external void unbind();
}
/// Class [Composite]
extension type Composite.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [PropertyMixer]
extension type PropertyMixer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - binding: PropertyBinding
/// - typeName: string
/// - valueSize: number
external PropertyMixer(PropertyBinding binding, _i1.JSString typeName, _i1.JSNumber valueSize, );

/// Property [binding]
///
/// binding: PropertyBinding
external PropertyBinding binding;

/// Property [valueSize]
///
/// valueSize: number
external _i1.JSNumber valueSize;

/// Property [buffer]
///
/// buffer: Float64Array | []
external _i1.JSAny buffer;

/// Property [cumulativeWeight]
///
/// cumulativeWeight: number
external _i1.JSNumber cumulativeWeight;

/// Property [cumulativeWeightAdditive]
///
/// cumulativeWeightAdditive: number
external _i1.JSNumber cumulativeWeightAdditive;

/// Property [useCount]
///
/// useCount: number
external _i1.JSNumber useCount;

/// Property [referenceCount]
///
/// referenceCount: number
external _i1.JSNumber referenceCount;

/// Method [accumulate]
///
/// Parameters:
/// - accuIndex: number
/// - weight: number
external void accumulate(_i1.JSNumber accuIndex, _i1.JSNumber weight, );
/// Method [accumulateAdditive]
///
/// Parameters:
/// - weight: number
external void accumulateAdditive(_i1.JSNumber weight);
/// Method [apply]
///
/// Parameters:
/// - accuIndex: number
external void apply(_i1.JSNumber accuIndex);
/// Method [saveOriginalState]
external void saveOriginalState();
/// Method [restoreOriginalState]
external void restoreOriginalState();
}
/// Class [BooleanKeyframeTrack]
extension type BooleanKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
external BooleanKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSBoolean> values, );

}
/// Class [ColorKeyframeTrack]
extension type ColorKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
/// - interpolation: InterpolationModes
external ColorKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSNumber> values, [InterpolationModes interpolation, ]);

}
/// Class [NumberKeyframeTrack]
extension type NumberKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
/// - interpolation: InterpolationModes
external NumberKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSNumber> values, [InterpolationModes interpolation, ]);

}
/// Class [QuaternionKeyframeTrack]
extension type QuaternionKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
/// - interpolation: InterpolationModes
external QuaternionKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSNumber> values, [InterpolationModes interpolation, ]);

}
/// Class [StringKeyframeTrack]
extension type StringKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
external StringKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSString> values, );

}
/// Class [VectorKeyframeTrack]
extension type VectorKeyframeTrack.$(_i1.JSObject _) implements _i1.JSObject,KeyframeTrack {
/// Constructor
///
/// Parameters:
/// - name: string
/// - times: ArrayLike
/// - values: ArrayLike
/// - interpolation: InterpolationModes
external VectorKeyframeTrack(_i1.JSString name, _i2.ArrayLike<_i1.JSNumber> times, _i2.ArrayLike<_i1.JSNumber> values, [InterpolationModes interpolation, ]);

}
/// Class [Audio]
extension type Audio<TNode extends _i3.AudioNode>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - listener: AudioListener
external Audio(_i3.AudioListener listener);

/// Property [autoplay]
///
/// autoplay: boolean
external _i1.JSBoolean autoplay;

/// Property [loopStart]
///
/// loopStart: number
external _i1.JSNumber loopStart;

/// Property [loopEnd]
///
/// loopEnd: number
external _i1.JSNumber loopEnd;

/// Property [offset]
///
/// offset: number
external _i1.JSNumber offset;

/// Property [duration]
///
/// duration: number | undefined
external _i1.JSNumber duration;

/// Property [listener]
///
/// readonly listener: AudioListener
external _i3.AudioListener get listener;
/// Property [context]
///
/// readonly context: AudioContext
external _i3.AudioContext get context;
/// Property [gain]
///
/// readonly gain: GainNode
external _i3.GainNode get gain;
/// Property [buffer]
///
/// readonly buffer: AudioBuffer | null
external _i3.AudioBuffer get buffer;
/// Property [detune]
///
/// readonly detune: number
external _i1.JSNumber get detune;
/// Property [loop]
///
/// readonly loop: boolean
external _i1.JSBoolean get loop;
/// Property [playbackRate]
///
/// readonly playbackRate: number
external _i1.JSNumber get playbackRate;
/// Property [isPlaying]
///
/// readonly isPlaying: boolean
external _i1.JSBoolean get isPlaying;
/// Property [hasPlaybackControl]
///
/// readonly hasPlaybackControl: boolean
external _i1.JSBoolean get hasPlaybackControl;
/// Property [source]
///
/// readonly source: AudioNode | null
external _i3.AudioNode get source;
/// Property [sourceType]
///
/// readonly sourceType: "empty" | "audioNode" | "mediaNode" | "mediaStreamNode" | "buffer"
external _i1.JSString get sourceType;
/// Property [filters]
///
/// readonly filters: AudioNode[]
external _i1.JSArray<_i3.AudioNode> get filters;
/// Method [getOutput]
external TNode getOutput();
/// Method [setNodeSource]
///
/// Parameters:
/// - audioNode: AudioNode
external _i1.JSAny setNodeSource(_i3.AudioNode audioNode);
/// Method [setMediaElementSource]
///
/// Parameters:
/// - mediaElement: HTMLMediaElement
external _i1.JSAny setMediaElementSource(_i3.HTMLMediaElement mediaElement);
/// Method [setMediaStreamSource]
///
/// Parameters:
/// - mediaStream: MediaStream
external _i1.JSAny setMediaStreamSource(_i3.MediaStream mediaStream);
/// Method [setBuffer]
///
/// Parameters:
/// - audioBuffer: AudioBuffer
external _i1.JSAny setBuffer(_i3.AudioBuffer audioBuffer);
/// Method [play]
///
/// Parameters:
/// - delay: number
external _i1.JSAny? play([_i1.JSNumber delay]);
/// Method [pause]
external _i1.JSAny? pause();
/// Method [stop]
///
/// Parameters:
/// - delay: number
external _i1.JSAny? stop([_i1.JSNumber delay]);
/// Method [connect]
external _i1.JSAny connect();
/// Method [disconnect]
external _i1.JSAny? disconnect();
/// Method [getFilters]
external _i1.JSArray<_i3.AudioNode> getFilters();
/// Method [setFilters]
///
/// Parameters:
/// - value: AudioNode[]
external _i1.JSAny setFilters([_i1.JSArray<_i3.AudioNode> value]);
/// Method [setDetune]
///
/// Parameters:
/// - value: number
external _i1.JSAny setDetune(_i1.JSNumber value);
/// Method [getDetune]
external _i1.JSNumber getDetune();
/// Method [getFilter]
external _i3.AudioNode? getFilter();
/// Method [setFilter]
///
/// Parameters:
/// - filter: AudioNode
external _i1.JSAny setFilter([_i3.AudioNode filter]);
/// Method [setPlaybackRate]
///
/// Parameters:
/// - value: number
external _i1.JSAny? setPlaybackRate([_i1.JSNumber value]);
/// Method [getPlaybackRate]
external _i1.JSNumber getPlaybackRate();
/// Method [onEnded]
external void onEnded();
/// Method [getLoop]
external _i1.JSBoolean getLoop();
/// Method [setLoop]
///
/// Parameters:
/// - value: boolean
external _i1.JSAny? setLoop(_i1.JSBoolean value);
/// Method [setLoopStart]
///
/// Parameters:
/// - value: number
external _i1.JSAny setLoopStart(_i1.JSNumber value);
/// Method [setLoopEnd]
///
/// Parameters:
/// - value: number
external _i1.JSAny setLoopEnd(_i1.JSNumber value);
/// Method [getVolume]
external _i1.JSNumber getVolume();
/// Method [setVolume]
///
/// Parameters:
/// - value: number
external _i1.JSAny setVolume(_i1.JSNumber value);
/// Method [copy]
///
/// Parameters:
/// - source: Audio
/// - recursive: boolean
external _i1.JSAny copy(Audio<_i3.GainNode> source, [_i1.JSBoolean recursive, ]);
/// Method [clone]
///
/// Parameters:
/// - recursive: boolean
external _i1.JSAny clone([_i1.JSBoolean recursive]);
}
/// Class [AudioAnalyser]
extension type AudioAnalyser.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - audio: Audio
/// - fftSize: number
external AudioAnalyser(Audio<_i3.AudioNode> audio, [_i1.JSNumber fftSize, ]);

/// Property [analyser]
///
/// analyser: AnalyserNode
external _i3.AnalyserNode analyser;

/// Property [data]
///
/// data: Uint8Array
external _i1.JSUint8Array data;

/// Method [getFrequencyData]
external _i1.JSUint8Array getFrequencyData();
/// Method [getAverageFrequency]
external _i1.JSNumber getAverageFrequency();
}
/// Class [AudioContext]
extension type AudioContext.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [getContext]
external static _i3.AudioContext getContext();
/// Method [setContext]
///
/// Parameters:
/// - value: AudioContext
external static void setContext(_i3.AudioContext value);
}
/// Class [AudioListener]
extension type AudioListener.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Property [context]
///
/// readonly context: AudioContext
external _i3.AudioContext get context;
/// Property [gain]
///
/// readonly gain: GainNode
external _i3.GainNode get gain;
/// Property [filter]
///
/// readonly filter: AudioNode | null
external _i3.AudioNode get filter;
/// Property [timeDelta]
///
/// readonly timeDelta: number
external _i1.JSNumber get timeDelta;
/// Method [getInput]
external _i3.GainNode getInput();
/// Method [removeFilter]
external _i1.JSAny removeFilter();
/// Method [getFilter]
external _i3.AudioNode? getFilter();
/// Method [setFilter]
///
/// Parameters:
/// - value: AudioNode
external _i1.JSAny setFilter(_i3.AudioNode value);
/// Method [getMasterVolume]
external _i1.JSNumber getMasterVolume();
/// Method [setMasterVolume]
///
/// Parameters:
/// - value: number
external _i1.JSAny setMasterVolume(_i1.JSNumber value);
}
/// Class [PositionalAudio]
extension type PositionalAudio.$(_i1.JSObject _) implements _i1.JSObject,Audio<_i3.PannerNode> {
/// Property [panner]
///
/// readonly panner: PannerNode
external _i3.PannerNode get panner;
/// Method [disconnect]
external _i1.JSAny disconnect();
/// Method [getRefDistance]
external _i1.JSNumber getRefDistance();
/// Method [setRefDistance]
///
/// Parameters:
/// - value: number
external _i1.JSAny setRefDistance(_i1.JSNumber value);
/// Method [getRolloffFactor]
external _i1.JSNumber getRolloffFactor();
/// Method [setRolloffFactor]
///
/// Parameters:
/// - value: number
external _i1.JSAny setRolloffFactor(_i1.JSNumber value);
/// Method [getDistanceModel]
external _i1.JSString getDistanceModel();
/// Method [setDistanceModel]
///
/// Parameters:
/// - value: "linear" | "inverse" | "exponential"
external _i1.JSAny setDistanceModel(_i1.JSString value);
/// Method [getMaxDistance]
external _i1.JSNumber getMaxDistance();
/// Method [setMaxDistance]
///
/// Parameters:
/// - value: number
external _i1.JSAny setMaxDistance(_i1.JSNumber value);
/// Method [setDirectionalCone]
///
/// Parameters:
/// - coneInnerAngle: number
/// - coneOuterAngle: number
/// - coneOuterGain: number
external _i1.JSAny setDirectionalCone(_i1.JSNumber coneInnerAngle, _i1.JSNumber coneOuterAngle, _i1.JSNumber coneOuterGain, );
}
/// Class [ArrayCamera]
extension type ArrayCamera.$(_i1.JSObject _) implements _i1.JSObject,PerspectiveCamera {
/// Constructor
///
/// Parameters:
/// - array: PerspectiveCamera[]
external ArrayCamera([_i1.JSArray<PerspectiveCamera> array]);

/// Property [cameras]
///
/// cameras: PerspectiveCamera[]
external _i1.JSArray<PerspectiveCamera> cameras;

/// Property [isArrayCamera]
///
/// readonly isArrayCamera: boolean
external _i1.JSBoolean get isArrayCamera;
/// Property [isMultiViewCamera]
///
/// readonly isMultiViewCamera: boolean
external _i1.JSBoolean get isMultiViewCamera;
}
/// Class [Camera]
extension type Camera.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Property [matrixWorldInverse]
///
/// matrixWorldInverse: Matrix4
external Matrix4 matrixWorldInverse;

/// Property [projectionMatrix]
///
/// projectionMatrix: Matrix4
external Matrix4 projectionMatrix;

/// Property [projectionMatrixInverse]
///
/// projectionMatrixInverse: Matrix4
external Matrix4 projectionMatrixInverse;

/// Property [coordinateSystem]
///
/// coordinateSystem: CoordinateSystem
external CoordinateSystem coordinateSystem;

/// Property [viewport]
///
/// viewport?: Vector4
external Vector4? viewport;

/// Property [isCamera]
///
/// readonly isCamera: boolean
external _i1.JSBoolean get isCamera;
/// Get Accessor [reversedDepth]
///
/// reversedDepth
external _i1.JSBoolean get reversedDepth;
/// Method [copy]
///
/// Parameters:
/// - source: Camera
/// - recursive: boolean
external _i1.JSAny copy(Camera source, [_i1.JSBoolean recursive, ]);
/// Method [clone]
external _i1.JSAny clone();
}
/// Interface [CubeCameraRenderer]
extension type CubeCameraRenderer.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [coordinateSystem]
///
/// coordinateSystem: CoordinateSystem
external CoordinateSystem coordinateSystem;

/// Property [xr]
///
/// xr: CubeCameraRenderer$Xr$TypeLiteral
external CubeCameraRenderer$Xr$TypeLiteral xr;

/// Method [getRenderTarget]
///
/// Returns:
/// - RenderTarget | null
external RenderTarget<Texture<_i1.JSAny>>? getRenderTarget();
/// Method [getActiveCubeFace]
///
/// Returns:
/// - number
external _i1.JSNumber getActiveCubeFace();
/// Method [getActiveMipmapLevel]
///
/// Returns:
/// - number
external _i1.JSNumber getActiveMipmapLevel();
/// Method [setRenderTarget]
///
/// Parameters:
/// - renderTarget: WebGLCubeRenderTarget | null
/// - activeCubeFace: number
/// - activeMipmapLevel: number
///
/// Returns:
/// - void
external void setRenderTarget(WebGLCubeRenderTarget? renderTarget, [_i1.JSNumber activeCubeFace, _i1.JSNumber activeMipmapLevel, ]);
/// Method [render]
///
/// Parameters:
/// - scene: Object3D
/// - camera: Camera
///
/// Returns:
/// - void
external void render(Object3D<Object3DEventMap> scene, Camera camera, );
}
/// Class [CubeCamera]
extension type CubeCamera.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - near: number
/// - far: number
/// - renderTarget: WebGLCubeRenderTarget | CubeRenderTarget
external CubeCamera(_i1.JSNumber near, _i1.JSNumber far, _i1.JSAny renderTarget, );

/// Property [renderTarget]
///
/// renderTarget: WebGLCubeRenderTarget
external WebGLCubeRenderTarget renderTarget;

/// Property [coordinateSystem]
///
/// coordinateSystem: CoordinateSystem | null
external CoordinateSystem coordinateSystem;

/// Property [activeMipmapLevel]
///
/// activeMipmapLevel: number
external _i1.JSNumber activeMipmapLevel;

/// Method [updateCoordinateSystem]
external void updateCoordinateSystem();
/// Method [update]
///
/// Parameters:
/// - renderer: CubeCameraRenderer
/// - scene: Object3D
external void update(CubeCameraRenderer renderer, Object3D<Object3DEventMap> scene, );
}
/// Interface [CubeCameraRenderer$Xr$TypeLiteral]
extension type CubeCameraRenderer$Xr$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

}
/// Interface [OrthographicCameraJSONObject]
extension type OrthographicCameraJSONObject.$(_i1.JSObject _) implements Object3DJSONObject {
/// Property [zoom]
///
/// zoom: number
external _i1.JSNumber zoom;

/// Property [left]
///
/// left: number
external _i1.JSNumber left;

/// Property [right]
///
/// right: number
external _i1.JSNumber right;

/// Property [top]
///
/// top: number
external _i1.JSNumber top;

/// Property [bottom]
///
/// bottom: number
external _i1.JSNumber bottom;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [view]
///
/// view?: OrthographicCameraJSONObject$View$TypeLiteral
external OrthographicCameraJSONObject$View$TypeLiteral? view;

}
/// Interface [OrthographicCameraJSON]
extension type OrthographicCameraJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [object]
///
/// object: OrthographicCameraJSONObject
external OrthographicCameraJSONObject object;

}
/// Class [OrthographicCamera]
extension type OrthographicCamera.$(_i1.JSObject _) implements _i1.JSObject,Camera {
/// Constructor
///
/// Parameters:
/// - left: number
/// - right: number
/// - top: number
/// - bottom: number
/// - near: number
/// - far: number
external OrthographicCamera([_i1.JSNumber left, _i1.JSNumber right, _i1.JSNumber top, _i1.JSNumber bottom, _i1.JSNumber near, _i1.JSNumber far, ]);

/// Property [zoom]
///
/// zoom: number
external _i1.JSNumber zoom;

/// Property [view]
///
/// view: OrthographicCamera$View$TypeLiteral | null
external OrthographicCamera$View$TypeLiteral view;

/// Property [left]
///
/// left: number
external _i1.JSNumber left;

/// Property [right]
///
/// right: number
external _i1.JSNumber right;

/// Property [top]
///
/// top: number
external _i1.JSNumber top;

/// Property [bottom]
///
/// bottom: number
external _i1.JSNumber bottom;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [isOrthographicCamera]
///
/// readonly isOrthographicCamera: boolean
external _i1.JSBoolean get isOrthographicCamera;
/// Method [copy]
///
/// Parameters:
/// - source: OrthographicCamera
/// - recursive: boolean
external _i1.JSAny copy(OrthographicCamera source, [_i1.JSBoolean recursive, ]);
/// Method [setViewOffset]
///
/// Parameters:
/// - fullWidth: number
/// - fullHeight: number
/// - x: number
/// - y: number
/// - width: number
/// - height: number
external void setViewOffset(_i1.JSNumber fullWidth, _i1.JSNumber fullHeight, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, );
/// Method [clearViewOffset]
external void clearViewOffset();
/// Method [updateProjectionMatrix]
external void updateProjectionMatrix();
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external OrthographicCameraJSON toJSON([JSONMeta meta]);
}
/// Interface [OrthographicCameraJSONObject$View$TypeLiteral]
extension type OrthographicCameraJSONObject$View$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [fullWidth]
///
/// fullWidth: number
external _i1.JSNumber fullWidth;

/// Property [fullHeight]
///
/// fullHeight: number
external _i1.JSNumber fullHeight;

/// Property [offsetX]
///
/// offsetX: number
external _i1.JSNumber offsetX;

/// Property [offsetY]
///
/// offsetY: number
external _i1.JSNumber offsetY;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Interface [OrthographicCamera$View$TypeLiteral]
extension type OrthographicCamera$View$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [fullWidth]
///
/// fullWidth: number
external _i1.JSNumber fullWidth;

/// Property [fullHeight]
///
/// fullHeight: number
external _i1.JSNumber fullHeight;

/// Property [offsetX]
///
/// offsetX: number
external _i1.JSNumber offsetX;

/// Property [offsetY]
///
/// offsetY: number
external _i1.JSNumber offsetY;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Interface [PerspectiveCameraJSONObject]
extension type PerspectiveCameraJSONObject.$(_i1.JSObject _) implements Object3DJSONObject {
/// Property [fov]
///
/// fov: number
external _i1.JSNumber fov;

/// Property [zoom]
///
/// zoom: number
external _i1.JSNumber zoom;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [focus]
///
/// focus: number
external _i1.JSNumber focus;

/// Property [aspect]
///
/// aspect: number
external _i1.JSNumber aspect;

/// Property [view]
///
/// view?: PerspectiveCameraJSONObject$View$TypeLiteral
external PerspectiveCameraJSONObject$View$TypeLiteral? view;

/// Property [filmGauge]
///
/// filmGauge: number
external _i1.JSNumber filmGauge;

/// Property [filmOffset]
///
/// filmOffset: number
external _i1.JSNumber filmOffset;

}
/// Interface [PerspectiveCameraJSON]
extension type PerspectiveCameraJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [object]
///
/// object: PerspectiveCameraJSONObject
external PerspectiveCameraJSONObject object;

}
/// Class [PerspectiveCamera]
extension type PerspectiveCamera.$(_i1.JSObject _) implements _i1.JSObject,Camera {
/// Constructor
///
/// Parameters:
/// - fov: number
/// - aspect: number
/// - near: number
/// - far: number
external PerspectiveCamera([_i1.JSNumber fov, _i1.JSNumber aspect, _i1.JSNumber near, _i1.JSNumber far, ]);

/// Property [fov]
///
/// fov: number
external _i1.JSNumber fov;

/// Property [zoom]
///
/// zoom: number
external _i1.JSNumber zoom;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [focus]
///
/// focus: number
external _i1.JSNumber focus;

/// Property [aspect]
///
/// aspect: number
external _i1.JSNumber aspect;

/// Property [view]
///
/// view: PerspectiveCamera$View$TypeLiteral | null
external PerspectiveCamera$View$TypeLiteral view;

/// Property [filmGauge]
///
/// filmGauge: number
external _i1.JSNumber filmGauge;

/// Property [filmOffset]
///
/// filmOffset: number
external _i1.JSNumber filmOffset;

/// Property [isPerspectiveCamera]
///
/// readonly isPerspectiveCamera: boolean
external _i1.JSBoolean get isPerspectiveCamera;
/// Method [copy]
///
/// Parameters:
/// - source: PerspectiveCamera
/// - recursive: boolean
external _i1.JSAny copy(PerspectiveCamera source, [_i1.JSBoolean recursive, ]);
/// Method [setFocalLength]
///
/// Parameters:
/// - focalLength: number
external void setFocalLength(_i1.JSNumber focalLength);
/// Method [getFocalLength]
external _i1.JSNumber getFocalLength();
/// Method [getEffectiveFOV]
external _i1.JSNumber getEffectiveFOV();
/// Method [getFilmWidth]
external _i1.JSNumber getFilmWidth();
/// Method [getFilmHeight]
external _i1.JSNumber getFilmHeight();
/// Method [getViewBounds]
///
/// Parameters:
/// - distance: number
/// - minTarget: Vector2
/// - maxTarget: Vector2
external void getViewBounds(_i1.JSNumber distance, Vector2 minTarget, Vector2 maxTarget, );
/// Method [getViewSize]
///
/// Parameters:
/// - distance: number
/// - target: Vector2
external Vector2 getViewSize(_i1.JSNumber distance, Vector2 target, );
/// Method [setViewOffset]
///
/// Parameters:
/// - fullWidth: number
/// - fullHeight: number
/// - x: number
/// - y: number
/// - width: number
/// - height: number
external void setViewOffset(_i1.JSNumber fullWidth, _i1.JSNumber fullHeight, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, );
/// Method [clearViewOffset]
external void clearViewOffset();
/// Method [updateProjectionMatrix]
external void updateProjectionMatrix();
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external PerspectiveCameraJSON toJSON([JSONMeta meta]);
}
/// Interface [PerspectiveCameraJSONObject$View$TypeLiteral]
extension type PerspectiveCameraJSONObject$View$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [fullWidth]
///
/// fullWidth: number
external _i1.JSNumber fullWidth;

/// Property [fullHeight]
///
/// fullHeight: number
external _i1.JSNumber fullHeight;

/// Property [offsetX]
///
/// offsetX: number
external _i1.JSNumber offsetX;

/// Property [offsetY]
///
/// offsetY: number
external _i1.JSNumber offsetY;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Interface [PerspectiveCamera$View$TypeLiteral]
extension type PerspectiveCamera$View$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [fullWidth]
///
/// fullWidth: number
external _i1.JSNumber fullWidth;

/// Property [fullHeight]
///
/// fullHeight: number
external _i1.JSNumber fullHeight;

/// Property [offsetX]
///
/// offsetX: number
external _i1.JSNumber offsetX;

/// Property [offsetY]
///
/// offsetY: number
external _i1.JSNumber offsetY;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Class [StereoCamera]
extension type StereoCamera.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [aspect]
///
/// aspect: number
external _i1.JSNumber aspect;

/// Property [eyeSep]
///
/// eyeSep: number
external _i1.JSNumber eyeSep;

/// Property [cameraL]
///
/// cameraL: PerspectiveCamera
external PerspectiveCamera cameraL;

/// Property [cameraR]
///
/// cameraR: PerspectiveCamera
external PerspectiveCamera cameraR;

/// Property [type]
///
/// readonly type: string
external _i1.JSString get type;
/// Method [update]
///
/// Parameters:
/// - camera: PerspectiveCamera
external void update(PerspectiveCamera camera);
}
/// Variable [REVISION]
///
/// REVISION: string
external _i1.JSString REVISION;/// enum MOUSE
extension type MOUSE(_i1.JSObject _) implements _i1.JSObject {
/// member LEFT = 0
external _i1.JSNumber LEFT;

/// member MIDDLE = 1
external _i1.JSNumber MIDDLE;

/// member RIGHT = 2
external _i1.JSNumber RIGHT;

/// member ROTATE = 0
external _i1.JSNumber ROTATE;

/// member DOLLY = 1
external _i1.JSNumber DOLLY;

/// member PAN = 2
external _i1.JSNumber PAN;

external _i1.JSString operator [](_i1.JSAny value);
}
/// enum TOUCH
extension type TOUCH(_i1.JSObject _) implements _i1.JSObject {
/// member ROTATE = 0
external _i1.JSNumber ROTATE;

/// member PAN = 1
external _i1.JSNumber PAN;

/// member DOLLY_PAN = 2
external _i1.JSNumber DOLLY_PAN;

/// member DOLLY_ROTATE = 3
external _i1.JSNumber DOLLY_ROTATE;

external _i1.JSString operator [](_i1.JSAny value);
}
/// Variable [CullFaceNone]
///
/// CullFaceNone: 0
external _i1.JSNumber CullFaceNone;/// Variable [CullFaceBack]
///
/// CullFaceBack: 1
external _i1.JSNumber CullFaceBack;/// Variable [CullFaceFront]
///
/// CullFaceFront: 2
external _i1.JSNumber CullFaceFront;/// Variable [CullFaceFrontBack]
///
/// CullFaceFrontBack: 3
external _i1.JSNumber CullFaceFrontBack;/// Typedef [CullFace]
///
/// typeof CullFaceNone | typeof CullFaceBack | typeof CullFaceFront | typeof CullFaceFrontBack
typedef CullFace = _i1.JSString;
/// Variable [BasicShadowMap]
///
/// BasicShadowMap: 0
external _i1.JSNumber BasicShadowMap;/// Variable [PCFShadowMap]
///
/// PCFShadowMap: 1
external _i1.JSNumber PCFShadowMap;/// Variable [PCFSoftShadowMap]
///
/// PCFSoftShadowMap: 2
external _i1.JSNumber PCFSoftShadowMap;/// Variable [VSMShadowMap]
///
/// VSMShadowMap: 3
external _i1.JSNumber VSMShadowMap;/// Typedef [ShadowMapType]
///
/// typeof BasicShadowMap | typeof PCFShadowMap | typeof PCFSoftShadowMap | typeof VSMShadowMap
typedef ShadowMapType = _i1.JSString;
/// Variable [FrontSide]
///
/// FrontSide: 0
external _i1.JSNumber FrontSide;/// Variable [BackSide]
///
/// BackSide: 1
external _i1.JSNumber BackSide;/// Variable [DoubleSide]
///
/// DoubleSide: 2
external _i1.JSNumber DoubleSide;/// Typedef [Side]
///
/// typeof FrontSide | typeof BackSide | typeof DoubleSide
typedef Side = _i1.JSString;
/// Variable [NoBlending]
///
/// NoBlending: 0
external _i1.JSNumber NoBlending;/// Variable [NormalBlending]
///
/// NormalBlending: 1
external _i1.JSNumber NormalBlending;/// Variable [AdditiveBlending]
///
/// AdditiveBlending: 2
external _i1.JSNumber AdditiveBlending;/// Variable [SubtractiveBlending]
///
/// SubtractiveBlending: 3
external _i1.JSNumber SubtractiveBlending;/// Variable [MultiplyBlending]
///
/// MultiplyBlending: 4
external _i1.JSNumber MultiplyBlending;/// Variable [CustomBlending]
///
/// CustomBlending: 5
external _i1.JSNumber CustomBlending;/// Variable [MaterialBlending]
///
/// MaterialBlending: 6
external _i1.JSNumber MaterialBlending;/// Typedef [Blending]
///
/// typeof NoBlending | typeof NormalBlending | typeof AdditiveBlending | typeof SubtractiveBlending | typeof MultiplyBlending | typeof CustomBlending | typeof MaterialBlending
typedef Blending = _i1.JSString;
/// Variable [AddEquation]
///
/// AddEquation: 100
external _i1.JSNumber AddEquation;/// Variable [SubtractEquation]
///
/// SubtractEquation: 101
external _i1.JSNumber SubtractEquation;/// Variable [ReverseSubtractEquation]
///
/// ReverseSubtractEquation: 102
external _i1.JSNumber ReverseSubtractEquation;/// Variable [MinEquation]
///
/// MinEquation: 103
external _i1.JSNumber MinEquation;/// Variable [MaxEquation]
///
/// MaxEquation: 104
external _i1.JSNumber MaxEquation;/// Typedef [BlendingEquation]
///
/// typeof AddEquation | typeof SubtractEquation | typeof ReverseSubtractEquation | typeof MinEquation | typeof MaxEquation
typedef BlendingEquation = _i1.JSString;
/// Variable [ZeroFactor]
///
/// ZeroFactor: 200
external _i1.JSNumber ZeroFactor;/// Variable [OneFactor]
///
/// OneFactor: 201
external _i1.JSNumber OneFactor;/// Variable [SrcColorFactor]
///
/// SrcColorFactor: 202
external _i1.JSNumber SrcColorFactor;/// Variable [OneMinusSrcColorFactor]
///
/// OneMinusSrcColorFactor: 203
external _i1.JSNumber OneMinusSrcColorFactor;/// Variable [SrcAlphaFactor]
///
/// SrcAlphaFactor: 204
external _i1.JSNumber SrcAlphaFactor;/// Variable [OneMinusSrcAlphaFactor]
///
/// OneMinusSrcAlphaFactor: 205
external _i1.JSNumber OneMinusSrcAlphaFactor;/// Variable [DstAlphaFactor]
///
/// DstAlphaFactor: 206
external _i1.JSNumber DstAlphaFactor;/// Variable [OneMinusDstAlphaFactor]
///
/// OneMinusDstAlphaFactor: 207
external _i1.JSNumber OneMinusDstAlphaFactor;/// Variable [DstColorFactor]
///
/// DstColorFactor: 208
external _i1.JSNumber DstColorFactor;/// Variable [OneMinusDstColorFactor]
///
/// OneMinusDstColorFactor: 209
external _i1.JSNumber OneMinusDstColorFactor;/// Variable [SrcAlphaSaturateFactor]
///
/// SrcAlphaSaturateFactor: 210
external _i1.JSNumber SrcAlphaSaturateFactor;/// Variable [ConstantColorFactor]
///
/// ConstantColorFactor: 211
external _i1.JSNumber ConstantColorFactor;/// Variable [OneMinusConstantColorFactor]
///
/// OneMinusConstantColorFactor: 212
external _i1.JSNumber OneMinusConstantColorFactor;/// Variable [ConstantAlphaFactor]
///
/// ConstantAlphaFactor: 213
external _i1.JSNumber ConstantAlphaFactor;/// Variable [OneMinusConstantAlphaFactor]
///
/// OneMinusConstantAlphaFactor: 214
external _i1.JSNumber OneMinusConstantAlphaFactor;/// Typedef [BlendingDstFactor]
///
/// typeof ZeroFactor | typeof OneFactor | typeof SrcColorFactor | typeof OneMinusSrcColorFactor | typeof SrcAlphaFactor | typeof OneMinusSrcAlphaFactor | typeof DstAlphaFactor | typeof OneMinusDstAlphaFactor | typeof DstColorFactor | typeof OneMinusDstColorFactor | typeof ConstantColorFactor | typeof OneMinusConstantColorFactor | typeof ConstantAlphaFactor | typeof OneMinusConstantAlphaFactor
typedef BlendingDstFactor = _i1.JSString;
/// Typedef [BlendingSrcFactor]
///
/// BlendingDstFactor | typeof SrcAlphaSaturateFactor
typedef BlendingSrcFactor = _i1.JSAny;
/// Variable [NeverDepth]
///
/// NeverDepth: 0
external _i1.JSNumber NeverDepth;/// Variable [AlwaysDepth]
///
/// AlwaysDepth: 1
external _i1.JSNumber AlwaysDepth;/// Variable [LessDepth]
///
/// LessDepth: 2
external _i1.JSNumber LessDepth;/// Variable [LessEqualDepth]
///
/// LessEqualDepth: 3
external _i1.JSNumber LessEqualDepth;/// Variable [EqualDepth]
///
/// EqualDepth: 4
external _i1.JSNumber EqualDepth;/// Variable [GreaterEqualDepth]
///
/// GreaterEqualDepth: 5
external _i1.JSNumber GreaterEqualDepth;/// Variable [GreaterDepth]
///
/// GreaterDepth: 6
external _i1.JSNumber GreaterDepth;/// Variable [NotEqualDepth]
///
/// NotEqualDepth: 7
external _i1.JSNumber NotEqualDepth;/// Typedef [DepthModes]
///
/// typeof NeverDepth | typeof AlwaysDepth | typeof LessDepth | typeof LessEqualDepth | typeof EqualDepth | typeof GreaterEqualDepth | typeof GreaterDepth | typeof NotEqualDepth
typedef DepthModes = _i1.JSString;
/// Variable [MultiplyOperation]
///
/// MultiplyOperation: 0
external _i1.JSNumber MultiplyOperation;/// Variable [MixOperation]
///
/// MixOperation: 1
external _i1.JSNumber MixOperation;/// Variable [AddOperation]
///
/// AddOperation: 2
external _i1.JSNumber AddOperation;/// Typedef [Combine]
///
/// typeof MultiplyOperation | typeof MixOperation | typeof AddOperation
typedef Combine = _i1.JSString;
/// Variable [NoToneMapping]
///
/// NoToneMapping: 0
external _i1.JSNumber NoToneMapping;/// Variable [LinearToneMapping]
///
/// LinearToneMapping: 1
external _i1.JSNumber LinearToneMapping;/// Variable [ReinhardToneMapping]
///
/// ReinhardToneMapping: 2
external _i1.JSNumber ReinhardToneMapping;/// Variable [CineonToneMapping]
///
/// CineonToneMapping: 3
external _i1.JSNumber CineonToneMapping;/// Variable [ACESFilmicToneMapping]
///
/// ACESFilmicToneMapping: 4
external _i1.JSNumber ACESFilmicToneMapping;/// Variable [CustomToneMapping]
///
/// CustomToneMapping: 5
external _i1.JSNumber CustomToneMapping;/// Variable [AgXToneMapping]
///
/// AgXToneMapping: 6
external _i1.JSNumber AgXToneMapping;/// Variable [NeutralToneMapping]
///
/// NeutralToneMapping: 7
external _i1.JSNumber NeutralToneMapping;/// Typedef [ToneMapping]
///
/// typeof NoToneMapping | typeof LinearToneMapping | typeof ReinhardToneMapping | typeof CineonToneMapping | typeof ACESFilmicToneMapping | typeof CustomToneMapping | typeof AgXToneMapping | typeof NeutralToneMapping
typedef ToneMapping = _i1.JSString;
/// Variable [AttachedBindMode]
///
/// AttachedBindMode: "attached"
external _i1.JSString AttachedBindMode;/// Variable [DetachedBindMode]
///
/// DetachedBindMode: "detached"
external _i1.JSString DetachedBindMode;/// Typedef [BindMode]
///
/// typeof AttachedBindMode | typeof DetachedBindMode
typedef BindMode = _i1.JSString;
/// Variable [UVMapping]
///
/// UVMapping: 300
external _i1.JSNumber UVMapping;/// Variable [CubeReflectionMapping]
///
/// CubeReflectionMapping: 301
external _i1.JSNumber CubeReflectionMapping;/// Variable [CubeRefractionMapping]
///
/// CubeRefractionMapping: 302
external _i1.JSNumber CubeRefractionMapping;/// Variable [CubeUVReflectionMapping]
///
/// CubeUVReflectionMapping: 306
external _i1.JSNumber CubeUVReflectionMapping;/// Variable [EquirectangularReflectionMapping]
///
/// EquirectangularReflectionMapping: 303
external _i1.JSNumber EquirectangularReflectionMapping;/// Variable [EquirectangularRefractionMapping]
///
/// EquirectangularRefractionMapping: 304
external _i1.JSNumber EquirectangularRefractionMapping;/// Typedef [Mapping]
///
/// typeof UVMapping | typeof EquirectangularReflectionMapping | typeof EquirectangularRefractionMapping
typedef Mapping = _i1.JSString;
/// Typedef [CubeTextureMapping]
///
/// typeof CubeReflectionMapping | typeof CubeRefractionMapping | typeof CubeUVReflectionMapping
typedef CubeTextureMapping = _i1.JSString;
/// Typedef [AnyMapping]
///
/// Mapping | CubeTextureMapping
typedef AnyMapping = _i1.JSAny;
/// Variable [RepeatWrapping]
///
/// RepeatWrapping: 1000
external _i1.JSNumber RepeatWrapping;/// Variable [ClampToEdgeWrapping]
///
/// ClampToEdgeWrapping: 1001
external _i1.JSNumber ClampToEdgeWrapping;/// Variable [MirroredRepeatWrapping]
///
/// MirroredRepeatWrapping: 1002
external _i1.JSNumber MirroredRepeatWrapping;/// Typedef [Wrapping]
///
/// typeof RepeatWrapping | typeof ClampToEdgeWrapping | typeof MirroredRepeatWrapping
typedef Wrapping = _i1.JSString;
/// Variable [NearestFilter]
///
/// NearestFilter: 1003
external _i1.JSNumber NearestFilter;/// Variable [NearestMipmapNearestFilter]
///
/// NearestMipmapNearestFilter: 1004
external _i1.JSNumber NearestMipmapNearestFilter;/// Variable [NearestMipMapNearestFilter]
///
/// NearestMipMapNearestFilter: 1004
external _i1.JSNumber NearestMipMapNearestFilter;/// Variable [NearestMipmapLinearFilter]
///
/// NearestMipmapLinearFilter: 1005
external _i1.JSNumber NearestMipmapLinearFilter;/// Variable [NearestMipMapLinearFilter]
///
/// NearestMipMapLinearFilter: 1005
external _i1.JSNumber NearestMipMapLinearFilter;/// Variable [LinearFilter]
///
/// LinearFilter: 1006
external _i1.JSNumber LinearFilter;/// Variable [LinearMipmapNearestFilter]
///
/// LinearMipmapNearestFilter: 1007
external _i1.JSNumber LinearMipmapNearestFilter;/// Variable [LinearMipMapNearestFilter]
///
/// LinearMipMapNearestFilter: 1007
external _i1.JSNumber LinearMipMapNearestFilter;/// Variable [LinearMipmapLinearFilter]
///
/// LinearMipmapLinearFilter: 1008
external _i1.JSNumber LinearMipmapLinearFilter;/// Variable [LinearMipMapLinearFilter]
///
/// LinearMipMapLinearFilter: 1008
external _i1.JSNumber LinearMipMapLinearFilter;/// Typedef [MagnificationTextureFilter]
///
/// typeof NearestFilter | typeof LinearFilter
typedef MagnificationTextureFilter = _i1.JSString;
/// Typedef [MinificationTextureFilter]
///
/// typeof NearestFilter | typeof NearestMipmapNearestFilter | typeof NearestMipMapNearestFilter | typeof NearestMipmapLinearFilter | typeof NearestMipMapLinearFilter | typeof LinearFilter | typeof LinearMipmapNearestFilter | typeof LinearMipMapNearestFilter | typeof LinearMipmapLinearFilter | typeof LinearMipMapLinearFilter
typedef MinificationTextureFilter = _i1.JSString;
/// Typedef [TextureFilter]
///
/// MagnificationTextureFilter | MinificationTextureFilter
typedef TextureFilter = _i1.JSAny;
/// Variable [UnsignedByteType]
///
/// UnsignedByteType: 1009
external _i1.JSNumber UnsignedByteType;/// Variable [ByteType]
///
/// ByteType: 1010
external _i1.JSNumber ByteType;/// Variable [ShortType]
///
/// ShortType: 1011
external _i1.JSNumber ShortType;/// Variable [UnsignedShortType]
///
/// UnsignedShortType: 1012
external _i1.JSNumber UnsignedShortType;/// Variable [IntType]
///
/// IntType: 1013
external _i1.JSNumber IntType;/// Variable [UnsignedIntType]
///
/// UnsignedIntType: 1014
external _i1.JSNumber UnsignedIntType;/// Variable [FloatType]
///
/// FloatType: 1015
external _i1.JSNumber FloatType;/// Variable [HalfFloatType]
///
/// HalfFloatType: 1016
external _i1.JSNumber HalfFloatType;/// Variable [UnsignedShortfourfourfourfourType]
///
/// UnsignedShortfourfourfourfourType: 1017
@_i1.JS('UnsignedShort4444Type')
external _i1.JSNumber UnsignedShortfourfourfourfourType;/// Variable [UnsignedShortfivefivefiveoneType]
///
/// UnsignedShortfivefivefiveoneType: 1018
@_i1.JS('UnsignedShort5551Type')
external _i1.JSNumber UnsignedShortfivefivefiveoneType;/// Variable [UnsignedInttwofoureightType]
///
/// UnsignedInttwofoureightType: 1020
@_i1.JS('UnsignedInt248Type')
external _i1.JSNumber UnsignedInttwofoureightType;/// Variable [UnsignedIntfivenineninenineType]
///
/// UnsignedIntfivenineninenineType: 35902
@_i1.JS('UnsignedInt5999Type')
external _i1.JSNumber UnsignedIntfivenineninenineType;/// Variable [UnsignedIntonezerooneoneoneoneType]
///
/// UnsignedIntonezerooneoneoneoneType: 35899
@_i1.JS('UnsignedInt101111Type')
external _i1.JSNumber UnsignedIntonezerooneoneoneoneType;/// Typedef [AttributeGPUType]
///
/// typeof FloatType | typeof IntType
typedef AttributeGPUType = _i1.JSString;
/// Typedef [TextureDataType]
///
/// typeof UnsignedByteType | typeof ByteType | typeof ShortType | typeof UnsignedShortType | typeof IntType | typeof UnsignedIntType | typeof FloatType | typeof HalfFloatType | typeof UnsignedShort4444Type | typeof UnsignedShort5551Type | typeof UnsignedInt248Type | typeof UnsignedInt5999Type | typeof UnsignedInt101111Type
typedef TextureDataType = _i1.JSString;
/// Variable [AlphaFormat]
///
/// AlphaFormat: 1021
external _i1.JSNumber AlphaFormat;/// Variable [RGBFormat]
///
/// RGBFormat: 1022
external _i1.JSNumber RGBFormat;/// Variable [RGBAFormat]
///
/// RGBAFormat: 1023
external _i1.JSNumber RGBAFormat;/// Variable [DepthFormat]
///
/// DepthFormat: 1026
external _i1.JSNumber DepthFormat;/// Variable [DepthStencilFormat]
///
/// DepthStencilFormat: 1027
external _i1.JSNumber DepthStencilFormat;/// Variable [RedFormat]
///
/// RedFormat: 1028
external _i1.JSNumber RedFormat;/// Variable [RedIntegerFormat]
///
/// RedIntegerFormat: 1029
external _i1.JSNumber RedIntegerFormat;/// Variable [RGFormat]
///
/// RGFormat: 1030
external _i1.JSNumber RGFormat;/// Variable [RGIntegerFormat]
///
/// RGIntegerFormat: 1031
external _i1.JSNumber RGIntegerFormat;/// Variable [RGBIntegerFormat]
///
/// RGBIntegerFormat: 1032
external _i1.JSNumber RGBIntegerFormat;/// Variable [RGBAIntegerFormat]
///
/// RGBAIntegerFormat: 1033
external _i1.JSNumber RGBAIntegerFormat;/// Typedef [PixelFormat]
///
/// typeof AlphaFormat | typeof RGBFormat | typeof RGBAFormat | typeof DepthFormat | typeof DepthStencilFormat | typeof RedFormat | typeof RedIntegerFormat | typeof RGFormat | typeof RGIntegerFormat | typeof RGBIntegerFormat | typeof RGBAIntegerFormat
typedef PixelFormat = _i1.JSString;
/// Typedef [DepthTexturePixelFormat]
///
/// typeof DepthFormat | typeof DepthStencilFormat
typedef DepthTexturePixelFormat = _i1.JSString;
/// Variable [RGB_SthreeTC_DXTone_Format]
///
/// RGB_SthreeTC_DXTone_Format: 33776
@_i1.JS('RGB_S3TC_DXT1_Format')
external _i1.JSNumber RGB_SthreeTC_DXTone_Format;/// Variable [RGBA_SthreeTC_DXTone_Format]
///
/// RGBA_SthreeTC_DXTone_Format: 33777
@_i1.JS('RGBA_S3TC_DXT1_Format')
external _i1.JSNumber RGBA_SthreeTC_DXTone_Format;/// Variable [RGBA_SthreeTC_DXTthree_Format]
///
/// RGBA_SthreeTC_DXTthree_Format: 33778
@_i1.JS('RGBA_S3TC_DXT3_Format')
external _i1.JSNumber RGBA_SthreeTC_DXTthree_Format;/// Variable [RGBA_SthreeTC_DXTfive_Format]
///
/// RGBA_SthreeTC_DXTfive_Format: 33779
@_i1.JS('RGBA_S3TC_DXT5_Format')
external _i1.JSNumber RGBA_SthreeTC_DXTfive_Format;/// Variable [RGB_PVRTC_fourBPPVone_Format]
///
/// RGB_PVRTC_fourBPPVone_Format: 35840
@_i1.JS('RGB_PVRTC_4BPPV1_Format')
external _i1.JSNumber RGB_PVRTC_fourBPPVone_Format;/// Variable [RGB_PVRTC_twoBPPVone_Format]
///
/// RGB_PVRTC_twoBPPVone_Format: 35841
@_i1.JS('RGB_PVRTC_2BPPV1_Format')
external _i1.JSNumber RGB_PVRTC_twoBPPVone_Format;/// Variable [RGBA_PVRTC_fourBPPVone_Format]
///
/// RGBA_PVRTC_fourBPPVone_Format: 35842
@_i1.JS('RGBA_PVRTC_4BPPV1_Format')
external _i1.JSNumber RGBA_PVRTC_fourBPPVone_Format;/// Variable [RGBA_PVRTC_twoBPPVone_Format]
///
/// RGBA_PVRTC_twoBPPVone_Format: 35843
@_i1.JS('RGBA_PVRTC_2BPPV1_Format')
external _i1.JSNumber RGBA_PVRTC_twoBPPVone_Format;/// Variable [RGB_ETCone_Format]
///
/// RGB_ETCone_Format: 36196
@_i1.JS('RGB_ETC1_Format')
external _i1.JSNumber RGB_ETCone_Format;/// Variable [RGB_ETCtwo_Format]
///
/// RGB_ETCtwo_Format: 37492
@_i1.JS('RGB_ETC2_Format')
external _i1.JSNumber RGB_ETCtwo_Format;/// Variable [RGBA_ETCtwo_EAC_Format]
///
/// RGBA_ETCtwo_EAC_Format: 37496
@_i1.JS('RGBA_ETC2_EAC_Format')
external _i1.JSNumber RGBA_ETCtwo_EAC_Format;/// Variable [Roneone_EAC_Format]
///
/// Roneone_EAC_Format: 37488
@_i1.JS('R11_EAC_Format')
external _i1.JSNumber Roneone_EAC_Format;/// Variable [SIGNED_Roneone_EAC_Format]
///
/// SIGNED_Roneone_EAC_Format: 37489
@_i1.JS('SIGNED_R11_EAC_Format')
external _i1.JSNumber SIGNED_Roneone_EAC_Format;/// Variable [RGoneone_EAC_Format]
///
/// RGoneone_EAC_Format: 37490
@_i1.JS('RG11_EAC_Format')
external _i1.JSNumber RGoneone_EAC_Format;/// Variable [SIGNED_RGoneone_EAC_Format]
///
/// SIGNED_RGoneone_EAC_Format: 37491
@_i1.JS('SIGNED_RG11_EAC_Format')
external _i1.JSNumber SIGNED_RGoneone_EAC_Format;/// Variable [RGBA_ASTC_fourxfour_Format]
///
/// RGBA_ASTC_fourxfour_Format: 37808
@_i1.JS('RGBA_ASTC_4x4_Format')
external _i1.JSNumber RGBA_ASTC_fourxfour_Format;/// Variable [RGBA_ASTC_fivexfour_Format]
///
/// RGBA_ASTC_fivexfour_Format: 37809
@_i1.JS('RGBA_ASTC_5x4_Format')
external _i1.JSNumber RGBA_ASTC_fivexfour_Format;/// Variable [RGBA_ASTC_fivexfive_Format]
///
/// RGBA_ASTC_fivexfive_Format: 37810
@_i1.JS('RGBA_ASTC_5x5_Format')
external _i1.JSNumber RGBA_ASTC_fivexfive_Format;/// Variable [RGBA_ASTC_sixxfive_Format]
///
/// RGBA_ASTC_sixxfive_Format: 37811
@_i1.JS('RGBA_ASTC_6x5_Format')
external _i1.JSNumber RGBA_ASTC_sixxfive_Format;/// Variable [RGBA_ASTC_sixxsix_Format]
///
/// RGBA_ASTC_sixxsix_Format: 37812
@_i1.JS('RGBA_ASTC_6x6_Format')
external _i1.JSNumber RGBA_ASTC_sixxsix_Format;/// Variable [RGBA_ASTC_eightxfive_Format]
///
/// RGBA_ASTC_eightxfive_Format: 37813
@_i1.JS('RGBA_ASTC_8x5_Format')
external _i1.JSNumber RGBA_ASTC_eightxfive_Format;/// Variable [RGBA_ASTC_eightxsix_Format]
///
/// RGBA_ASTC_eightxsix_Format: 37814
@_i1.JS('RGBA_ASTC_8x6_Format')
external _i1.JSNumber RGBA_ASTC_eightxsix_Format;/// Variable [RGBA_ASTC_eightxeight_Format]
///
/// RGBA_ASTC_eightxeight_Format: 37815
@_i1.JS('RGBA_ASTC_8x8_Format')
external _i1.JSNumber RGBA_ASTC_eightxeight_Format;/// Variable [RGBA_ASTC_onezeroxfive_Format]
///
/// RGBA_ASTC_onezeroxfive_Format: 37816
@_i1.JS('RGBA_ASTC_10x5_Format')
external _i1.JSNumber RGBA_ASTC_onezeroxfive_Format;/// Variable [RGBA_ASTC_onezeroxsix_Format]
///
/// RGBA_ASTC_onezeroxsix_Format: 37817
@_i1.JS('RGBA_ASTC_10x6_Format')
external _i1.JSNumber RGBA_ASTC_onezeroxsix_Format;/// Variable [RGBA_ASTC_onezeroxeight_Format]
///
/// RGBA_ASTC_onezeroxeight_Format: 37818
@_i1.JS('RGBA_ASTC_10x8_Format')
external _i1.JSNumber RGBA_ASTC_onezeroxeight_Format;/// Variable [RGBA_ASTC_onezeroxonezero_Format]
///
/// RGBA_ASTC_onezeroxonezero_Format: 37819
@_i1.JS('RGBA_ASTC_10x10_Format')
external _i1.JSNumber RGBA_ASTC_onezeroxonezero_Format;/// Variable [RGBA_ASTC_onetwoxonezero_Format]
///
/// RGBA_ASTC_onetwoxonezero_Format: 37820
@_i1.JS('RGBA_ASTC_12x10_Format')
external _i1.JSNumber RGBA_ASTC_onetwoxonezero_Format;/// Variable [RGBA_ASTC_onetwoxonetwo_Format]
///
/// RGBA_ASTC_onetwoxonetwo_Format: 37821
@_i1.JS('RGBA_ASTC_12x12_Format')
external _i1.JSNumber RGBA_ASTC_onetwoxonetwo_Format;/// Variable [RGBA_BPTC_Format]
///
/// RGBA_BPTC_Format: 36492
external _i1.JSNumber RGBA_BPTC_Format;/// Variable [RGB_BPTC_SIGNED_Format]
///
/// RGB_BPTC_SIGNED_Format = 36494
external _i1.JSAny RGB_BPTC_SIGNED_Format;/// Variable [RGB_BPTC_UNSIGNED_Format]
///
/// RGB_BPTC_UNSIGNED_Format = 36495
external _i1.JSAny RGB_BPTC_UNSIGNED_Format;/// Variable [RED_RGTCone_Format]
///
/// RED_RGTCone_Format: 36283
@_i1.JS('RED_RGTC1_Format')
external _i1.JSNumber RED_RGTCone_Format;/// Variable [SIGNED_RED_RGTCone_Format]
///
/// SIGNED_RED_RGTCone_Format: 36284
@_i1.JS('SIGNED_RED_RGTC1_Format')
external _i1.JSNumber SIGNED_RED_RGTCone_Format;/// Variable [RED_GREEN_RGTCtwo_Format]
///
/// RED_GREEN_RGTCtwo_Format: 36285
@_i1.JS('RED_GREEN_RGTC2_Format')
external _i1.JSNumber RED_GREEN_RGTCtwo_Format;/// Variable [SIGNED_RED_GREEN_RGTCtwo_Format]
///
/// SIGNED_RED_GREEN_RGTCtwo_Format: 36286
@_i1.JS('SIGNED_RED_GREEN_RGTC2_Format')
external _i1.JSNumber SIGNED_RED_GREEN_RGTCtwo_Format;/// Typedef [CompressedPixelFormat]
///
/// typeof RGB_S3TC_DXT1_Format | typeof RGBA_S3TC_DXT1_Format | typeof RGBA_S3TC_DXT3_Format | typeof RGBA_S3TC_DXT5_Format | typeof RGB_PVRTC_4BPPV1_Format | typeof RGB_PVRTC_2BPPV1_Format | typeof RGBA_PVRTC_4BPPV1_Format | typeof RGBA_PVRTC_2BPPV1_Format | typeof RGB_ETC1_Format | typeof RGB_ETC2_Format | typeof RGBA_ETC2_EAC_Format | typeof R11_EAC_Format | typeof SIGNED_R11_EAC_Format | typeof RG11_EAC_Format | typeof SIGNED_RG11_EAC_Format | typeof RGBA_ASTC_4x4_Format | typeof RGBA_ASTC_5x4_Format | typeof RGBA_ASTC_5x5_Format | typeof RGBA_ASTC_6x5_Format | typeof RGBA_ASTC_6x6_Format | typeof RGBA_ASTC_8x5_Format | typeof RGBA_ASTC_8x6_Format | typeof RGBA_ASTC_8x8_Format | typeof RGBA_ASTC_10x5_Format | typeof RGBA_ASTC_10x6_Format | typeof RGBA_ASTC_10x8_Format | typeof RGBA_ASTC_10x10_Format | typeof RGBA_ASTC_12x10_Format | typeof RGBA_ASTC_12x12_Format | typeof RGBA_BPTC_Format | typeof RGB_BPTC_SIGNED_Format | typeof RGB_BPTC_UNSIGNED_Format | typeof RED_RGTC1_Format | typeof SIGNED_RED_RGTC1_Format | typeof RED_GREEN_RGTC2_Format | typeof SIGNED_RED_GREEN_RGTC2_Format
typedef CompressedPixelFormat = _i1.JSString;
/// Typedef [AnyPixelFormat]
///
/// PixelFormat | DepthTexturePixelFormat | CompressedPixelFormat
typedef AnyPixelFormat = _i1.JSAny;
/// Variable [LoopOnce]
///
/// LoopOnce: 2200
external _i1.JSNumber LoopOnce;/// Variable [LoopRepeat]
///
/// LoopRepeat: 2201
external _i1.JSNumber LoopRepeat;/// Variable [LoopPingPong]
///
/// LoopPingPong: 2202
external _i1.JSNumber LoopPingPong;/// Typedef [AnimationActionLoopStyles]
///
/// typeof LoopOnce | typeof LoopRepeat | typeof LoopPingPong
typedef AnimationActionLoopStyles = _i1.JSString;
/// Variable [InterpolateDiscrete]
///
/// InterpolateDiscrete: 2300
external _i1.JSNumber InterpolateDiscrete;/// Variable [InterpolateLinear]
///
/// InterpolateLinear: 2301
external _i1.JSNumber InterpolateLinear;/// Variable [InterpolateSmooth]
///
/// InterpolateSmooth: 2302
external _i1.JSNumber InterpolateSmooth;/// Variable [InterpolateBezier]
///
/// InterpolateBezier: 2303
external _i1.JSNumber InterpolateBezier;/// Typedef [InterpolationModes]
///
/// typeof InterpolateDiscrete | typeof InterpolateLinear | typeof InterpolateSmooth | typeof InterpolateBezier
typedef InterpolationModes = _i1.JSString;
/// Variable [ZeroCurvatureEnding]
///
/// ZeroCurvatureEnding: 2400
external _i1.JSNumber ZeroCurvatureEnding;/// Variable [ZeroSlopeEnding]
///
/// ZeroSlopeEnding: 2401
external _i1.JSNumber ZeroSlopeEnding;/// Variable [WrapAroundEnding]
///
/// WrapAroundEnding: 2402
external _i1.JSNumber WrapAroundEnding;/// Typedef [InterpolationEndingModes]
///
/// typeof ZeroCurvatureEnding | typeof ZeroSlopeEnding | typeof WrapAroundEnding
typedef InterpolationEndingModes = _i1.JSString;
/// Variable [NormalAnimationBlendMode]
///
/// NormalAnimationBlendMode: 2500
external _i1.JSNumber NormalAnimationBlendMode;/// Variable [AdditiveAnimationBlendMode]
///
/// AdditiveAnimationBlendMode: 2501
external _i1.JSNumber AdditiveAnimationBlendMode;/// Typedef [AnimationBlendMode]
///
/// typeof NormalAnimationBlendMode | typeof AdditiveAnimationBlendMode
typedef AnimationBlendMode = _i1.JSString;
/// Variable [TrianglesDrawMode]
///
/// TrianglesDrawMode: 0
external _i1.JSNumber TrianglesDrawMode;/// Variable [TriangleStripDrawMode]
///
/// TriangleStripDrawMode: 1
external _i1.JSNumber TriangleStripDrawMode;/// Variable [TriangleFanDrawMode]
///
/// TriangleFanDrawMode: 2
external _i1.JSNumber TriangleFanDrawMode;/// Typedef [TrianglesDrawModes]
///
/// typeof TrianglesDrawMode | typeof TriangleStripDrawMode | typeof TriangleFanDrawMode
typedef TrianglesDrawModes = _i1.JSString;
/// Variable [BasicDepthPacking]
///
/// BasicDepthPacking: 3200
external _i1.JSNumber BasicDepthPacking;/// Variable [RGBADepthPacking]
///
/// RGBADepthPacking: 3201
external _i1.JSNumber RGBADepthPacking;/// Variable [RGBDepthPacking]
///
/// RGBDepthPacking: 3202
external _i1.JSNumber RGBDepthPacking;/// Variable [RGDepthPacking]
///
/// RGDepthPacking: 3203
external _i1.JSNumber RGDepthPacking;/// Typedef [DepthPackingStrategies]
///
/// typeof BasicDepthPacking | typeof RGBADepthPacking | typeof RGBDepthPacking | typeof RGDepthPacking
typedef DepthPackingStrategies = _i1.JSString;
/// Variable [TangentSpaceNormalMap]
///
/// TangentSpaceNormalMap: 0
external _i1.JSNumber TangentSpaceNormalMap;/// Variable [ObjectSpaceNormalMap]
///
/// ObjectSpaceNormalMap: 1
external _i1.JSNumber ObjectSpaceNormalMap;/// Typedef [NormalMapTypes]
///
/// typeof TangentSpaceNormalMap | typeof ObjectSpaceNormalMap
typedef NormalMapTypes = _i1.JSString;
/// Variable [NoColorSpace]
///
/// NoColorSpace: ""
external _i1.JSString NoColorSpace;/// Variable [SRGBColorSpace]
///
/// SRGBColorSpace: "srgb"
external _i1.JSString SRGBColorSpace;/// Variable [LinearSRGBColorSpace]
///
/// LinearSRGBColorSpace: "srgb-linear"
external _i1.JSString LinearSRGBColorSpace;/// Typedef [ColorSpace]
///
/// typeof NoColorSpace | typeof SRGBColorSpace | typeof LinearSRGBColorSpace
typedef ColorSpace = _i1.JSString;
/// Variable [LinearTransfer]
///
/// LinearTransfer: "linear"
external _i1.JSString LinearTransfer;/// Variable [SRGBTransfer]
///
/// SRGBTransfer: "srgb"
external _i1.JSString SRGBTransfer;/// Typedef [ColorSpaceTransfer]
///
/// typeof LinearTransfer | typeof SRGBTransfer
typedef ColorSpaceTransfer = _i1.JSString;
/// Variable [NoNormalPacking]
///
/// NoNormalPacking: ""
external _i1.JSString NoNormalPacking;/// Variable [NormalRGPacking]
///
/// NormalRGPacking: "rg"
external _i1.JSString NormalRGPacking;/// Variable [NormalGAPacking]
///
/// NormalGAPacking: "ga"
external _i1.JSString NormalGAPacking;/// Typedef [NormalPacking]
///
/// typeof NoNormalPacking | typeof NormalRGPacking | typeof NormalGAPacking
typedef NormalPacking = _i1.JSString;
/// Variable [ZeroStencilOp]
///
/// ZeroStencilOp: 0
external _i1.JSNumber ZeroStencilOp;/// Variable [KeepStencilOp]
///
/// KeepStencilOp: 7680
external _i1.JSNumber KeepStencilOp;/// Variable [ReplaceStencilOp]
///
/// ReplaceStencilOp: 7681
external _i1.JSNumber ReplaceStencilOp;/// Variable [IncrementStencilOp]
///
/// IncrementStencilOp: 7682
external _i1.JSNumber IncrementStencilOp;/// Variable [DecrementStencilOp]
///
/// DecrementStencilOp: 7283
external _i1.JSNumber DecrementStencilOp;/// Variable [IncrementWrapStencilOp]
///
/// IncrementWrapStencilOp: 34055
external _i1.JSNumber IncrementWrapStencilOp;/// Variable [DecrementWrapStencilOp]
///
/// DecrementWrapStencilOp: 34056
external _i1.JSNumber DecrementWrapStencilOp;/// Variable [InvertStencilOp]
///
/// InvertStencilOp: 5386
external _i1.JSNumber InvertStencilOp;/// Typedef [StencilOp]
///
/// typeof ZeroStencilOp | typeof KeepStencilOp | typeof ReplaceStencilOp | typeof IncrementStencilOp | typeof DecrementStencilOp | typeof IncrementWrapStencilOp | typeof DecrementWrapStencilOp | typeof InvertStencilOp
typedef StencilOp = _i1.JSString;
/// Variable [NeverStencilFunc]
///
/// NeverStencilFunc: 512
external _i1.JSNumber NeverStencilFunc;/// Variable [LessStencilFunc]
///
/// LessStencilFunc: 513
external _i1.JSNumber LessStencilFunc;/// Variable [EqualStencilFunc]
///
/// EqualStencilFunc: 514
external _i1.JSNumber EqualStencilFunc;/// Variable [LessEqualStencilFunc]
///
/// LessEqualStencilFunc: 515
external _i1.JSNumber LessEqualStencilFunc;/// Variable [GreaterStencilFunc]
///
/// GreaterStencilFunc: 516
external _i1.JSNumber GreaterStencilFunc;/// Variable [NotEqualStencilFunc]
///
/// NotEqualStencilFunc: 517
external _i1.JSNumber NotEqualStencilFunc;/// Variable [GreaterEqualStencilFunc]
///
/// GreaterEqualStencilFunc: 518
external _i1.JSNumber GreaterEqualStencilFunc;/// Variable [AlwaysStencilFunc]
///
/// AlwaysStencilFunc: 519
external _i1.JSNumber AlwaysStencilFunc;/// Typedef [StencilFunc]
///
/// typeof NeverStencilFunc | typeof LessStencilFunc | typeof EqualStencilFunc | typeof LessEqualStencilFunc | typeof GreaterStencilFunc | typeof NotEqualStencilFunc | typeof GreaterEqualStencilFunc | typeof AlwaysStencilFunc
typedef StencilFunc = _i1.JSString;
/// Variable [NeverCompare]
///
/// NeverCompare: 512
external _i1.JSNumber NeverCompare;/// Variable [LessCompare]
///
/// LessCompare: 513
external _i1.JSNumber LessCompare;/// Variable [EqualCompare]
///
/// EqualCompare: 514
external _i1.JSNumber EqualCompare;/// Variable [LessEqualCompare]
///
/// LessEqualCompare: 515
external _i1.JSNumber LessEqualCompare;/// Variable [GreaterCompare]
///
/// GreaterCompare: 516
external _i1.JSNumber GreaterCompare;/// Variable [NotEqualCompare]
///
/// NotEqualCompare: 517
external _i1.JSNumber NotEqualCompare;/// Variable [GreaterEqualCompare]
///
/// GreaterEqualCompare: 518
external _i1.JSNumber GreaterEqualCompare;/// Variable [AlwaysCompare]
///
/// AlwaysCompare: 519
external _i1.JSNumber AlwaysCompare;/// Typedef [TextureComparisonFunction]
///
/// typeof NeverCompare | typeof LessCompare | typeof EqualCompare | typeof LessEqualCompare | typeof GreaterCompare | typeof NotEqualCompare | typeof GreaterEqualCompare | typeof AlwaysCompare
typedef TextureComparisonFunction = _i1.JSString;
/// Variable [StaticDrawUsage]
///
/// StaticDrawUsage: 35044
external _i1.JSNumber StaticDrawUsage;/// Variable [DynamicDrawUsage]
///
/// DynamicDrawUsage: 35048
external _i1.JSNumber DynamicDrawUsage;/// Variable [StreamDrawUsage]
///
/// StreamDrawUsage: 35040
external _i1.JSNumber StreamDrawUsage;/// Variable [StaticReadUsage]
///
/// StaticReadUsage: 35045
external _i1.JSNumber StaticReadUsage;/// Variable [DynamicReadUsage]
///
/// DynamicReadUsage: 35049
external _i1.JSNumber DynamicReadUsage;/// Variable [StreamReadUsage]
///
/// StreamReadUsage: 35041
external _i1.JSNumber StreamReadUsage;/// Variable [StaticCopyUsage]
///
/// StaticCopyUsage: 35046
external _i1.JSNumber StaticCopyUsage;/// Variable [DynamicCopyUsage]
///
/// DynamicCopyUsage: 35050
external _i1.JSNumber DynamicCopyUsage;/// Variable [StreamCopyUsage]
///
/// StreamCopyUsage: 35042
external _i1.JSNumber StreamCopyUsage;/// Typedef [Usage]
///
/// typeof StaticDrawUsage | typeof DynamicDrawUsage | typeof StreamDrawUsage | typeof StaticReadUsage | typeof DynamicReadUsage | typeof StreamReadUsage | typeof StaticCopyUsage | typeof DynamicCopyUsage | typeof StreamCopyUsage
typedef Usage = _i1.JSString;
/// Variable [GLSLone]
///
/// GLSLone: "100"
@_i1.JS('GLSL1')
external _i1.JSString GLSLone;/// Variable [GLSLthree]
///
/// GLSLthree: "300 es"
@_i1.JS('GLSL3')
external _i1.JSString GLSLthree;/// Typedef [GLSLVersion]
///
/// typeof GLSL1 | typeof GLSL3
typedef GLSLVersion = _i1.JSString;
/// Variable [WebGLCoordinateSystem]
///
/// WebGLCoordinateSystem: 2000
external _i1.JSNumber WebGLCoordinateSystem;/// Variable [WebGPUCoordinateSystem]
///
/// WebGPUCoordinateSystem: 2001
external _i1.JSNumber WebGPUCoordinateSystem;/// Typedef [CoordinateSystem]
///
/// typeof WebGLCoordinateSystem | typeof WebGPUCoordinateSystem
typedef CoordinateSystem = _i1.JSString;
/// Variable [TimestampQuery]
///
/// TimestampQuery: TimestampQuery$TypeLiteral
external TimestampQuery$TypeLiteral TimestampQuery;/// Typedef [TimestampQuery$Type]
///
/// typeof TimestampQuery.COMPUTE | typeof TimestampQuery.RENDER
typedef TimestampQuery$Type = _i1.JSString;
/// Variable [InterpolationSamplingType]
///
/// InterpolationSamplingType: InterpolationSamplingType$TypeLiteral
external InterpolationSamplingType$TypeLiteral InterpolationSamplingType;/// Typedef [InterpolationSamplingType$Type]
///
/// typeof InterpolationSamplingType.PERSPECTIVE | typeof InterpolationSamplingType.LINEAR | typeof InterpolationSamplingType.FLAT
typedef InterpolationSamplingType$Type = _i1.JSString;
/// Variable [InterpolationSamplingMode]
///
/// InterpolationSamplingMode: InterpolationSamplingMode$TypeLiteral
external InterpolationSamplingMode$TypeLiteral InterpolationSamplingMode;/// Typedef [InterpolationSamplingMode$Type]
///
/// typeof InterpolationSamplingMode.NORMAL | typeof InterpolationSamplingMode.CENTROID | typeof InterpolationSamplingMode.SAMPLE | typeof InterpolationSamplingMode.FIRST | typeof InterpolationSamplingMode.EITHER
typedef InterpolationSamplingMode$Type = _i1.JSString;
/// Variable [Compatibility]
///
/// Compatibility: Compatibility$TypeLiteral
external Compatibility$TypeLiteral Compatibility;/// Typedef [Compatibility$Type]
///
/// typeof Compatibility.TEXTURE_COMPARE
typedef Compatibility$Type = _i1.JSString;
/// Typedef [PixelFormatGPU]
///
/// "ALPHA" | "RGB" | "RGBA" | "LUMINANCE" | "LUMINANCE_ALPHA" | "RED_INTEGER" | "R8" | "R8_SNORM" | "R8I" | "R8UI" | "R16I" | "R16UI" | "R16F" | "R32I" | "R32UI" | "R32F" | "RG8" | "RG8_SNORM" | "RG8I" | "RG8UI" | "RG16I" | "RG16UI" | "RG16F" | "RG32I" | "RG32UI" | "RG32F" | "RGB565" | "RGB8" | "RGB8_SNORM" | "RGB8I" | "RGB8UI" | "RGB16I" | "RGB16UI" | "RGB16F" | "RGB32I" | "RGB32UI" | "RGB32F" | "RGB9_E5" | "SRGB8" | "R11F_G11F_B10F" | "RGBA4" | "RGBA8" | "RGBA8_SNORM" | "RGBA8I" | "RGBA8UI" | "RGBA16I" | "RGBA16UI" | "RGBA16F" | "RGBA32I" | "RGBA32UI" | "RGBA32F" | "RGB5_A1" | "RGB10_A2" | "RGB10_A2UI" | "SRGB8_ALPHA8" | "SRGB8" | "DEPTH_COMPONENT16" | "DEPTH_COMPONENT24" | "DEPTH_COMPONENT32F" | "DEPTH24_STENCIL8" | "DEPTH32F_STENCIL8"
typedef PixelFormatGPU = _i1.JSString;
/// Interface [TimestampQuery$TypeLiteral]
extension type TimestampQuery$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [COMPUTE]
///
/// COMPUTE: "compute"
external _i1.JSString COMPUTE;

/// Property [RENDER]
///
/// RENDER: "render"
external _i1.JSString RENDER;

}
/// Interface [InterpolationSamplingType$TypeLiteral]
extension type InterpolationSamplingType$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [PERSPECTIVE]
///
/// PERSPECTIVE: "perspective"
external _i1.JSString PERSPECTIVE;

/// Property [LINEAR]
///
/// LINEAR: "linear"
external _i1.JSString LINEAR;

/// Property [FLAT]
///
/// FLAT: "flat"
external _i1.JSString FLAT;

}
/// Interface [InterpolationSamplingMode$TypeLiteral]
extension type InterpolationSamplingMode$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [NORMAL]
///
/// NORMAL: "normal"
external _i1.JSString NORMAL;

/// Property [CENTROID]
///
/// CENTROID: "centroid"
external _i1.JSString CENTROID;

/// Property [SAMPLE]
///
/// SAMPLE: "sample"
external _i1.JSString SAMPLE;

/// Property [FIRST]
///
/// FIRST: "first"
external _i1.JSString FIRST;

/// Property [EITHER]
///
/// EITHER: "either"
external _i1.JSString EITHER;

}
/// Interface [Compatibility$TypeLiteral]
extension type Compatibility$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [TEXTURE_COMPARE]
///
/// TEXTURE_COMPARE: "depthTextureCompare"
external _i1.JSString TEXTURE_COMPARE;

}
/// Typedef [TypedArray]
///
/// Int8Array | Uint8Array | Uint8ClampedArray | Int16Array | Uint16Array | Int32Array | Uint32Array | Float32Array | Float64Array
typedef TypedArray = _i1.JSAny;
/// Typedef [TypedArrayConstructor]
///
/// Int8ArrayConstructor | Uint8ArrayConstructor | Uint8ClampedArrayConstructor | Int16ArrayConstructor | Uint16ArrayConstructor | Int32ArrayConstructor | Uint32ArrayConstructor | Float32ArrayConstructor | Float64ArrayConstructor
typedef TypedArrayConstructor = _i1.JSAny;
/// Interface [BufferAttributeJSON]
extension type BufferAttributeJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [itemSize]
///
/// itemSize: number
external _i1.JSNumber itemSize;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [array]
///
/// array: number[]
external _i1.JSArray<_i1.JSNumber> array;

/// Property [normalized]
///
/// normalized: boolean
external _i1.JSBoolean normalized;

/// Property [name]
///
/// name?: string
external _i1.JSString? name;

/// Property [usage]
///
/// usage?: Usage
external Usage? usage;

}
/// Class [BufferAttribute]
extension type BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - array: TypedArray
/// - itemSize: number
/// - normalized: boolean
external BufferAttribute(TypedArray array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [array]
///
/// array: TypedArray
external TypedArray array;

/// Property [itemSize]
///
/// itemSize: number
external _i1.JSNumber itemSize;

/// Property [usage]
///
/// usage: Usage
external Usage usage;

/// Property [gpuType]
///
/// gpuType: AttributeGPUType
external AttributeGPUType gpuType;

/// Property [updateRanges]
///
/// updateRanges: Array
external _i2.Array<BufferAttribute$UpdateRanges$TypeLiteral> updateRanges;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [normalized]
///
/// normalized: boolean
external _i1.JSBoolean normalized;

/// Property [onUploadCallback]
///
/// onUploadCallback: () => void
external _i1.JSFunction onUploadCallback;

/// Property [id]
///
/// readonly id: number
external _i1.JSNumber get id;
/// Property [count]
///
/// readonly count: number
external _i1.JSNumber get count;
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Property [isBufferAttribute]
///
/// readonly isBufferAttribute: true
external _i1.JSBoolean get isBufferAttribute;
/// Method [onUpload]
///
/// Parameters:
/// - callback: () => void
external _i1.JSAny onUpload(_i1.JSFunction callback);
/// Method [setUsage]
///
/// Parameters:
/// - usage: Usage
external _i1.JSAny setUsage(Usage usage);
/// Method [addUpdateRange]
///
/// Parameters:
/// - start: number
/// - count: number
external void addUpdateRange(_i1.JSNumber start, _i1.JSNumber count, );
/// Method [clearUpdateRanges]
external void clearUpdateRanges();
/// Method [clone]
external BufferAttribute clone();
/// Method [copy]
///
/// Parameters:
/// - source: BufferAttribute
external _i1.JSAny copy(BufferAttribute source);
/// Method [copyAt]
///
/// Parameters:
/// - index1: number
/// - attribute: BufferAttribute
/// - index2: number
external _i1.JSAny copyAt(_i1.JSNumber index1, BufferAttribute attribute, _i1.JSNumber index2, );
/// Method [copyArray]
///
/// Parameters:
/// - array: ArrayLike
external _i1.JSAny copyArray(_i2.ArrayLike<_i1.JSNumber> array);
/// Method [applyMatrix3]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyMatrix3(Matrix3 m);
/// Method [applyMatrix4]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 m);
/// Method [applyNormalMatrix]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyNormalMatrix(Matrix3 m);
/// Method [transformDirection]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny transformDirection(Matrix4 m);
/// Method [set]
///
/// Parameters:
/// - value: ArrayLike | ArrayBufferView
/// - offset: number
external _i1.JSAny set(_i1.JSAny value, [_i1.JSNumber offset, ]);
/// Method [getComponent]
///
/// Parameters:
/// - index: number
/// - component: number
external _i1.JSNumber getComponent(_i1.JSNumber index, _i1.JSNumber component, );
/// Method [setComponent]
///
/// Parameters:
/// - index: number
/// - component: number
/// - value: number
external void setComponent(_i1.JSNumber index, _i1.JSNumber component, _i1.JSNumber value, );
/// Method [getX]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getX(_i1.JSNumber index);
/// Method [setX]
///
/// Parameters:
/// - index: number
/// - x: number
external _i1.JSAny setX(_i1.JSNumber index, _i1.JSNumber x, );
/// Method [getY]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getY(_i1.JSNumber index);
/// Method [setY]
///
/// Parameters:
/// - index: number
/// - y: number
external _i1.JSAny setY(_i1.JSNumber index, _i1.JSNumber y, );
/// Method [getZ]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getZ(_i1.JSNumber index);
/// Method [setZ]
///
/// Parameters:
/// - index: number
/// - z: number
external _i1.JSAny setZ(_i1.JSNumber index, _i1.JSNumber z, );
/// Method [getW]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getW(_i1.JSNumber index);
/// Method [setW]
///
/// Parameters:
/// - index: number
/// - z: number
external _i1.JSAny setW(_i1.JSNumber index, _i1.JSNumber z, );
/// Method [setXY]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
external _i1.JSAny setXY(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, );
/// Method [setXYZ]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny setXYZ(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [setXYZW]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external _i1.JSAny setXYZW(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, );
/// Method [toJSON]
external BufferAttributeJSON toJSON();
}
/// Class [Int8BufferAttribute]
extension type Int8BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Int8BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Uint8BufferAttribute]
extension type Uint8BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Uint8BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Uint8ClampedBufferAttribute]
extension type Uint8ClampedBufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Uint8ClampedBufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Int16BufferAttribute]
extension type Int16BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Int16BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Uint16BufferAttribute]
extension type Uint16BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Uint16BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Int32BufferAttribute]
extension type Int32BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Int32BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Uint32BufferAttribute]
extension type Uint32BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Uint32BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Float16BufferAttribute]
extension type Float16BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Float16BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Class [Float32BufferAttribute]
extension type Float32BufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: Iterable | ArrayLike | ArrayBuffer | number
/// - itemSize: number
/// - normalized: boolean
external Float32BufferAttribute(_i1.JSAny array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, ]);

}
/// Interface [BufferAttribute$UpdateRanges$TypeLiteral]
extension type BufferAttribute$UpdateRanges$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

}
/// Typedef [NormalBufferAttributes]
///
/// Record
typedef NormalBufferAttributes = _i2.Record<_i1.JSString,_i1.JSAny>;
/// Typedef [NormalOrGLBufferAttributes]
///
/// Record
typedef NormalOrGLBufferAttributes = _i2.Record<_i1.JSString,_i1.JSAny>;
/// Interface [BufferGeometryJSON]
extension type BufferGeometryJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata?: BufferGeometryJSON$Metadata$TypeLiteral
external BufferGeometryJSON$Metadata$TypeLiteral? metadata;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [name]
///
/// name?: string
external _i1.JSString? name;

/// Property [userData]
///
/// userData?: Record
external _i2.Record<_i1.JSString,_i1.JSAny>? userData;

/// Property [data]
///
/// data?: BufferGeometryJSON$Data$TypeLiteral
external BufferGeometryJSON$Data$TypeLiteral? data;

}
/// Interface [GeometryGroup]
extension type GeometryGroup.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [materialIndex]
///
/// materialIndex?: number | undefined
external _i1.JSNumber? materialIndex;

}
/// Interface [BufferGeometryEventMap]
extension type BufferGeometryEventMap.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [dispose]
///
/// dispose: BufferGeometryEventMap$Dispose$TypeLiteral
external BufferGeometryEventMap$Dispose$TypeLiteral dispose;

}
/// Class [BufferGeometry]
extension type BufferGeometry<Attributes extends NormalOrGLBufferAttributes,TEventMap extends BufferGeometryEventMap>.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<TEventMap> {
/// Constructor
external BufferGeometry();

/// Property [id]
///
/// id: number
external _i1.JSNumber id;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [index]
///
/// index: BufferAttribute | null
external BufferAttribute index;

/// Property [indirect]
///
/// indirect: IndirectStorageBufferAttribute | null
external IndirectStorageBufferAttribute indirect;

/// Property [indirectOffset]
///
/// indirectOffset: number | number[]
external _i1.JSAny indirectOffset;

/// Property [attributes]
///
/// attributes: Attributes
external Attributes attributes;

/// Property [morphAttributes]
///
/// morphAttributes: BufferGeometry$MorphAttributes$TypeLiteral
external BufferGeometry$MorphAttributes$TypeLiteral morphAttributes;

/// Property [morphTargetsRelative]
///
/// morphTargetsRelative: boolean
external _i1.JSBoolean morphTargetsRelative;

/// Property [groups]
///
/// groups: GeometryGroup[]
external _i1.JSArray<GeometryGroup> groups;

/// Property [boundingBox]
///
/// boundingBox: Box3 | null
external Box3 boundingBox;

/// Property [boundingSphere]
///
/// boundingSphere: Sphere | null
external Sphere boundingSphere;

/// Property [drawRange]
///
/// drawRange: BufferGeometry$DrawRange$TypeLiteral
external BufferGeometry$DrawRange$TypeLiteral drawRange;

/// Property [userData]
///
/// userData: Record
external _i2.Record<_i1.JSString,_i1.JSAny> userData;

/// Property [type]
///
/// readonly type: string | "BufferGeometry"
external _i1.JSString get type;
/// Property [isBufferGeometry]
///
/// readonly isBufferGeometry: true
external _i1.JSBoolean get isBufferGeometry;
/// Method [getIndex]
external BufferAttribute? getIndex();
/// Method [setIndex]
///
/// Parameters:
/// - index: BufferAttribute | number[] | null
external _i1.JSAny setIndex(_i1.JSAny? index);
/// Method [setIndirect]
///
/// Parameters:
/// - indirect: IndirectStorageBufferAttribute | null
/// - indirectOffset: number | number[]
external _i1.JSAny setIndirect(IndirectStorageBufferAttribute? indirect, [_i1.JSAny indirectOffset, ]);
/// Method [getIndirect]
external IndirectStorageBufferAttribute? getIndirect();
/// Method [setAttribute]
///
/// Type Parameters:
/// - K extends keyof Attributes
///
/// Parameters:
/// - name: K
/// - attribute: Attributes[K]
external _i1.JSAny setAttribute<K extends _i1.JSAny>(K name, _i1.JSAny attribute, );
/// Method [getAttribute]
///
/// Type Parameters:
/// - K extends keyof Attributes
///
/// Parameters:
/// - name: K
external _i1.JSAny getAttribute<K extends _i1.JSAny>(K name);
/// Method [deleteAttribute]
///
/// Parameters:
/// - name: keyof Attributes
external _i1.JSAny deleteAttribute(_i1.JSString name);
/// Method [hasAttribute]
///
/// Parameters:
/// - name: keyof Attributes
external _i1.JSBoolean hasAttribute(_i1.JSString name);
/// Method [addGroup]
///
/// Parameters:
/// - start: number
/// - count: number
/// - materialIndex: number
external void addGroup(_i1.JSNumber start, _i1.JSNumber count, [_i1.JSNumber materialIndex, ]);
/// Method [clearGroups]
external void clearGroups();
/// Method [setDrawRange]
///
/// Parameters:
/// - start: number
/// - count: number
external void setDrawRange(_i1.JSNumber start, _i1.JSNumber count, );
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 matrix);
/// Method [applyQuaternion]
///
/// Parameters:
/// - quaternion: Quaternion
external _i1.JSAny applyQuaternion(Quaternion quaternion);
/// Method [rotateX]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateX(_i1.JSNumber angle);
/// Method [rotateY]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateY(_i1.JSNumber angle);
/// Method [rotateZ]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateZ(_i1.JSNumber angle);
/// Method [translate]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny translate(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [scale]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny scale(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [lookAt]
///
/// Parameters:
/// - vector: Vector3
external _i1.JSAny lookAt(Vector3 vector);
/// Method [center]
external _i1.JSAny center();
/// Method [setFromPoints]
///
/// Parameters:
/// - points: Vector3[] | Vector2[]
external _i1.JSAny setFromPoints(_i1.JSArray<Vector2> points);
/// Method [computeBoundingBox]
external void computeBoundingBox();
/// Method [computeBoundingSphere]
external void computeBoundingSphere();
/// Method [computeTangents]
external void computeTangents();
/// Method [computeVertexNormals]
external void computeVertexNormals();
/// Method [normalizeNormals]
external void normalizeNormals();
/// Method [toNonIndexed]
external BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> toNonIndexed();
/// Method [toJSON]
external BufferGeometryJSON toJSON();
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - source: BufferGeometry
external _i1.JSAny copy(BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> source);
/// Method [dispose]
external void dispose();
}
/// Interface [BufferGeometryJSON$Metadata$TypeLiteral]
extension type BufferGeometryJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [BufferGeometryJSON$Data$Index$TypeLiteral]
extension type BufferGeometryJSON$Data$Index$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [array]
///
/// array: number[]
external _i1.JSArray<_i1.JSNumber> array;

}
/// Interface [BufferGeometryJSON$Data$BoundingSphere$TypeLiteral]
extension type BufferGeometryJSON$Data$BoundingSphere$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [center]
///
/// center: Vector3Tuple
external Vector3Tuple center;

/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

}
/// Interface [BufferGeometryJSON$Data$TypeLiteral]
extension type BufferGeometryJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [attributes]
///
/// attributes: Record
external _i2.Record<_i1.JSString,BufferAttributeJSON> attributes;

/// Property [index]
///
/// index?: BufferGeometryJSON$Data$Index$TypeLiteral
external BufferGeometryJSON$Data$Index$TypeLiteral? index;

/// Property [morphAttributes]
///
/// morphAttributes?: Record
external _i2.Record<_i1.JSString,_i1.JSArray<BufferAttributeJSON>>? morphAttributes;

/// Property [morphTargetsRelative]
///
/// morphTargetsRelative?: boolean
external _i1.JSBoolean? morphTargetsRelative;

/// Property [groups]
///
/// groups?: GeometryGroup[]
external _i1.JSArray<GeometryGroup>? groups;

/// Property [boundingSphere]
///
/// boundingSphere?: BufferGeometryJSON$Data$BoundingSphere$TypeLiteral
external BufferGeometryJSON$Data$BoundingSphere$TypeLiteral? boundingSphere;

}
/// Interface [BufferGeometryEventMap$Dispose$TypeLiteral]
extension type BufferGeometryEventMap$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [BufferGeometry$MorphAttributes$TypeLiteral]
extension type BufferGeometry$MorphAttributes$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [position]
///
/// position?: Array | undefined
external _i2.Array<_i1.JSAny>? position;

/// Property [normal]
///
/// normal?: Array | undefined
external _i2.Array<_i1.JSAny>? normal;

/// Property [color]
///
/// color?: Array | undefined
external _i2.Array<_i1.JSAny>? color;

}
/// Interface [BufferGeometry$DrawRange$TypeLiteral]
extension type BufferGeometry$DrawRange$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

}
/// Class [Clock]
extension type Clock.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - autoStart: boolean
external Clock([_i1.JSBoolean autoStart]);

/// Property [autoStart]
///
/// autoStart: boolean
external _i1.JSBoolean autoStart;

/// Property [startTime]
///
/// startTime: number
external _i1.JSNumber startTime;

/// Property [oldTime]
///
/// oldTime: number
external _i1.JSNumber oldTime;

/// Property [elapsedTime]
///
/// elapsedTime: number
external _i1.JSNumber elapsedTime;

/// Property [running]
///
/// running: boolean
external _i1.JSBoolean running;

/// Method [start]
external void start();
/// Method [stop]
external void stop();
/// Method [getElapsedTime]
external _i1.JSNumber getElapsedTime();
/// Method [getDelta]
external _i1.JSNumber getDelta();
}
/// Interface [BaseEvent]
extension type BaseEvent<TEventType extends _i1.JSString>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// readonly type: TEventType
external TEventType get type;
}
/// Interface [Event]
extension type Event<TEventType extends _i1.JSString,TTarget extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// readonly type: TEventType
external TEventType get type;
/// Property [target]
///
/// readonly target: TTarget
external TTarget get target;
}
/// Typedef [EventListener]
///
/// (event: ) => void
typedef EventListener<TEventData extends _i1.JSAny,TEventType extends _i1.JSString,TTarget extends _i1.JSAny> = _i1.JSFunction;
/// Class [EventDispatcher]
extension type EventDispatcher<TEventMap extends EventDispatcher$TypeLiteral>.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external EventDispatcher();

/// Method [addEventListener]
///
/// Type Parameters:
/// - T extends Extract
///
/// Parameters:
/// - type: T
/// - listener: EventListener
external void addEventListener<T extends _i2.Extract<_i1.JSAny,_i1.JSString>>(T type, _i3.EventListener<T> listener, );
/// Method [hasEventListener]
///
/// Type Parameters:
/// - T extends Extract
///
/// Parameters:
/// - type: T
/// - listener: EventListener
external _i1.JSBoolean hasEventListener<T extends _i2.Extract<_i1.JSAny,_i1.JSString>>(T type, _i3.EventListener<T> listener, );
/// Method [removeEventListener]
///
/// Type Parameters:
/// - T extends Extract
///
/// Parameters:
/// - type: T
/// - listener: EventListener
external void removeEventListener<T extends _i2.Extract<_i1.JSAny,_i1.JSString>>(T type, _i3.EventListener<T> listener, );
/// Method [dispatchEvent]
///
/// Type Parameters:
/// - T extends Extract
///
/// Parameters:
/// - event: 
external void dispatchEvent<T extends _i2.Extract<_i1.JSAny,_i1.JSString>>(_i1.JSAny event);
}
/// Interface [EventDispatcher$TypeLiteral]
extension type EventDispatcher$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [EventDispatcher$TypeLiteral$2]
extension type EventDispatcher$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [GLBufferAttribute]
extension type GLBufferAttribute.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - buffer: WebGLBuffer
/// - type: GLenum
/// - itemSize: number
/// - elementSize: 1 | 2 | 4
/// - count: number
/// - normalized: boolean
external GLBufferAttribute(_i3.WebGLBuffer buffer, _i3.GLenum type, _i1.JSNumber itemSize, _i1.JSNumber elementSize, _i1.JSNumber count, [_i1.JSBoolean normalized, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [buffer]
///
/// buffer: WebGLBuffer
external _i3.WebGLBuffer buffer;

/// Property [type]
///
/// type: GLenum
external _i3.GLenum type;

/// Property [itemSize]
///
/// itemSize: number
external _i1.JSNumber itemSize;

/// Property [elementSize]
///
/// elementSize: 1 | 2 | 4
external _i1.JSNumber elementSize;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [normalized]
///
/// normalized: boolean
external _i1.JSBoolean normalized;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [isGLBufferAttribute]
///
/// readonly isGLBufferAttribute: true
external _i1.JSBoolean get isGLBufferAttribute;
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Method [setBuffer]
///
/// Parameters:
/// - buffer: WebGLBuffer
external _i1.JSAny setBuffer(_i3.WebGLBuffer buffer);
/// Method [setType]
///
/// Parameters:
/// - type: GLenum
/// - elementSize: 1 | 2 | 4
external _i1.JSAny setType(_i3.GLenum type, _i1.JSNumber elementSize, );
/// Method [setItemSize]
///
/// Parameters:
/// - itemSize: number
external _i1.JSAny setItemSize(_i1.JSNumber itemSize);
/// Method [setCount]
///
/// Parameters:
/// - count: number
external _i1.JSAny setCount(_i1.JSNumber count);
}
/// Class [InstancedBufferAttribute]
extension type InstancedBufferAttribute.$(_i1.JSObject _) implements _i1.JSObject,BufferAttribute {
/// Constructor
///
/// Parameters:
/// - array: TypedArray
/// - itemSize: number
/// - normalized: boolean
/// - meshPerAttribute: number
external InstancedBufferAttribute(TypedArray array, _i1.JSNumber itemSize, [_i1.JSBoolean normalized, _i1.JSNumber meshPerAttribute, ]);

/// Property [meshPerAttribute]
///
/// meshPerAttribute: number
external _i1.JSNumber meshPerAttribute;

/// Property [isInstancedBufferAttribute]
///
/// readonly isInstancedBufferAttribute: true
external _i1.JSBoolean get isInstancedBufferAttribute;
}
/// Class [InstancedBufferGeometry]
extension type InstancedBufferGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
external InstancedBufferGeometry();

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [instanceCount]
///
/// instanceCount: number
external _i1.JSNumber instanceCount;

/// Property [isInstancedBufferGeometry]
///
/// readonly isInstancedBufferGeometry: true
external _i1.JSBoolean get isInstancedBufferGeometry;
/// Method [copy]
///
/// Parameters:
/// - source: InstancedBufferGeometry
external _i1.JSAny copy(InstancedBufferGeometry source);
}
/// Class [InstancedInterleavedBuffer]
extension type InstancedInterleavedBuffer.$(_i1.JSObject _) implements _i1.JSObject,InterleavedBuffer {
/// Constructor
///
/// Parameters:
/// - array: TypedArray
/// - stride: number
/// - meshPerAttribute: number
external InstancedInterleavedBuffer(TypedArray array, _i1.JSNumber stride, [_i1.JSNumber meshPerAttribute, ]);

/// Property [meshPerAttribute]
///
/// meshPerAttribute: number
external _i1.JSNumber meshPerAttribute;

}
/// Class [InterleavedBuffer]
extension type InterleavedBuffer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - array: TypedArray
/// - stride: number
external InterleavedBuffer(TypedArray array, _i1.JSNumber stride, );

/// Property [array]
///
/// array: TypedArray
external TypedArray array;

/// Property [stride]
///
/// stride: number
external _i1.JSNumber stride;

/// Property [usage]
///
/// usage: Usage
external Usage usage;

/// Property [updateRanges]
///
/// updateRanges: Array
external _i2.Array<InterleavedBuffer$UpdateRanges$TypeLiteral> updateRanges;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [onUploadCallback]
///
/// onUploadCallback: () => void
external _i1.JSFunction onUploadCallback;

/// Property [isInterleavedBuffer]
///
/// readonly isInterleavedBuffer: true
external _i1.JSBoolean get isInterleavedBuffer;
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Method [onUpload]
///
/// Parameters:
/// - callback: () => void
external _i1.JSAny onUpload(_i1.JSFunction callback);
/// Method [set]
///
/// Parameters:
/// - value: ArrayLike
/// - offset: number
external _i1.JSAny set(_i2.ArrayLike<_i1.JSNumber> value, _i1.JSNumber offset, );
/// Method [setUsage]
///
/// Parameters:
/// - value: Usage
external _i1.JSAny setUsage(Usage value);
/// Method [addUpdateRange]
///
/// Parameters:
/// - start: number
/// - count: number
external void addUpdateRange(_i1.JSNumber start, _i1.JSNumber count, );
/// Method [clearUpdateRanges]
external void clearUpdateRanges();
/// Method [copy]
///
/// Parameters:
/// - source: InterleavedBuffer
external _i1.JSAny copy(InterleavedBuffer source);
/// Method [copyAt]
///
/// Parameters:
/// - index1: number
/// - attribute: InterleavedBufferAttribute
/// - index2: number
external _i1.JSAny copyAt(_i1.JSNumber index1, InterleavedBufferAttribute attribute, _i1.JSNumber index2, );
/// Method [clone]
///
/// Parameters:
/// - data: InterleavedBuffer$Clone$Data$TypeLiteral
external InterleavedBuffer clone(InterleavedBuffer$Clone$Data$TypeLiteral data);
/// Method [toJSON]
///
/// Parameters:
/// - data: InterleavedBuffer$ToJSON$Data$TypeLiteral
external InterleavedBuffer$ToJSON$TypeLiteral toJSON(InterleavedBuffer$ToJSON$Data$TypeLiteral data);
}
/// Interface [InterleavedBuffer$UpdateRanges$TypeLiteral]
extension type InterleavedBuffer$UpdateRanges$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

}
/// Interface [InterleavedBuffer$Clone$Data$TypeLiteral]
extension type InterleavedBuffer$Clone$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [InterleavedBuffer$ToJSON$Data$TypeLiteral]
extension type InterleavedBuffer$ToJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [InterleavedBuffer$ToJSON$TypeLiteral]
extension type InterleavedBuffer$ToJSON$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [buffer]
///
/// buffer: string
external _i1.JSString buffer;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [stride]
///
/// stride: number
external _i1.JSNumber stride;

}
/// Class [InterleavedBufferAttribute]
extension type InterleavedBufferAttribute.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - interleavedBuffer: InterleavedBuffer
/// - itemSize: number
/// - offset: number
/// - normalized: boolean
external InterleavedBufferAttribute(InterleavedBuffer interleavedBuffer, _i1.JSNumber itemSize, _i1.JSNumber offset, [_i1.JSBoolean normalized, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [data]
///
/// data: InterleavedBuffer
external InterleavedBuffer data;

/// Property [itemSize]
///
/// itemSize: number
external _i1.JSNumber itemSize;

/// Property [offset]
///
/// offset: number
external _i1.JSNumber offset;

/// Property [normalized]
///
/// normalized: boolean
external _i1.JSBoolean normalized;

/// Get Accessor [count]
///
/// count
external _i1.JSNumber get count;
/// Get Accessor [array]
///
/// array
external TypedArray get array;
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Property [isInterleavedBufferAttribute]
///
/// readonly isInterleavedBufferAttribute: true
external _i1.JSBoolean get isInterleavedBufferAttribute;
/// Method [applyMatrix4]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 m);
/// Method [applyNormalMatrix]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyNormalMatrix(Matrix3 m);
/// Method [transformDirection]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny transformDirection(Matrix4 m);
/// Method [getComponent]
///
/// Parameters:
/// - index: number
/// - component: number
external _i1.JSNumber getComponent(_i1.JSNumber index, _i1.JSNumber component, );
/// Method [setComponent]
///
/// Parameters:
/// - index: number
/// - component: number
/// - value: number
external _i1.JSAny setComponent(_i1.JSNumber index, _i1.JSNumber component, _i1.JSNumber value, );
/// Method [getX]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getX(_i1.JSNumber index);
/// Method [setX]
///
/// Parameters:
/// - index: number
/// - x: number
external _i1.JSAny setX(_i1.JSNumber index, _i1.JSNumber x, );
/// Method [getY]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getY(_i1.JSNumber index);
/// Method [setY]
///
/// Parameters:
/// - index: number
/// - y: number
external _i1.JSAny setY(_i1.JSNumber index, _i1.JSNumber y, );
/// Method [getZ]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getZ(_i1.JSNumber index);
/// Method [setZ]
///
/// Parameters:
/// - index: number
/// - z: number
external _i1.JSAny setZ(_i1.JSNumber index, _i1.JSNumber z, );
/// Method [getW]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getW(_i1.JSNumber index);
/// Method [setW]
///
/// Parameters:
/// - index: number
/// - z: number
external _i1.JSAny setW(_i1.JSNumber index, _i1.JSNumber z, );
/// Method [setXY]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
external _i1.JSAny setXY(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, );
/// Method [setXYZ]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny setXYZ(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [setXYZW]
///
/// Parameters:
/// - index: number
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external _i1.JSAny setXYZW(_i1.JSNumber index, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, );
/// Method [clone]
///
/// Parameters:
/// - data: InterleavedBufferAttribute$Clone$Data$TypeLiteral
external BufferAttribute clone([InterleavedBufferAttribute$Clone$Data$TypeLiteral data]);
/// Method [toJSON]
///
/// Parameters:
/// - data: InterleavedBufferAttribute$ToJSON$Data$TypeLiteral
external InterleavedBufferAttribute$ToJSON$TypeLiteral toJSON([InterleavedBufferAttribute$ToJSON$Data$TypeLiteral data]);
}
/// Interface [InterleavedBufferAttribute$Clone$Data$TypeLiteral]
extension type InterleavedBufferAttribute$Clone$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [InterleavedBufferAttribute$ToJSON$Data$TypeLiteral]
extension type InterleavedBufferAttribute$ToJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [InterleavedBufferAttribute$ToJSON$TypeLiteral]
extension type InterleavedBufferAttribute$ToJSON$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [isInterleavedBufferAttribute]
///
/// isInterleavedBufferAttribute: true
external _i1.JSBoolean isInterleavedBufferAttribute;

/// Property [itemSize]
///
/// itemSize: number
external _i1.JSNumber itemSize;

/// Property [data]
///
/// data: string
external _i1.JSString data;

/// Property [offset]
///
/// offset: number
external _i1.JSNumber offset;

/// Property [normalized]
///
/// normalized: boolean
external _i1.JSBoolean normalized;

}
/// Class [Layers]
extension type Layers.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Layers();

/// Property [mask]
///
/// mask: number
external _i1.JSNumber mask;

/// Method [set]
///
/// Parameters:
/// - layer: number
external void set(_i1.JSNumber layer);
/// Method [enable]
///
/// Parameters:
/// - layer: number
external void enable(_i1.JSNumber layer);
/// Method [enableAll]
external void enableAll();
/// Method [toggle]
///
/// Parameters:
/// - layer: number
external void toggle(_i1.JSNumber layer);
/// Method [disable]
///
/// Parameters:
/// - layer: number
external void disable(_i1.JSNumber layer);
/// Method [disableAll]
external void disableAll();
/// Method [test]
///
/// Parameters:
/// - layers: Layers
external _i1.JSBoolean test(Layers layers);
/// Method [isEnabled]
///
/// Parameters:
/// - layer: number
external _i1.JSBoolean isEnabled(_i1.JSNumber layer);
}
/// Interface [Object3DJSONObject]
extension type Object3DJSONObject.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [name]
///
/// name?: string
external _i1.JSString? name;

/// Property [castShadow]
///
/// castShadow?: boolean
external _i1.JSBoolean? castShadow;

/// Property [receiveShadow]
///
/// receiveShadow?: boolean
external _i1.JSBoolean? receiveShadow;

/// Property [visible]
///
/// visible?: boolean
external _i1.JSBoolean? visible;

/// Property [frustumCulled]
///
/// frustumCulled?: boolean
external _i1.JSBoolean? frustumCulled;

/// Property [renderOrder]
///
/// renderOrder?: number
external _i1.JSNumber? renderOrder;

/// Property [static]
///
/// static?: boolean
external _i1.JSBoolean? static;

/// Property [userData]
///
/// userData?: Record
external _i2.Record<_i1.JSString,_i1.JSAny>? userData;

/// Property [layers]
///
/// layers: number
external _i1.JSNumber layers;

/// Property [matrix]
///
/// matrix: Matrix4Tuple
external Matrix4Tuple matrix;

/// Property [up]
///
/// up: Vector3Tuple
external Vector3Tuple up;

/// Property [pivot]
///
/// pivot?: Vector3Tuple
external Vector3Tuple? pivot;

/// Property [matrixAutoUpdate]
///
/// matrixAutoUpdate?: boolean
external _i1.JSBoolean? matrixAutoUpdate;

/// Property [material]
///
/// material?: string | string[]
external _i1.JSAny? material;

/// Property [children]
///
/// children?: string[]
external _i1.JSArray<_i1.JSString>? children;

/// Property [animations]
///
/// animations?: string[]
external _i1.JSArray<_i1.JSString>? animations;

}
/// Interface [Object3DJSON]
extension type Object3DJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata?: Object3DJSON$Metadata$TypeLiteral
external Object3DJSON$Metadata$TypeLiteral? metadata;

/// Property [object]
///
/// object: Object3DJSONObject
external Object3DJSONObject object;

}
/// Interface [JSONMeta]
extension type JSONMeta.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [geometries]
///
/// geometries: Record
external _i2.Record<_i1.JSString,BufferGeometryJSON> geometries;

/// Property [materials]
///
/// materials: Record
external _i2.Record<_i1.JSString,MaterialJSON> materials;

/// Property [textures]
///
/// textures: Record
external _i2.Record<_i1.JSString,TextureJSON> textures;

/// Property [images]
///
/// images: Record
external _i2.Record<_i1.JSString,SourceJSON> images;

/// Property [shapes]
///
/// shapes: Record
external _i2.Record<_i1.JSString,ShapeJSON> shapes;

/// Property [skeletons]
///
/// skeletons: Record
external _i2.Record<_i1.JSString,SkeletonJSON> skeletons;

/// Property [animations]
///
/// animations: Record
external _i2.Record<_i1.JSString,AnimationClipJSON> animations;

/// Property [nodes]
///
/// nodes: Record
external _i2.Record<_i1.JSString,_i1.JSAny> nodes;

}
/// Interface [Object3DEventMap]
extension type Object3DEventMap.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [added]
///
/// added: Object3DEventMap$Added$TypeLiteral
external Object3DEventMap$Added$TypeLiteral added;

/// Property [removed]
///
/// removed: Object3DEventMap$Removed$TypeLiteral
external Object3DEventMap$Removed$TypeLiteral removed;

/// Property [childadded]
///
/// childadded: Object3DEventMap$Childadded$TypeLiteral
external Object3DEventMap$Childadded$TypeLiteral childadded;

/// Property [childremoved]
///
/// childremoved: Object3DEventMap$Childremoved$TypeLiteral
external Object3DEventMap$Childremoved$TypeLiteral childremoved;

}
/// Class [Object3D]
extension type Object3D<TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<TEventMap> {
/// Constructor
external Object3D();

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [parent]
///
/// parent: Object3D | null
external Object3D<Object3DEventMap> parent;

/// Property [children]
///
/// children: Object3D[]
external _i1.JSArray<Object3D<Object3DEventMap>> children;

/// Property [up]
///
/// up: Vector3
external Vector3 up;

/// Property [matrix]
///
/// matrix: Matrix4
external Matrix4 matrix;

/// Property [matrixWorld]
///
/// matrixWorld: Matrix4
external Matrix4 matrixWorld;

/// Property [matrixAutoUpdate]
///
/// matrixAutoUpdate: boolean
external _i1.JSBoolean matrixAutoUpdate;

/// Property [matrixWorldAutoUpdate]
///
/// matrixWorldAutoUpdate: boolean
external _i1.JSBoolean matrixWorldAutoUpdate;

/// Property [matrixWorldNeedsUpdate]
///
/// matrixWorldNeedsUpdate: boolean
external _i1.JSBoolean matrixWorldNeedsUpdate;

/// Property [layers]
///
/// layers: Layers
external Layers layers;

/// Property [visible]
///
/// visible: boolean
external _i1.JSBoolean visible;

/// Property [castShadow]
///
/// castShadow: boolean
external _i1.JSBoolean castShadow;

/// Property [receiveShadow]
///
/// receiveShadow: boolean
external _i1.JSBoolean receiveShadow;

/// Property [frustumCulled]
///
/// frustumCulled: boolean
external _i1.JSBoolean frustumCulled;

/// Property [renderOrder]
///
/// renderOrder: number
external _i1.JSNumber renderOrder;

/// Property [animations]
///
/// animations: AnimationClip[]
external _i1.JSArray<AnimationClip> animations;

/// Property [customDepthMaterial]
///
/// customDepthMaterial?: Material | undefined
external Material? customDepthMaterial;

/// Property [customDistanceMaterial]
///
/// customDistanceMaterial?: Material | undefined
external Material? customDistanceMaterial;

/// Property [static]
///
/// static: boolean
external _i1.JSBoolean static;

/// Property [userData]
///
/// userData: Record
external _i2.Record<_i1.JSString,_i1.JSAny> userData;

/// Property [pivot]
///
/// pivot: Vector3 | null
external Vector3 pivot;

/// Property [DEFAULT_UP]
///
/// static DEFAULT_UP: Vector3
external Vector3 DEFAULT_UP;

/// Property [DEFAULT_MATRIX_AUTO_UPDATE]
///
/// static DEFAULT_MATRIX_AUTO_UPDATE: boolean
external _i1.JSBoolean DEFAULT_MATRIX_AUTO_UPDATE;

/// Property [DEFAULT_MATRIX_WORLD_AUTO_UPDATE]
///
/// static DEFAULT_MATRIX_WORLD_AUTO_UPDATE: boolean
external _i1.JSBoolean DEFAULT_MATRIX_WORLD_AUTO_UPDATE;

/// Property [isObjectthreeD]
///
/// readonly isObjectthreeD: true
@_i1.JS('isObject3D') external _i1.JSBoolean get isObjectthreeD;
/// Property [id]
///
/// readonly id: number
external _i1.JSNumber get id;
/// Property [type]
///
/// readonly type: string
external _i1.JSString get type;
/// Property [position]
///
/// readonly position: Vector3
external Vector3 get position;
/// Property [rotation]
///
/// readonly rotation: Euler
external Euler get rotation;
/// Property [quaternion]
///
/// readonly quaternion: Quaternion
external Quaternion get quaternion;
/// Property [scale]
///
/// readonly scale: Vector3
external Vector3 get scale;
/// Property [modelViewMatrix]
///
/// readonly modelViewMatrix: Matrix4
external Matrix4 get modelViewMatrix;
/// Property [normalMatrix]
///
/// readonly normalMatrix: Matrix3
external Matrix3 get normalMatrix;
/// Method [onBeforeShadow]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - scene: Scene
/// - camera: Camera
/// - shadowCamera: Camera
/// - geometry: BufferGeometry
/// - depthMaterial: Material
/// - group: Group
external void onBeforeShadow(WebGLRenderer renderer, Scene scene, Camera camera, Camera shadowCamera, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Material depthMaterial, Group<Object3DEventMap> group, );
/// Method [onAfterShadow]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - scene: Scene
/// - camera: Camera
/// - shadowCamera: Camera
/// - geometry: BufferGeometry
/// - depthMaterial: Material
/// - group: Group
external void onAfterShadow(WebGLRenderer renderer, Scene scene, Camera camera, Camera shadowCamera, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Material depthMaterial, Group<Object3DEventMap> group, );
/// Method [onBeforeRender]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - scene: Scene
/// - camera: Camera
/// - geometry: BufferGeometry
/// - material: Material
/// - group: Group
external void onBeforeRender(WebGLRenderer renderer, Scene scene, Camera camera, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Material material, Group<Object3DEventMap> group, );
/// Method [onAfterRender]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - scene: Scene
/// - camera: Camera
/// - geometry: BufferGeometry
/// - material: Material
/// - group: Group
external void onAfterRender(WebGLRenderer renderer, Scene scene, Camera camera, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Material material, Group<Object3DEventMap> group, );
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
external void applyMatrix4(Matrix4 matrix);
/// Method [applyQuaternion]
///
/// Parameters:
/// - quaternion: Quaternion
external _i1.JSAny applyQuaternion(Quaternion quaternion);
/// Method [setRotationFromAxisAngle]
///
/// Parameters:
/// - axis: Vector3
/// - angle: number
external void setRotationFromAxisAngle(Vector3 axis, _i1.JSNumber angle, );
/// Method [setRotationFromEuler]
///
/// Parameters:
/// - euler: Euler
external void setRotationFromEuler(Euler euler);
/// Method [setRotationFromMatrix]
///
/// Parameters:
/// - m: Matrix4
external void setRotationFromMatrix(Matrix4 m);
/// Method [setRotationFromQuaternion]
///
/// Parameters:
/// - q: Quaternion
external void setRotationFromQuaternion(Quaternion q);
/// Method [rotateOnAxis]
///
/// Parameters:
/// - axis: Vector3
/// - angle: number
external _i1.JSAny rotateOnAxis(Vector3 axis, _i1.JSNumber angle, );
/// Method [rotateOnWorldAxis]
///
/// Parameters:
/// - axis: Vector3
/// - angle: number
external _i1.JSAny rotateOnWorldAxis(Vector3 axis, _i1.JSNumber angle, );
/// Method [rotateX]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateX(_i1.JSNumber angle);
/// Method [rotateY]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateY(_i1.JSNumber angle);
/// Method [rotateZ]
///
/// Parameters:
/// - angle: number
external _i1.JSAny rotateZ(_i1.JSNumber angle);
/// Method [translateOnAxis]
///
/// Parameters:
/// - axis: Vector3
/// - distance: number
external _i1.JSAny translateOnAxis(Vector3 axis, _i1.JSNumber distance, );
/// Method [translateX]
///
/// Parameters:
/// - distance: number
external _i1.JSAny translateX(_i1.JSNumber distance);
/// Method [translateY]
///
/// Parameters:
/// - distance: number
external _i1.JSAny translateY(_i1.JSNumber distance);
/// Method [translateZ]
///
/// Parameters:
/// - distance: number
external _i1.JSAny translateZ(_i1.JSNumber distance);
/// Method [localToWorld]
///
/// Parameters:
/// - vector: Vector3
external Vector3 localToWorld(Vector3 vector);
/// Method [worldToLocal]
///
/// Parameters:
/// - vector: Vector3
external Vector3 worldToLocal(Vector3 vector);
/// Method [lookAt$1]
///
/// Parameters:
/// - vector: Vector3
@_i1.JS('lookAt') external void lookAt$1(Vector3 vector);
/// Method [lookAt$2]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
@_i1.JS('lookAt') external void lookAt$2(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [add]
///
/// Parameters:
/// - ...object: Object3D[]
external _i1.JSAny add(_i1.JSArray<Object3D<Object3DEventMap>> object);
/// Method [remove]
///
/// Parameters:
/// - ...object: Object3D[]
external _i1.JSAny remove(_i1.JSArray<Object3D<Object3DEventMap>> object);
/// Method [removeFromParent]
external _i1.JSAny removeFromParent();
/// Method [clear]
external _i1.JSAny clear();
/// Method [attach]
///
/// Parameters:
/// - object: Object3D
external _i1.JSAny attach(Object3D<Object3DEventMap> object);
/// Method [getObjectById]
///
/// Parameters:
/// - id: number
external Object3D<Object3DEventMap>? getObjectById(_i1.JSNumber id);
/// Method [getObjectByName]
///
/// Parameters:
/// - name: string
external Object3D<Object3DEventMap>? getObjectByName(_i1.JSString name);
/// Method [getObjectByProperty]
///
/// Parameters:
/// - name: string
/// - value: any
external Object3D<Object3DEventMap>? getObjectByProperty(_i1.JSString name, _i1.JSAny value, );
/// Method [getObjectsByProperty]
///
/// Parameters:
/// - name: string
/// - value: any
/// - optionalTarget: Object3D[]
external _i1.JSArray<Object3D<Object3DEventMap>> getObjectsByProperty(_i1.JSString name, _i1.JSAny value, [_i1.JSArray<Object3D<Object3DEventMap>> optionalTarget, ]);
/// Method [getWorldPosition]
///
/// Parameters:
/// - target: Vector3
external Vector3 getWorldPosition(Vector3 target);
/// Method [getWorldQuaternion]
///
/// Parameters:
/// - target: Quaternion
external Quaternion getWorldQuaternion(Quaternion target);
/// Method [getWorldScale]
///
/// Parameters:
/// - target: Vector3
external Vector3 getWorldScale(Vector3 target);
/// Method [getWorldDirection]
///
/// Parameters:
/// - target: Vector3
external Vector3 getWorldDirection(Vector3 target);
/// Method [raycast]
///
/// Parameters:
/// - raycaster: Raycaster
/// - intersects: Intersection[]
external void raycast(Raycaster raycaster, _i1.JSArray<Intersection<Object3D<Object3DEventMap>>> intersects, );
/// Method [traverse]
///
/// Parameters:
/// - callback: (object: Object3D) => any
external void traverse(_i1.JSFunction callback);
/// Method [traverseVisible]
///
/// Parameters:
/// - callback: (object: Object3D) => any
external void traverseVisible(_i1.JSFunction callback);
/// Method [traverseAncestors]
///
/// Parameters:
/// - callback: (object: Object3D) => any
external void traverseAncestors(_i1.JSFunction callback);
/// Method [updateMatrix]
external void updateMatrix();
/// Method [updateMatrixWorld]
///
/// Parameters:
/// - force: boolean
external void updateMatrixWorld([_i1.JSBoolean force]);
/// Method [updateWorldMatrix]
///
/// Parameters:
/// - updateParents: boolean
/// - updateChildren: boolean
external void updateWorldMatrix(_i1.JSBoolean updateParents, _i1.JSBoolean updateChildren, );
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external Object3DJSON toJSON([JSONMeta meta]);
/// Method [clone]
///
/// Parameters:
/// - recursive: boolean
external _i1.JSAny clone([_i1.JSBoolean recursive]);
/// Method [copy]
///
/// Parameters:
/// - object: Object3D
/// - recursive: boolean
external _i1.JSAny copy(Object3D<Object3DEventMap> object, [_i1.JSBoolean recursive, ]);
}
/// Interface [Object3DJSON$Metadata$TypeLiteral]
extension type Object3DJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [Object3DEventMap$Added$TypeLiteral]
extension type Object3DEventMap$Added$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Object3DEventMap$Removed$TypeLiteral]
extension type Object3DEventMap$Removed$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Object3DEventMap$Childadded$TypeLiteral]
extension type Object3DEventMap$Childadded$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [child]
///
/// child: Object3D
external Object3D<Object3DEventMap> child;

}
/// Interface [Object3DEventMap$Childremoved$TypeLiteral]
extension type Object3DEventMap$Childremoved$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [child]
///
/// child: Object3D
external Object3D<Object3DEventMap> child;

}
/// Interface [Face]
extension type Face.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [a]
///
/// a: number
external _i1.JSNumber a;

/// Property [b]
///
/// b: number
external _i1.JSNumber b;

/// Property [c]
///
/// c: number
external _i1.JSNumber c;

/// Property [normal]
///
/// normal: Vector3
external Vector3 normal;

/// Property [materialIndex]
///
/// materialIndex: number
external _i1.JSNumber materialIndex;

}
/// Interface [Intersection]
extension type Intersection<TIntersected extends Object3D<Object3DEventMap>>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [distanceToRay]
///
/// distanceToRay?: number | undefined
external _i1.JSNumber? distanceToRay;

/// Property [point]
///
/// point: Vector3
external Vector3 point;

/// Property [index]
///
/// index?: number | undefined
external _i1.JSNumber? index;

/// Property [face]
///
/// face?: Face | null | undefined
external Face? face;

/// Property [faceIndex]
///
/// faceIndex?: number | null | undefined
external _i1.JSNumber? faceIndex;

/// Property [barycoord]
///
/// barycoord?: Vector3 | null
external Vector3? barycoord;

/// Property [object]
///
/// object: TIntersected
external TIntersected object;

/// Property [uv]
///
/// uv?: Vector2 | undefined
external Vector2? uv;

/// Property [uvone]
///
/// uvone?: Vector2 | undefined
@_i1.JS('uv1') external Vector2? uvone;

/// Property [normal]
///
/// normal?: Vector3
external Vector3? normal;

/// Property [instanceId]
///
/// instanceId?: number | undefined
external _i1.JSNumber? instanceId;

/// Property [pointOnLine]
///
/// pointOnLine?: Vector3
external Vector3? pointOnLine;

/// Property [batchId]
///
/// batchId?: number
external _i1.JSNumber? batchId;

}
/// Interface [RaycasterParameters]
extension type RaycasterParameters.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [Mesh]
///
/// Mesh: any
external _i1.JSAny Mesh;

/// Property [Line]
///
/// Line: RaycasterParameters$Line$TypeLiteral
external RaycasterParameters$Line$TypeLiteral Line;

/// Property [Linetwo]
///
/// Linetwo?: RaycasterParameters$Line2$TypeLiteral
@_i1.JS('Line2') external RaycasterParameters$Line2$TypeLiteral? Linetwo;

/// Property [LOD]
///
/// LOD: any
external _i1.JSAny LOD;

/// Property [Points]
///
/// Points: RaycasterParameters$Points$TypeLiteral
external RaycasterParameters$Points$TypeLiteral Points;

/// Property [Sprite]
///
/// Sprite: any
external _i1.JSAny Sprite;

}
/// Class [Raycaster]
extension type Raycaster.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - origin: Vector3
/// - direction: Vector3
/// - near: number
/// - far: number
external Raycaster([Vector3 origin, Vector3 direction, _i1.JSNumber near, _i1.JSNumber far, ]);

/// Property [ray]
///
/// ray: Ray
external Ray ray;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [camera]
///
/// camera: Camera
external Camera camera;

/// Property [layers]
///
/// layers: Layers
external Layers layers;

/// Property [params]
///
/// params: RaycasterParameters
external RaycasterParameters params;

/// Method [set]
///
/// Parameters:
/// - origin: Vector3
/// - direction: Vector3
external void set(Vector3 origin, Vector3 direction, );
/// Method [setFromCamera]
///
/// Parameters:
/// - coords: Vector2
/// - camera: Camera
external void setFromCamera(Vector2 coords, Camera camera, );
/// Method [setFromXRController]
///
/// Parameters:
/// - controller: XRTargetRaySpace
external _i1.JSAny setFromXRController(XRTargetRaySpace controller);
/// Method [intersectObject]
///
/// Type Parameters:
/// - TIntersected extends Object3D
///
/// Parameters:
/// - object: Object3D
/// - recursive: boolean
/// - optionalTarget: Array
external _i2.Array<Intersection<TIntersected>> intersectObject<TIntersected extends Object3D<Object3DEventMap>>(Object3D<Object3DEventMap> object, [_i1.JSBoolean recursive, _i2.Array<Intersection<TIntersected>> optionalTarget, ]);
/// Method [intersectObjects]
///
/// Type Parameters:
/// - TIntersected extends Object3D
///
/// Parameters:
/// - objects: Object3D[]
/// - recursive: boolean
/// - optionalTarget: Array
external _i2.Array<Intersection<TIntersected>> intersectObjects<TIntersected extends Object3D<Object3DEventMap>>(_i1.JSArray<Object3D<Object3DEventMap>> objects, [_i1.JSBoolean recursive, _i2.Array<Intersection<TIntersected>> optionalTarget, ]);
}
/// Interface [RaycasterParameters$Line$TypeLiteral]
extension type RaycasterParameters$Line$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [threshold]
///
/// threshold: number
external _i1.JSNumber threshold;

}
/// Interface [RaycasterParameters$Line2$TypeLiteral]
extension type RaycasterParameters$Line2$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [threshold]
///
/// threshold: number
external _i1.JSNumber threshold;

}
/// Interface [RaycasterParameters$Points$TypeLiteral]
extension type RaycasterParameters$Points$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [threshold]
///
/// threshold: number
external _i1.JSNumber threshold;

}
/// Interface [RenderTargetOptions]
extension type RenderTargetOptions.$(_i1.JSObject _) implements TextureParameters {
/// Property [depthBuffer]
///
/// depthBuffer?: boolean | undefined
external _i1.JSBoolean? depthBuffer;

/// Property [stencilBuffer]
///
/// stencilBuffer?: boolean | undefined
external _i1.JSBoolean? stencilBuffer;

/// Property [resolveDepthBuffer]
///
/// resolveDepthBuffer?: boolean | undefined
external _i1.JSBoolean? resolveDepthBuffer;

/// Property [resolveStencilBuffer]
///
/// resolveStencilBuffer?: boolean | undefined
external _i1.JSBoolean? resolveStencilBuffer;

/// Property [depthTexture]
///
/// depthTexture?: DepthTexture | null | undefined
external DepthTexture? depthTexture;

/// Property [samples]
///
/// samples?: number | undefined
external _i1.JSNumber? samples;

/// Property [count]
///
/// count?: number | undefined
external _i1.JSNumber? count;

/// Property [depth]
///
/// depth?: number | undefined
external _i1.JSNumber? depth;

/// Property [multiview]
///
/// multiview?: boolean | undefined
external _i1.JSBoolean? multiview;

}
/// Class [RenderTarget]
extension type RenderTarget<TTexture extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<RenderTarget$TypeLiteral> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - options: RenderTargetOptions
external RenderTarget([_i1.JSNumber width, _i1.JSNumber height, RenderTargetOptions options, ]);

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [depth]
///
/// depth: number
external _i1.JSNumber depth;

/// Property [scissor]
///
/// scissor: Vector4
external Vector4 scissor;

/// Property [scissorTest]
///
/// scissorTest: boolean
external _i1.JSBoolean scissorTest;

/// Property [viewport]
///
/// viewport: Vector4
external Vector4 viewport;

/// Property [textures]
///
/// textures: TTexture[]
external _i1.JSArray<TTexture> textures;

/// Property [depthBuffer]
///
/// depthBuffer: boolean
external _i1.JSBoolean depthBuffer;

/// Property [stencilBuffer]
///
/// stencilBuffer: boolean
external _i1.JSBoolean stencilBuffer;

/// Property [resolveDepthBuffer]
///
/// resolveDepthBuffer: boolean
external _i1.JSBoolean resolveDepthBuffer;

/// Property [resolveStencilBuffer]
///
/// resolveStencilBuffer: boolean
external _i1.JSBoolean resolveStencilBuffer;

/// Property [samples]
///
/// samples: number
external _i1.JSNumber samples;

/// Property [multiview]
///
/// multiview: boolean
external _i1.JSBoolean multiview;

/// Property [isRenderTarget]
///
/// readonly isRenderTarget: true
external _i1.JSBoolean get isRenderTarget;
/// Get Accessor [texture]
///
/// texture
external TTexture get texture;
/// Get Accessor [texture]
///
/// texture
external set texture();
/// Get Accessor [depthTexture]
///
/// depthTexture
external set depthTexture();
/// Get Accessor [depthTexture]
///
/// depthTexture
external DepthTexture? get depthTexture;
/// Method [setSize]
///
/// Parameters:
/// - width: number
/// - height: number
/// - depth: number
external void setSize(_i1.JSNumber width, _i1.JSNumber height, [_i1.JSNumber depth, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - source: RenderTarget
external _i1.JSAny copy(RenderTarget<Texture<_i1.JSAny>> source);
/// Method [dispose]
external void dispose();
}
/// Interface [RenderTarget$Dispose$TypeLiteral]
extension type RenderTarget$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [RenderTarget$TypeLiteral]
extension type RenderTarget$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [dispose]
///
/// dispose: RenderTarget$Dispose$TypeLiteral
external RenderTarget$Dispose$TypeLiteral dispose;

}
/// Class [RenderTarget3D]
extension type RenderTarget3D.$(_i1.JSObject _) implements _i1.JSObject,RenderTarget<Texture<_i1.JSAny>> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - depth: number
/// - options: RenderTargetOptions
external RenderTarget3D([_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, RenderTargetOptions options, ]);

/// Property [isRenderTargetthreeD]
///
/// readonly isRenderTargetthreeD: true
@_i1.JS('isRenderTarget3D') external _i1.JSBoolean get isRenderTargetthreeD;
}
/// Class [Timer]
extension type Timer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Timer();

/// Method [connect]
///
/// Parameters:
/// - document: Document
external void connect(_i3.Document document);
/// Method [disconnect]
external void disconnect();
/// Method [getDelta]
external _i1.JSNumber getDelta();
/// Method [getElapsed]
external _i1.JSNumber getElapsed();
/// Method [getTimescale]
external _i1.JSNumber getTimescale();
/// Method [setTimescale]
///
/// Parameters:
/// - timescale: number
external _i1.JSAny setTimescale(_i1.JSNumber timescale);
/// Method [reset]
external _i1.JSAny reset();
/// Method [dispose]
external _i1.JSAny dispose();
/// Method [update]
///
/// Parameters:
/// - timestamp: number
external _i1.JSAny update([_i1.JSNumber timestamp]);
}
/// Class [Uniform]
extension type Uniform<T extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - value: T
external Uniform(T value);

/// Property [value]
///
/// value: T
external T value;

/// Method [clone]
external Uniform<T> clone();
}
/// Class [UniformsGroup]
extension type UniformsGroup.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<UniformsGroup$TypeLiteral> {
/// Constructor
external UniformsGroup();

/// Property [id]
///
/// id: number
external _i1.JSNumber id;

/// Property [usage]
///
/// usage: Usage
external Usage usage;

/// Property [uniforms]
///
/// uniforms: Array
external _i2.Array<_i1.JSAny> uniforms;

/// Property [isUniformsGroup]
///
/// readonly isUniformsGroup: true
external _i1.JSBoolean get isUniformsGroup;
/// Method [add]
///
/// Parameters:
/// - uniform: Uniform | Uniform[]
external _i1.JSAny add(_i1.JSAny uniform);
/// Method [remove]
///
/// Parameters:
/// - uniform: Uniform | Uniform[]
external _i1.JSAny remove(_i1.JSAny uniform);
/// Method [setName]
///
/// Parameters:
/// - name: string
external _i1.JSAny setName(_i1.JSString name);
/// Method [setUsage]
///
/// Parameters:
/// - value: Usage
external _i1.JSAny setUsage(Usage value);
/// Method [dispose]
external _i1.JSAny dispose();
/// Method [copy]
///
/// Parameters:
/// - source: UniformsGroup
external _i1.JSAny copy(UniformsGroup source);
/// Method [clone]
external UniformsGroup clone();
}
/// Interface [UniformsGroup$Dispose$TypeLiteral]
extension type UniformsGroup$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsGroup$TypeLiteral]
extension type UniformsGroup$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [dispose]
///
/// dispose: UniformsGroup$Dispose$TypeLiteral
external UniformsGroup$Dispose$TypeLiteral dispose;

}
/// Class [Controls]
extension type Controls<TEventMap extends Controls$TypeLiteral>._(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<TEventMap> {
/// Constructor
///
/// Parameters:
/// - object: Object3D
/// - domElement: HTMLElement | SVGElement | null
external Controls(Object3D<Object3DEventMap> object, [_i1.JSAny? domElement, ]);

/// Property [object]
///
/// object: Object3D
external Object3D<Object3DEventMap> object;

/// Property [domElement]
///
/// domElement: HTMLElement | SVGElement | null
external _i1.JSAny domElement;

/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Method [connect]
///
/// Parameters:
/// - element: HTMLElement | SVGElement
external void connect(_i1.JSAny element);
/// Method [disconnect]
external void disconnect();
/// Method [dispose]
external void dispose();
/// Method [update]
///
/// Parameters:
/// - delta: number
external void update(_i1.JSNumber delta);
}
/// Interface [Controls$TypeLiteral]
extension type Controls$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [CurveJSON]
extension type CurveJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata: CurveJSON$Metadata$TypeLiteral
external CurveJSON$Metadata$TypeLiteral metadata;

/// Property [arcLengthDivisions]
///
/// arcLengthDivisions: number
external _i1.JSNumber arcLengthDivisions;

/// Property [type]
///
/// type: string
external _i1.JSString type;

}
/// Class [Curve]
extension type Curve<TVector extends _i1.JSAny>._(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Curve();

/// Property [arcLengthDivisions]
///
/// arcLengthDivisions: number
external _i1.JSNumber arcLengthDivisions;

/// Property [type]
///
/// readonly type: string | "Curve"
external _i1.JSString get type;
/// Method [getPoint]
///
/// Parameters:
/// - t: number
/// - optionalTarget: TVector
external TVector getPoint(_i1.JSNumber t, [TVector optionalTarget, ]);
/// Method [getPointAt]
///
/// Parameters:
/// - u: number
/// - optionalTarget: TVector
external TVector getPointAt(_i1.JSNumber u, [TVector optionalTarget, ]);
/// Method [getPoints]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<TVector> getPoints([_i1.JSNumber divisions]);
/// Method [getSpacedPoints]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<TVector> getSpacedPoints([_i1.JSNumber divisions]);
/// Method [getLength]
external _i1.JSNumber getLength();
/// Method [getLengths]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<_i1.JSNumber> getLengths([_i1.JSNumber divisions]);
/// Method [updateArcLengths]
external void updateArcLengths();
/// Method [getUtoTmapping]
///
/// Parameters:
/// - u: number
/// - distance: number
external _i1.JSNumber getUtoTmapping(_i1.JSNumber u, _i1.JSNumber distance, );
/// Method [getTangent]
///
/// Parameters:
/// - t: number
/// - optionalTarget: TVector
external TVector getTangent(_i1.JSNumber t, [TVector optionalTarget, ]);
/// Method [getTangentAt]
///
/// Parameters:
/// - u: number
/// - optionalTarget: TVector
external TVector getTangentAt(_i1.JSNumber u, [TVector optionalTarget, ]);
/// Method [computeFrenetFrames]
///
/// Parameters:
/// - segments: number
/// - closed: boolean
external Curve$ComputeFrenetFrames$TypeLiteral computeFrenetFrames(_i1.JSNumber segments, [_i1.JSBoolean closed, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - source: Curve
external _i1.JSAny copy(Curve<TVector> source);
/// Method [toJSON]
external CurveJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: CurveJSON
external _i1.JSAny fromJSON(CurveJSON json);
}
/// Interface [CurveJSON$Metadata$TypeLiteral]
extension type CurveJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [Curve$ComputeFrenetFrames$TypeLiteral]
extension type Curve$ComputeFrenetFrames$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [tangents]
///
/// tangents: Vector3[]
external _i1.JSArray<Vector3> tangents;

/// Property [normals]
///
/// normals: Vector3[]
external _i1.JSArray<Vector3> normals;

/// Property [binormals]
///
/// binormals: Vector3[]
external _i1.JSArray<Vector3> binormals;

}
/// Interface [CurvePathJSON]
extension type CurvePathJSON.$(_i1.JSObject _) implements CurveJSON {
/// Property [autoClose]
///
/// autoClose: boolean
external _i1.JSBoolean autoClose;

/// Property [curves]
///
/// curves: CurveJSON[]
external _i1.JSArray<CurveJSON> curves;

}
/// Class [CurvePath]
extension type CurvePath<TVector extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Curve<TVector> {
/// Constructor
external CurvePath();

/// Property [curves]
///
/// curves: Array
external _i2.Array<Curve<TVector>> curves;

/// Property [autoClose]
///
/// autoClose: boolean
external _i1.JSBoolean autoClose;

/// Property [type]
///
/// override readonly type: string | "CurvePath"
external _i1.JSString get type;
/// Method [add]
///
/// Parameters:
/// - curve: Curve
external void add(Curve<TVector> curve);
/// Method [closePath]
external _i1.JSAny closePath();
/// Method [getPoint]
///
/// Parameters:
/// - t: number
/// - optionalTarget: TVector
external TVector getPoint(_i1.JSNumber t, [TVector optionalTarget, ]);
/// Method [getCurveLengths]
external _i1.JSArray<_i1.JSNumber> getCurveLengths();
/// Method [getPoints]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<TVector> getPoints([_i1.JSNumber divisions]);
/// Method [getSpacedPoints]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<TVector> getSpacedPoints([_i1.JSNumber divisions]);
/// Method [toJSON]
external CurvePathJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: CurvePathJSON
external _i1.JSAny fromJSON(CurvePathJSON json);
}
/// Interface [PathJSON]
extension type PathJSON.$(_i1.JSObject _) implements CurvePathJSON {
/// Property [currentPoint]
///
/// currentPoint: Vector2Tuple
external Vector2Tuple currentPoint;

}
/// Class [Path]
extension type Path.$(_i1.JSObject _) implements _i1.JSObject,CurvePath<Vector2> {
/// Constructor
///
/// Parameters:
/// - points: Vector2[]
external Path([_i1.JSArray<Vector2> points]);

/// Property [currentPoint]
///
/// currentPoint: Vector2
external Vector2 currentPoint;

/// Property [type]
///
/// override readonly type: string | "Path"
external _i1.JSString get type;
/// Method [absarc]
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - aRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
external _i1.JSAny absarc(_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber aRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, [_i1.JSBoolean aClockwise, ]);
/// Method [absellipse]
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - xRadius: number
/// - yRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
/// - aRotation: number
external _i1.JSAny absellipse(_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber xRadius, _i1.JSNumber yRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, [_i1.JSBoolean aClockwise, _i1.JSNumber aRotation, ]);
/// Method [arc]
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - aRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
external _i1.JSAny arc(_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber aRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, [_i1.JSBoolean aClockwise, ]);
/// Method [bezierCurveTo]
///
/// Parameters:
/// - aCP1x: number
/// - aCP1y: number
/// - aCP2x: number
/// - aCP2y: number
/// - aX: number
/// - aY: number
external _i1.JSAny bezierCurveTo(_i1.JSNumber aCP1x, _i1.JSNumber aCP1y, _i1.JSNumber aCP2x, _i1.JSNumber aCP2y, _i1.JSNumber aX, _i1.JSNumber aY, );
/// Method [ellipse]
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - xRadius: number
/// - yRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
/// - aRotation: number
external _i1.JSAny ellipse(_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber xRadius, _i1.JSNumber yRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, [_i1.JSBoolean aClockwise, _i1.JSNumber aRotation, ]);
/// Method [lineTo]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny lineTo(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [moveTo]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny moveTo(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [quadraticCurveTo]
///
/// Parameters:
/// - aCPx: number
/// - aCPy: number
/// - aX: number
/// - aY: number
external _i1.JSAny quadraticCurveTo(_i1.JSNumber aCPx, _i1.JSNumber aCPy, _i1.JSNumber aX, _i1.JSNumber aY, );
/// Method [setFromPoints]
///
/// Parameters:
/// - vectors: Vector2[]
external _i1.JSAny setFromPoints(_i1.JSArray<Vector2> vectors);
/// Method [splineThru]
///
/// Parameters:
/// - pts: Vector2[]
external _i1.JSAny splineThru(_i1.JSArray<Vector2> pts);
/// Method [toJSON]
external PathJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: PathJSON
external _i1.JSAny fromJSON(PathJSON json);
}
/// Interface [ShapeJSON]
extension type ShapeJSON.$(_i1.JSObject _) implements PathJSON {
/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [holes]
///
/// holes: PathJSON[]
external _i1.JSArray<PathJSON> holes;

}
/// Class [Shape]
extension type Shape.$(_i1.JSObject _) implements _i1.JSObject,Path {
/// Constructor
///
/// Parameters:
/// - points: Vector2[]
external Shape([_i1.JSArray<Vector2> points]);

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [holes]
///
/// holes: Path[]
external _i1.JSArray<Path> holes;

/// Property [type]
///
/// override readonly type: string | "Shape"
external _i1.JSString get type;
/// Method [extractPoints]
///
/// Parameters:
/// - divisions: number
external Shape$ExtractPoints$TypeLiteral extractPoints(_i1.JSNumber divisions);
/// Method [getPointsHoles]
///
/// Parameters:
/// - divisions: number
external _i1.JSArray<_i1.JSArray<Vector2>> getPointsHoles(_i1.JSNumber divisions);
/// Method [toJSON]
external ShapeJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: ShapeJSON
external _i1.JSAny fromJSON(ShapeJSON json);
}
/// Interface [Shape$ExtractPoints$TypeLiteral]
extension type Shape$ExtractPoints$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shape]
///
/// shape: Vector2[]
external _i1.JSArray<Vector2> shape;

/// Property [holes]
///
/// holes: Vector2[][]
external _i1.JSArray<_i1.JSArray<Vector2>> holes;

}
/// Class [ShapePath]
extension type ShapePath.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external ShapePath();

/// Property [subPaths]
///
/// subPaths: Path[]
external _i1.JSArray<Path> subPaths;

/// Property [color]
///
/// color: Color
external Color color;

/// Property [type]
///
/// readonly type: "ShapePath"
external _i1.JSString get type;
/// Property [currentPath]
///
/// readonly currentPath: Path | null
external Path get currentPath;
/// Method [moveTo]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny moveTo(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [lineTo]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny lineTo(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [quadraticCurveTo]
///
/// Parameters:
/// - aCPx: number
/// - aCPy: number
/// - aX: number
/// - aY: number
external _i1.JSAny quadraticCurveTo(_i1.JSNumber aCPx, _i1.JSNumber aCPy, _i1.JSNumber aX, _i1.JSNumber aY, );
/// Method [bezierCurveTo]
///
/// Parameters:
/// - aCP1x: number
/// - aCP1y: number
/// - aCP2x: number
/// - aCP2y: number
/// - aX: number
/// - aY: number
external _i1.JSAny bezierCurveTo(_i1.JSNumber aCP1x, _i1.JSNumber aCP1y, _i1.JSNumber aCP2x, _i1.JSNumber aCP2y, _i1.JSNumber aX, _i1.JSNumber aY, );
/// Method [splineThru]
///
/// Parameters:
/// - pts: Vector2[]
external _i1.JSAny splineThru(_i1.JSArray<Vector2> pts);
/// Method [toShapes]
///
/// Parameters:
/// - isCCW: boolean
external _i1.JSArray<Shape> toShapes(_i1.JSBoolean isCCW);
}
/// Class [ArcCurve]
extension type ArcCurve.$(_i1.JSObject _) implements _i1.JSObject,EllipseCurve {
/// Constructor
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - aRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
external ArcCurve([_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber aRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, _i1.JSBoolean aClockwise, ]);

/// Property [isArcCurve]
///
/// readonly isArcCurve = true
external _i1.JSAny get isArcCurve;
/// Property [type]
///
/// override readonly type: string | "ArcCurve"
external _i1.JSString get type;
}
/// Typedef [CurveType]
///
/// "centripetal" | "chordal" | "catmullrom"
typedef CurveType = _i1.JSString;
/// Class [CatmullRomCurve3]
extension type CatmullRomCurve3.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector3> {
/// Constructor
///
/// Parameters:
/// - points: Vector3[]
/// - closed: boolean
/// - curveType: CurveType
/// - tension: number
external CatmullRomCurve3([_i1.JSArray<Vector3> points, _i1.JSBoolean closed, CurveType curveType, _i1.JSNumber tension, ]);

/// Property [closed]
///
/// closed: boolean
external _i1.JSBoolean closed;

/// Property [points]
///
/// points: Vector3[]
external _i1.JSArray<Vector3> points;

/// Property [curveType]
///
/// curveType: CurveType
external CurveType curveType;

/// Property [tension]
///
/// tension: number
external _i1.JSNumber tension;

/// Property [isCatmullRomCurvethree]
///
/// readonly isCatmullRomCurvethree = true
@_i1.JS('isCatmullRomCurve3') external _i1.JSAny get isCatmullRomCurvethree;
/// Property [type]
///
/// override readonly type: string | "CatmullRomCurve3"
external _i1.JSString get type;
}
/// Class [CubicBezierCurve]
extension type CubicBezierCurve.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector2> {
/// Constructor
///
/// Parameters:
/// - v0: Vector2
/// - v1: Vector2
/// - v2: Vector2
/// - v3: Vector2
external CubicBezierCurve([Vector2 v0, Vector2 v1, Vector2 v2, Vector2 v3, ]);

/// Property [vzero]
///
/// vzero: Vector2
@_i1.JS('v0') external Vector2 vzero;

/// Property [vone]
///
/// vone: Vector2
@_i1.JS('v1') external Vector2 vone;

/// Property [vtwo]
///
/// vtwo: Vector2
@_i1.JS('v2') external Vector2 vtwo;

/// Property [vthree]
///
/// vthree: Vector2
@_i1.JS('v3') external Vector2 vthree;

/// Property [isCubicBezierCurve]
///
/// readonly isCubicBezierCurve = true
external _i1.JSAny get isCubicBezierCurve;
/// Property [type]
///
/// override readonly type: string | "CubicBezierCurve"
external _i1.JSString get type;
}
/// Class [CubicBezierCurve3]
extension type CubicBezierCurve3.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector3> {
/// Constructor
///
/// Parameters:
/// - v0: Vector3
/// - v1: Vector3
/// - v2: Vector3
/// - v3: Vector3
external CubicBezierCurve3([Vector3 v0, Vector3 v1, Vector3 v2, Vector3 v3, ]);

/// Property [vzero]
///
/// vzero: Vector3
@_i1.JS('v0') external Vector3 vzero;

/// Property [vone]
///
/// vone: Vector3
@_i1.JS('v1') external Vector3 vone;

/// Property [vtwo]
///
/// vtwo: Vector3
@_i1.JS('v2') external Vector3 vtwo;

/// Property [vthree]
///
/// vthree: Vector3
@_i1.JS('v3') external Vector3 vthree;

/// Property [isCubicBezierCurvethree]
///
/// readonly isCubicBezierCurvethree = true
@_i1.JS('isCubicBezierCurve3') external _i1.JSAny get isCubicBezierCurvethree;
/// Property [type]
///
/// override readonly type: string | "CubicBezierCurve3"
external _i1.JSString get type;
}
/// Class [EllipseCurve]
extension type EllipseCurve.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector2> {
/// Constructor
///
/// Parameters:
/// - aX: number
/// - aY: number
/// - xRadius: number
/// - yRadius: number
/// - aStartAngle: number
/// - aEndAngle: number
/// - aClockwise: boolean
/// - aRotation: number
external EllipseCurve([_i1.JSNumber aX, _i1.JSNumber aY, _i1.JSNumber xRadius, _i1.JSNumber yRadius, _i1.JSNumber aStartAngle, _i1.JSNumber aEndAngle, _i1.JSBoolean aClockwise, _i1.JSNumber aRotation, ]);

/// Property [aX]
///
/// aX: number
external _i1.JSNumber aX;

/// Property [aY]
///
/// aY: number
external _i1.JSNumber aY;

/// Property [xRadius]
///
/// xRadius: number
external _i1.JSNumber xRadius;

/// Property [yRadius]
///
/// yRadius: number
external _i1.JSNumber yRadius;

/// Property [aStartAngle]
///
/// aStartAngle: number
external _i1.JSNumber aStartAngle;

/// Property [aEndAngle]
///
/// aEndAngle: number
external _i1.JSNumber aEndAngle;

/// Property [aClockwise]
///
/// aClockwise: boolean
external _i1.JSBoolean aClockwise;

/// Property [aRotation]
///
/// aRotation: number
external _i1.JSNumber aRotation;

/// Property [isEllipseCurve]
///
/// readonly isEllipseCurve = true
external _i1.JSAny get isEllipseCurve;
/// Property [type]
///
/// override readonly type: string | "EllipseCurve"
external _i1.JSString get type;
}
/// Class [LineCurve]
extension type LineCurve.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector2> {
/// Constructor
///
/// Parameters:
/// - v1: Vector2
/// - v2: Vector2
external LineCurve([Vector2 v1, Vector2 v2, ]);

/// Property [vone]
///
/// vone: Vector2
@_i1.JS('v1') external Vector2 vone;

/// Property [vtwo]
///
/// vtwo: Vector2
@_i1.JS('v2') external Vector2 vtwo;

/// Property [isLineCurve]
///
/// readonly isLineCurve = true
external _i1.JSAny get isLineCurve;
/// Property [type]
///
/// override readonly type: string | "LineCurve"
external _i1.JSString get type;
}
/// Class [LineCurve3]
extension type LineCurve3.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector3> {
/// Constructor
///
/// Parameters:
/// - v1: Vector3
/// - v2: Vector3
external LineCurve3([Vector3 v1, Vector3 v2, ]);

/// Property [vone]
///
/// vone: Vector3
@_i1.JS('v1') external Vector3 vone;

/// Property [vtwo]
///
/// vtwo: Vector3
@_i1.JS('v2') external Vector3 vtwo;

/// Property [isLineCurvethree]
///
/// readonly isLineCurvethree = true
@_i1.JS('isLineCurve3') external _i1.JSAny get isLineCurvethree;
/// Property [type]
///
/// override readonly type: string | "LineCurve3"
external _i1.JSString get type;
}
/// Class [QuadraticBezierCurve]
extension type QuadraticBezierCurve.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector2> {
/// Constructor
///
/// Parameters:
/// - v0: Vector2
/// - v1: Vector2
/// - v2: Vector2
external QuadraticBezierCurve([Vector2 v0, Vector2 v1, Vector2 v2, ]);

/// Property [vzero]
///
/// vzero: Vector2
@_i1.JS('v0') external Vector2 vzero;

/// Property [vone]
///
/// vone: Vector2
@_i1.JS('v1') external Vector2 vone;

/// Property [vtwo]
///
/// vtwo: Vector2
@_i1.JS('v2') external Vector2 vtwo;

/// Property [isQuadraticBezierCurve]
///
/// readonly isQuadraticBezierCurve = true
external _i1.JSAny get isQuadraticBezierCurve;
/// Property [type]
///
/// override readonly type: string | "QuadraticBezierCurve"
external _i1.JSString get type;
}
/// Class [QuadraticBezierCurve3]
extension type QuadraticBezierCurve3.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector3> {
/// Constructor
///
/// Parameters:
/// - v0: Vector3
/// - v1: Vector3
/// - v2: Vector3
external QuadraticBezierCurve3([Vector3 v0, Vector3 v1, Vector3 v2, ]);

/// Property [vzero]
///
/// vzero: Vector3
@_i1.JS('v0') external Vector3 vzero;

/// Property [vone]
///
/// vone: Vector3
@_i1.JS('v1') external Vector3 vone;

/// Property [vtwo]
///
/// vtwo: Vector3
@_i1.JS('v2') external Vector3 vtwo;

/// Property [isQuadraticBezierCurvethree]
///
/// readonly isQuadraticBezierCurvethree = true
@_i1.JS('isQuadraticBezierCurve3') external _i1.JSAny get isQuadraticBezierCurvethree;
/// Property [type]
///
/// override readonly type: string | "QuadraticBezierCurve3"
external _i1.JSString get type;
}
/// Class [SplineCurve]
extension type SplineCurve.$(_i1.JSObject _) implements _i1.JSObject,Curve<Vector2> {
/// Constructor
///
/// Parameters:
/// - points: Vector2[]
external SplineCurve([_i1.JSArray<Vector2> points]);

/// Property [points]
///
/// points: Vector2[]
external _i1.JSArray<Vector2> points;

/// Property [isSplineCurve]
///
/// readonly isSplineCurve = true
external _i1.JSAny get isSplineCurve;
/// Property [type]
///
/// override readonly type: string | "SplineCurve"
external _i1.JSString get type;
}
/// Method [toHalfFloat]
///
/// Parameters:
/// - val: number
@_i1.JS('toHalfFloat') external _i1.JSNumber toHalfFloat(_i1.JSNumber val);/// Method [fromHalfFloat]
///
/// Parameters:
/// - val: number
@_i1.JS('fromHalfFloat') external _i1.JSNumber fromHalfFloat(_i1.JSNumber val);/// Class [DataUtils]
extension type DataUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [toHalfFloat]
///
/// Parameters:
/// - val: number
external static _i1.JSNumber toHalfFloat(_i1.JSNumber val);
/// Method [fromHalfFloat]
///
/// Parameters:
/// - val: number
external static _i1.JSNumber fromHalfFloat(_i1.JSNumber val);
}
/// Class [ImageUtils]
extension type ImageUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [getDataURL]
///
/// Parameters:
/// - image: HTMLImageElement | HTMLCanvasElement | CanvasImageSource | ImageBitmap | ImageData
/// - type: string
external static _i1.JSString getDataURL(_i1.JSAny image, [_i1.JSString type, ]);
/// Method [sRGBToLinear$1]
///
/// Parameters:
/// - image: HTMLImageElement | HTMLCanvasElement | ImageBitmap
@_i1.JS('sRGBToLinear') external static _i3.HTMLCanvasElement sRGBToLinear$1(_i1.JSAny image);
/// Method [sRGBToLinear$2]
///
/// Parameters:
/// - image: ImageData
@_i1.JS('sRGBToLinear') external static ImageUtils$SRGBToLinear$TypeLiteral sRGBToLinear$2(_i3.ImageData image);
}
/// Interface [ImageUtils$SRGBToLinear$TypeLiteral]
extension type ImageUtils$SRGBToLinear$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: ImageData["data"]
external _i1.JSAny data;

/// Property [width]
///
/// width: ImageData["width"]
external _i1.JSAny width;

/// Property [height]
///
/// height: ImageData["height"]
external _i1.JSAny height;

}
/// Class [ShapeUtils]
extension type ShapeUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [area]
///
/// Parameters:
/// - contour: readonly Vector2Like[]
external static _i1.JSNumber area(_i1.JSArray<Vector2Like> contour);
/// Method [isClockWise]
///
/// Parameters:
/// - pts: readonly Vector2Like[]
external static _i1.JSBoolean isClockWise(_i1.JSArray<Vector2Like> pts);
/// Method [triangulateShape]
///
/// Parameters:
/// - contour: Vector2Like[]
/// - holes: Vector2Like[][]
external static _i1.JSArray<_i1.JSArray<_i1.JSNumber>> triangulateShape(_i1.JSArray<Vector2Like> contour, _i1.JSArray<_i1.JSArray<Vector2Like>> holes, );
}
/// Method [contain]
///
/// Parameters:
/// - texture: Texture
/// - aspect: number
@_i1.JS('contain') external Texture<_i1.JSAny> contain(Texture<_i1.JSAny> texture, _i1.JSNumber aspect, );/// Method [cover]
///
/// Parameters:
/// - texture: Texture
/// - aspect: number
@_i1.JS('cover') external Texture<_i1.JSAny> cover(Texture<_i1.JSAny> texture, _i1.JSNumber aspect, );/// Method [fill]
///
/// Parameters:
/// - texture: Texture
@_i1.JS('fill') external Texture<_i1.JSAny> fill(Texture<_i1.JSAny> texture);/// Method [getByteLength]
///
/// Parameters:
/// - width: number
/// - height: number
/// - format: PixelFormat | CompressedPixelFormat
/// - type: TextureDataType
@_i1.JS('getByteLength') external _i1.JSNumber getByteLength(_i1.JSNumber width, _i1.JSNumber height, _i1.JSAny format, TextureDataType type, );/// Variable [TextureUtils]
///
/// TextureUtils: TextureUtils$TypeLiteral
external TextureUtils$TypeLiteral TextureUtils;/// Interface [TextureUtils$TypeLiteral]
extension type TextureUtils$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [contain]
///
/// contain: typeof contain
external _i1.JSString contain;

/// Property [cover]
///
/// cover: typeof cover
external _i1.JSString cover;

/// Property [fill]
///
/// fill: typeof fill
external _i1.JSString fill;

/// Property [getByteLength]
///
/// getByteLength: typeof getByteLength
external _i1.JSString getByteLength;

}
/// Class [BoxGeometry]
extension type BoxGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - depth: number
/// - widthSegments: number
/// - heightSegments: number
/// - depthSegments: number
external BoxGeometry([_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, _i1.JSNumber widthSegments, _i1.JSNumber heightSegments, _i1.JSNumber depthSegments, ]);

/// Property [type]
///
/// override readonly type: string | "BoxGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: BoxGeometry$Parameters$TypeLiteral
external BoxGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: BoxGeometry$FromJSON$Data$TypeLiteral
external static BoxGeometry fromJSON(BoxGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [BoxGeometry$Parameters$TypeLiteral]
extension type BoxGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [width]
///
/// readonly width: number
external _i1.JSNumber get width;
/// Property [height]
///
/// readonly height: number
external _i1.JSNumber get height;
/// Property [depth]
///
/// readonly depth: number
external _i1.JSNumber get depth;
/// Property [widthSegments]
///
/// readonly widthSegments: number
external _i1.JSNumber get widthSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
/// Property [depthSegments]
///
/// readonly depthSegments: number
external _i1.JSNumber get depthSegments;
}
/// Interface [BoxGeometry$FromJSON$Data$TypeLiteral]
extension type BoxGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [CapsuleGeometry]
extension type CapsuleGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - height: number
/// - capSegments: number
/// - radialSegments: number
/// - heightSegments: number
external CapsuleGeometry([_i1.JSNumber radius, _i1.JSNumber height, _i1.JSNumber capSegments, _i1.JSNumber radialSegments, _i1.JSNumber heightSegments, ]);

/// Property [type]
///
/// override readonly type: string | "CapsuleGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: CapsuleGeometry$Parameters$TypeLiteral
external CapsuleGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: CapsuleGeometry$FromJSON$Data$TypeLiteral
external static CapsuleGeometry fromJSON(CapsuleGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [CapsuleGeometry$Parameters$TypeLiteral]
extension type CapsuleGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [height]
///
/// readonly height: number
external _i1.JSNumber get height;
/// Property [capSegments]
///
/// readonly capSegments: number
external _i1.JSNumber get capSegments;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
}
/// Interface [CapsuleGeometry$FromJSON$Data$TypeLiteral]
extension type CapsuleGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [CircleGeometry]
extension type CircleGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - segments: number
/// - thetaStart: number
/// - thetaLength: number
external CircleGeometry([_i1.JSNumber radius, _i1.JSNumber segments, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "CircleGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: CircleGeometry$Parameters$TypeLiteral
external CircleGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: CircleGeometry$FromJSON$Data$TypeLiteral
external static CircleGeometry fromJSON(CircleGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [CircleGeometry$Parameters$TypeLiteral]
extension type CircleGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [segments]
///
/// readonly segments: number
external _i1.JSNumber get segments;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Interface [CircleGeometry$FromJSON$Data$TypeLiteral]
extension type CircleGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [ConeGeometry]
extension type ConeGeometry.$(_i1.JSObject _) implements _i1.JSObject,CylinderGeometry {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - height: number
/// - radialSegments: number
/// - heightSegments: number
/// - openEnded: boolean
/// - thetaStart: number
/// - thetaLength: number
external ConeGeometry([_i1.JSNumber radius, _i1.JSNumber height, _i1.JSNumber radialSegments, _i1.JSNumber heightSegments, _i1.JSBoolean openEnded, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "ConeGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// override readonly parameters: ConeGeometry$Parameters$TypeLiteral
external ConeGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: ConeGeometry$FromJSON$Data$TypeLiteral
external static ConeGeometry fromJSON(ConeGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [ConeGeometry$Parameters$TypeLiteral]
extension type ConeGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [radiusTop]
///
/// readonly radiusTop: number
external _i1.JSNumber get radiusTop;
/// Property [radiusBottom]
///
/// readonly radiusBottom: number
external _i1.JSNumber get radiusBottom;
/// Property [height]
///
/// readonly height: number
external _i1.JSNumber get height;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
/// Property [openEnded]
///
/// readonly openEnded: boolean
external _i1.JSBoolean get openEnded;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Interface [ConeGeometry$FromJSON$Data$TypeLiteral]
extension type ConeGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [CylinderGeometry]
extension type CylinderGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radiusTop: number
/// - radiusBottom: number
/// - height: number
/// - radialSegments: number
/// - heightSegments: number
/// - openEnded: boolean
/// - thetaStart: number
/// - thetaLength: number
external CylinderGeometry([_i1.JSNumber radiusTop, _i1.JSNumber radiusBottom, _i1.JSNumber height, _i1.JSNumber radialSegments, _i1.JSNumber heightSegments, _i1.JSBoolean openEnded, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "CylinderGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: CylinderGeometry$Parameters$TypeLiteral
external CylinderGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: any
external static CylinderGeometry fromJSON(_i1.JSAny data);
}
/// Interface [CylinderGeometry$Parameters$TypeLiteral]
extension type CylinderGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radiusTop]
///
/// readonly radiusTop: number
external _i1.JSNumber get radiusTop;
/// Property [radiusBottom]
///
/// readonly radiusBottom: number
external _i1.JSNumber get radiusBottom;
/// Property [height]
///
/// readonly height: number
external _i1.JSNumber get height;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
/// Property [openEnded]
///
/// readonly openEnded: boolean
external _i1.JSBoolean get openEnded;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Class [DodecahedronGeometry]
extension type DodecahedronGeometry.$(_i1.JSObject _) implements _i1.JSObject,PolyhedronGeometry {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - detail: number
external DodecahedronGeometry([_i1.JSNumber radius, _i1.JSNumber detail, ]);

/// Property [type]
///
/// override readonly type: string | "DodecahedronGeometry"
external _i1.JSString get type;
/// Method [fromJSON]
///
/// Parameters:
/// - data: DodecahedronGeometry$FromJSON$Data$TypeLiteral
external static DodecahedronGeometry fromJSON(DodecahedronGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [DodecahedronGeometry$FromJSON$Data$TypeLiteral]
extension type DodecahedronGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [EdgesGeometry]
extension type EdgesGeometry<TBufferGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>>.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TBufferGeometry | null
/// - thresholdAngle: number
external EdgesGeometry([TBufferGeometry? geometry, _i1.JSNumber thresholdAngle, ]);

/// Property [type]
///
/// override readonly type: string | "EdgesGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: EdgesGeometry$Parameters$TypeLiteral
external EdgesGeometry$Parameters$TypeLiteral get parameters;
}
/// Interface [EdgesGeometry$Parameters$TypeLiteral]
extension type EdgesGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [geometry]
///
/// readonly geometry: TBufferGeometry | null
external TBufferGeometry get geometry;
/// Property [thresholdAngle]
///
/// readonly thresholdAngle: number
external _i1.JSNumber get thresholdAngle;
}
/// Interface [ExtrudeGeometryOptions]
extension type ExtrudeGeometryOptions.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [curveSegments]
///
/// curveSegments?: number | undefined
external _i1.JSNumber? curveSegments;

/// Property [steps]
///
/// steps?: number | undefined
external _i1.JSNumber? steps;

/// Property [depth]
///
/// depth?: number | undefined
external _i1.JSNumber? depth;

/// Property [bevelEnabled]
///
/// bevelEnabled?: boolean | undefined
external _i1.JSBoolean? bevelEnabled;

/// Property [bevelThickness]
///
/// bevelThickness?: number | undefined
external _i1.JSNumber? bevelThickness;

/// Property [bevelSize]
///
/// bevelSize?: number | undefined
external _i1.JSNumber? bevelSize;

/// Property [bevelOffset]
///
/// bevelOffset?: number | undefined
external _i1.JSNumber? bevelOffset;

/// Property [bevelSegments]
///
/// bevelSegments?: number | undefined
external _i1.JSNumber? bevelSegments;

/// Property [extrudePath]
///
/// extrudePath?: Curve | undefined
external Curve<Vector3>? extrudePath;

/// Property [UVGenerator]
///
/// UVGenerator?: UVGenerator | undefined
external UVGenerator? UVGenerator;

}
/// Interface [UVGenerator]
extension type UVGenerator.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [generateTopUV]
///
/// Parameters:
/// - geometry: ExtrudeGeometry
/// - vertices: number[]
/// - indexA: number
/// - indexB: number
/// - indexC: number
///
/// Returns:
/// - Vector2[]
external _i1.JSArray<Vector2> generateTopUV(ExtrudeGeometry geometry, _i1.JSArray<_i1.JSNumber> vertices, _i1.JSNumber indexA, _i1.JSNumber indexB, _i1.JSNumber indexC, );
/// Method [generateSideWallUV]
///
/// Parameters:
/// - geometry: ExtrudeGeometry
/// - vertices: number[]
/// - indexA: number
/// - indexB: number
/// - indexC: number
/// - indexD: number
///
/// Returns:
/// - Vector2[]
external _i1.JSArray<Vector2> generateSideWallUV(ExtrudeGeometry geometry, _i1.JSArray<_i1.JSNumber> vertices, _i1.JSNumber indexA, _i1.JSNumber indexB, _i1.JSNumber indexC, _i1.JSNumber indexD, );
}
/// Class [ExtrudeGeometry]
extension type ExtrudeGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - shapes: Shape | Shape[]
/// - options: ExtrudeGeometryOptions
external ExtrudeGeometry([_i1.JSAny shapes, ExtrudeGeometryOptions options, ]);

/// Property [type]
///
/// override readonly type: string | "ExtrudeGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: ExtrudeGeometry$Parameters$TypeLiteral
external ExtrudeGeometry$Parameters$TypeLiteral get parameters;
/// Method [addShape]
///
/// Parameters:
/// - shape: Shape
external void addShape(Shape shape);
/// Method [fromJSON]
///
/// Parameters:
/// - data: ExtrudeGeometry$FromJSON$Data$TypeLiteral
/// - shapes: 
external static ExtrudeGeometry fromJSON(ExtrudeGeometry$FromJSON$Data$TypeLiteral data, _i1.JSAny shapes, );
}
/// Interface [ExtrudeGeometry$Parameters$TypeLiteral]
extension type ExtrudeGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shapes]
///
/// readonly shapes: Shape | Shape[]
external _i1.JSAny get shapes;
/// Property [options]
///
/// readonly options: ExtrudeGeometryOptions
external ExtrudeGeometryOptions get options;
}
/// Interface [ExtrudeGeometry$FromJSON$Data$TypeLiteral]
extension type ExtrudeGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [IcosahedronGeometry]
extension type IcosahedronGeometry.$(_i1.JSObject _) implements _i1.JSObject,PolyhedronGeometry {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - detail: number
external IcosahedronGeometry([_i1.JSNumber radius, _i1.JSNumber detail, ]);

/// Property [type]
///
/// override readonly type: string | "IcosahedronGeometry"
external _i1.JSString get type;
/// Method [fromJSON]
///
/// Parameters:
/// - data: IcosahedronGeometry$FromJSON$Data$TypeLiteral
external static IcosahedronGeometry fromJSON(IcosahedronGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [IcosahedronGeometry$FromJSON$Data$TypeLiteral]
extension type IcosahedronGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [LatheGeometry]
extension type LatheGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - points: Vector2[]
/// - segments: number
/// - phiStart: number
/// - phiLength: number
external LatheGeometry([_i1.JSArray<Vector2> points, _i1.JSNumber segments, _i1.JSNumber phiStart, _i1.JSNumber phiLength, ]);

/// Property [type]
///
/// override readonly type: string | "LatheGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: LatheGeometry$Parameters$TypeLiteral
external LatheGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: LatheGeometry$FromJSON$Data$TypeLiteral
external static LatheGeometry fromJSON(LatheGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [LatheGeometry$Parameters$TypeLiteral]
extension type LatheGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [points]
///
/// readonly points: Vector2[]
external _i1.JSArray<Vector2> get points;
/// Property [segments]
///
/// readonly segments: number
external _i1.JSNumber get segments;
/// Property [phiStart]
///
/// readonly phiStart: number
external _i1.JSNumber get phiStart;
/// Property [phiLength]
///
/// readonly phiLength: number
external _i1.JSNumber get phiLength;
}
/// Interface [LatheGeometry$FromJSON$Data$TypeLiteral]
extension type LatheGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [OctahedronGeometry]
extension type OctahedronGeometry.$(_i1.JSObject _) implements _i1.JSObject,PolyhedronGeometry {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - detail: number
external OctahedronGeometry([_i1.JSNumber radius, _i1.JSNumber detail, ]);

/// Property [type]
///
/// override readonly type: string | "OctahedronGeometry"
external _i1.JSString get type;
/// Method [fromJSON]
///
/// Parameters:
/// - data: OctahedronGeometry$FromJSON$Data$TypeLiteral
external static OctahedronGeometry fromJSON(OctahedronGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [OctahedronGeometry$FromJSON$Data$TypeLiteral]
extension type OctahedronGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [PlaneGeometry]
extension type PlaneGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - widthSegments: number
/// - heightSegments: number
external PlaneGeometry([_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber widthSegments, _i1.JSNumber heightSegments, ]);

/// Property [type]
///
/// override readonly type: string | "PlaneGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: PlaneGeometry$Parameters$TypeLiteral
external PlaneGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: PlaneGeometry$FromJSON$Data$TypeLiteral
external static PlaneGeometry fromJSON(PlaneGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [PlaneGeometry$Parameters$TypeLiteral]
extension type PlaneGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [width]
///
/// readonly width: number
external _i1.JSNumber get width;
/// Property [height]
///
/// readonly height: number
external _i1.JSNumber get height;
/// Property [widthSegments]
///
/// readonly widthSegments: number
external _i1.JSNumber get widthSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
}
/// Interface [PlaneGeometry$FromJSON$Data$TypeLiteral]
extension type PlaneGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [PolyhedronGeometry]
extension type PolyhedronGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - vertices: number[]
/// - indices: number[]
/// - radius: number
/// - detail: number
external PolyhedronGeometry([_i1.JSArray<_i1.JSNumber> vertices, _i1.JSArray<_i1.JSNumber> indices, _i1.JSNumber radius, _i1.JSNumber detail, ]);

/// Property [type]
///
/// override readonly type: string | "PolyhedronGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: PolyhedronGeometry$Parameters$TypeLiteral
external PolyhedronGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: PolyhedronGeometry$FromJSON$Data$TypeLiteral
external static PolyhedronGeometry fromJSON(PolyhedronGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [PolyhedronGeometry$Parameters$TypeLiteral]
extension type PolyhedronGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [vertices]
///
/// readonly vertices: number[]
external _i1.JSArray<_i1.JSNumber> get vertices;
/// Property [indices]
///
/// readonly indices: number[]
external _i1.JSArray<_i1.JSNumber> get indices;
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [detail]
///
/// readonly detail: number
external _i1.JSNumber get detail;
}
/// Interface [PolyhedronGeometry$FromJSON$Data$TypeLiteral]
extension type PolyhedronGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [RingGeometry]
extension type RingGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - innerRadius: number
/// - outerRadius: number
/// - thetaSegments: number
/// - phiSegments: number
/// - thetaStart: number
/// - thetaLength: number
external RingGeometry([_i1.JSNumber innerRadius, _i1.JSNumber outerRadius, _i1.JSNumber thetaSegments, _i1.JSNumber phiSegments, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "RingGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: RingGeometry$Parameters$TypeLiteral
external RingGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: RingGeometry$FromJSON$Data$TypeLiteral
external static RingGeometry fromJSON(RingGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [RingGeometry$Parameters$TypeLiteral]
extension type RingGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [innerRadius]
///
/// readonly innerRadius: number
external _i1.JSNumber get innerRadius;
/// Property [outerRadius]
///
/// readonly outerRadius: number
external _i1.JSNumber get outerRadius;
/// Property [thetaSegments]
///
/// readonly thetaSegments: number
external _i1.JSNumber get thetaSegments;
/// Property [phiSegments]
///
/// readonly phiSegments: number
external _i1.JSNumber get phiSegments;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Interface [RingGeometry$FromJSON$Data$TypeLiteral]
extension type RingGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [ShapeGeometry]
extension type ShapeGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - shapes: Shape | Shape[]
/// - curveSegments: number
external ShapeGeometry([_i1.JSAny shapes, _i1.JSNumber curveSegments, ]);

/// Property [type]
///
/// override readonly type: string | "ShapeGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: ShapeGeometry$Parameters$TypeLiteral
external ShapeGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: ShapeGeometry$FromJSON$Data$TypeLiteral
external static ShapeGeometry fromJSON(ShapeGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [ShapeGeometry$Parameters$TypeLiteral]
extension type ShapeGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shapes]
///
/// readonly shapes: Shape | Shape[]
external _i1.JSAny get shapes;
/// Property [curveSegments]
///
/// readonly curveSegments: number
external _i1.JSNumber get curveSegments;
}
/// Interface [ShapeGeometry$FromJSON$Data$TypeLiteral]
extension type ShapeGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [SphereGeometry]
extension type SphereGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - widthSegments: number
/// - heightSegments: number
/// - phiStart: number
/// - phiLength: number
/// - thetaStart: number
/// - thetaLength: number
external SphereGeometry([_i1.JSNumber radius, _i1.JSNumber widthSegments, _i1.JSNumber heightSegments, _i1.JSNumber phiStart, _i1.JSNumber phiLength, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "SphereGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: SphereGeometry$Parameters$TypeLiteral
external SphereGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: SphereGeometry$FromJSON$Data$TypeLiteral
external static SphereGeometry fromJSON(SphereGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [SphereGeometry$Parameters$TypeLiteral]
extension type SphereGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [widthSegments]
///
/// readonly widthSegments: number
external _i1.JSNumber get widthSegments;
/// Property [heightSegments]
///
/// readonly heightSegments: number
external _i1.JSNumber get heightSegments;
/// Property [phiStart]
///
/// readonly phiStart: number
external _i1.JSNumber get phiStart;
/// Property [phiLength]
///
/// readonly phiLength: number
external _i1.JSNumber get phiLength;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Interface [SphereGeometry$FromJSON$Data$TypeLiteral]
extension type SphereGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [TetrahedronGeometry]
extension type TetrahedronGeometry.$(_i1.JSObject _) implements _i1.JSObject,PolyhedronGeometry {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - detail: number
external TetrahedronGeometry([_i1.JSNumber radius, _i1.JSNumber detail, ]);

/// Property [type]
///
/// override readonly type: string | "TetrahedronGeometry"
external _i1.JSString get type;
/// Method [fromJSON]
///
/// Parameters:
/// - data: TetrahedronGeometry$FromJSON$Data$TypeLiteral
external static TetrahedronGeometry fromJSON(TetrahedronGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [TetrahedronGeometry$FromJSON$Data$TypeLiteral]
extension type TetrahedronGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [TorusGeometryJSON]
extension type TorusGeometryJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [tube]
///
/// tube: number
external _i1.JSNumber tube;

/// Property [radialSegments]
///
/// radialSegments: number
external _i1.JSNumber radialSegments;

/// Property [tubularSegments]
///
/// tubularSegments: number
external _i1.JSNumber tubularSegments;

/// Property [arc]
///
/// arc: number
external _i1.JSNumber arc;

}
/// Class [TorusGeometry]
extension type TorusGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - tube: number
/// - radialSegments: number
/// - tubularSegments: number
/// - arc: number
/// - thetaStart: number
/// - thetaLength: number
external TorusGeometry([_i1.JSNumber radius, _i1.JSNumber tube, _i1.JSNumber radialSegments, _i1.JSNumber tubularSegments, _i1.JSNumber arc, _i1.JSNumber thetaStart, _i1.JSNumber thetaLength, ]);

/// Property [type]
///
/// override readonly type: string | "TorusGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: TorusGeometry$Parameters$TypeLiteral
external TorusGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: TorusGeometryJSON
external static TorusGeometry fromJSON(TorusGeometryJSON data);
}
/// Interface [TorusGeometry$Parameters$TypeLiteral]
extension type TorusGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [tube]
///
/// readonly tube: number
external _i1.JSNumber get tube;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [tubularSegments]
///
/// readonly tubularSegments: number
external _i1.JSNumber get tubularSegments;
/// Property [arc]
///
/// readonly arc: number
external _i1.JSNumber get arc;
/// Property [thetaStart]
///
/// readonly thetaStart: number
external _i1.JSNumber get thetaStart;
/// Property [thetaLength]
///
/// readonly thetaLength: number
external _i1.JSNumber get thetaLength;
}
/// Class [TorusKnotGeometry]
extension type TorusKnotGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - tube: number
/// - tubularSegments: number
/// - radialSegments: number
/// - p: number
/// - q: number
external TorusKnotGeometry([_i1.JSNumber radius, _i1.JSNumber tube, _i1.JSNumber tubularSegments, _i1.JSNumber radialSegments, _i1.JSNumber p, _i1.JSNumber q, ]);

/// Property [type]
///
/// override readonly type: string | "TorusKnotGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: TorusKnotGeometry$Parameters$TypeLiteral
external TorusKnotGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: TorusKnotGeometry$FromJSON$Data$TypeLiteral
external static TorusKnotGeometry fromJSON(TorusKnotGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [TorusKnotGeometry$Parameters$TypeLiteral]
extension type TorusKnotGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [tube]
///
/// readonly tube: number
external _i1.JSNumber get tube;
/// Property [tubularSegments]
///
/// readonly tubularSegments: number
external _i1.JSNumber get tubularSegments;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [p]
///
/// readonly p: number
external _i1.JSNumber get p;
/// Property [q]
///
/// readonly q: number
external _i1.JSNumber get q;
}
/// Interface [TorusKnotGeometry$FromJSON$Data$TypeLiteral]
extension type TorusKnotGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [TubeGeometry]
extension type TubeGeometry.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - path: Curve
/// - tubularSegments: number
/// - radius: number
/// - radialSegments: number
/// - closed: boolean
external TubeGeometry([Curve<Vector3> path, _i1.JSNumber tubularSegments, _i1.JSNumber radius, _i1.JSNumber radialSegments, _i1.JSBoolean closed, ]);

/// Property [tangents]
///
/// tangents: Vector3[]
external _i1.JSArray<Vector3> tangents;

/// Property [normals]
///
/// normals: Vector3[]
external _i1.JSArray<Vector3> normals;

/// Property [binormals]
///
/// binormals: Vector3[]
external _i1.JSArray<Vector3> binormals;

/// Property [type]
///
/// override readonly type: string | "TubeGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: TubeGeometry$Parameters$TypeLiteral
external TubeGeometry$Parameters$TypeLiteral get parameters;
/// Method [fromJSON]
///
/// Parameters:
/// - data: TubeGeometry$FromJSON$Data$TypeLiteral
external static TubeGeometry fromJSON(TubeGeometry$FromJSON$Data$TypeLiteral data);
}
/// Interface [TubeGeometry$Parameters$TypeLiteral]
extension type TubeGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [path]
///
/// readonly path: Curve
external Curve<Vector3> get path;
/// Property [tubularSegments]
///
/// readonly tubularSegments: number
external _i1.JSNumber get tubularSegments;
/// Property [radius]
///
/// readonly radius: number
external _i1.JSNumber get radius;
/// Property [radialSegments]
///
/// readonly radialSegments: number
external _i1.JSNumber get radialSegments;
/// Property [closed]
///
/// readonly closed: boolean
external _i1.JSBoolean get closed;
}
/// Interface [TubeGeometry$FromJSON$Data$TypeLiteral]
extension type TubeGeometry$FromJSON$Data$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [WireframeGeometry]
extension type WireframeGeometry<TBufferGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>>.$(_i1.JSObject _) implements _i1.JSObject,BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TBufferGeometry
external WireframeGeometry([TBufferGeometry geometry]);

/// Property [type]
///
/// override readonly type: string | "WireframeGeometry"
external _i1.JSString get type;
/// Property [parameters]
///
/// readonly parameters: WireframeGeometry$Parameters$TypeLiteral
external WireframeGeometry$Parameters$TypeLiteral get parameters;
}
/// Interface [WireframeGeometry$Parameters$TypeLiteral]
extension type WireframeGeometry$Parameters$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [geometry]
///
/// readonly geometry: TBufferGeometry
external TBufferGeometry get geometry;
}
/// Class [ArrowHelper]
extension type ArrowHelper.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - dir: Vector3
/// - origin: Vector3
/// - length: number
/// - color: ColorRepresentation
/// - headLength: number
/// - headWidth: number
external ArrowHelper([Vector3 dir, Vector3 origin, _i1.JSNumber length, ColorRepresentation color, _i1.JSNumber headLength, _i1.JSNumber headWidth, ]);

/// Property [line]
///
/// line: Line
external Line<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> line;

/// Property [cone]
///
/// cone: Mesh
external Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> cone;

/// Method [setDirection]
///
/// Parameters:
/// - dir: Vector3
external void setDirection(Vector3 dir);
/// Method [setLength]
///
/// Parameters:
/// - length: number
/// - headLength: number
/// - headWidth: number
external void setLength(_i1.JSNumber length, [_i1.JSNumber headLength, _i1.JSNumber headWidth, ]);
/// Method [setColor]
///
/// Parameters:
/// - color: ColorRepresentation
external void setColor(ColorRepresentation color);
/// Method [copy]
///
/// Parameters:
/// - source: ArrowHelper
external _i1.JSAny copy(ArrowHelper source);
/// Method [dispose]
external void dispose();
}
/// Class [AxesHelper]
extension type AxesHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - size: number
external AxesHelper([_i1.JSNumber size]);

/// Method [setColors]
///
/// Parameters:
/// - xAxisColor: ColorRepresentation
/// - yAxisColor: ColorRepresentation
/// - zAxisColor: ColorRepresentation
external AxesHelper setColors(ColorRepresentation xAxisColor, ColorRepresentation yAxisColor, ColorRepresentation zAxisColor, );
/// Method [dispose]
external void dispose();
}
/// Class [Box3Helper]
extension type Box3Helper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - box: Box3
/// - color: ColorRepresentation
external Box3Helper(Box3 box, [ColorRepresentation color, ]);

/// Property [box]
///
/// box: Box3
external Box3 box;

/// Method [dispose]
external void dispose();
}
/// Class [BoxHelper]
extension type BoxHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,LineBasicMaterial,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - object: Object3D
/// - color: ColorRepresentation
external BoxHelper(Object3D<Object3DEventMap> object, [ColorRepresentation color, ]);

/// Property [object]
///
/// object: Object3D
external Object3D<Object3DEventMap> object;

/// Method [update]
external void update();
/// Method [setFromObject]
///
/// Parameters:
/// - object: Object3D
external BoxHelper setFromObject(Object3D<Object3DEventMap> object);
/// Method [copy]
///
/// Parameters:
/// - source: BoxHelper
/// - recursive: boolean
external _i1.JSAny copy(BoxHelper source, [_i1.JSBoolean recursive, ]);
/// Method [dispose]
external void dispose();
}
/// Class [CameraHelper]
extension type CameraHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - camera: Camera
external CameraHelper(Camera camera);

/// Property [camera]
///
/// camera: Camera
external Camera camera;

/// Property [pointMap]
///
/// pointMap: CameraHelper$PointMap$TypeLiteral
external CameraHelper$PointMap$TypeLiteral pointMap;

/// Method [setColors]
///
/// Parameters:
/// - frustum: Color
/// - cone: Color
/// - up: Color
/// - target: Color
/// - cross: Color
external CameraHelper setColors(Color frustum, Color cone, Color up, Color target, Color cross, );
/// Method [update]
external void update();
/// Method [dispose]
external void dispose();
}
/// Interface [CameraHelper$PointMap$TypeLiteral]
extension type CameraHelper$PointMap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString x, _i1.JSArray<_i1.JSNumber> value, );
external _i1.JSArray<_i1.JSNumber> operator [](_i1.JSString x);
}
/// Class [DirectionalLightHelper]
extension type DirectionalLightHelper.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - light: DirectionalLight
/// - size: number
/// - color: ColorRepresentation
external DirectionalLightHelper(DirectionalLight light, [_i1.JSNumber size, ColorRepresentation color, ]);

/// Property [light]
///
/// light: DirectionalLight
external DirectionalLight light;

/// Property [color]
///
/// color: ColorRepresentation | undefined
external ColorRepresentation color;

/// Property [lightPlane]
///
/// lightPlane: Line
external Line<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> lightPlane;

/// Property [targetLine]
///
/// targetLine: Line
external Line<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> targetLine;

/// Method [dispose]
external void dispose();
/// Method [update]
external void update();
}
/// Class [GridHelper]
extension type GridHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,LineBasicMaterial,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - size: number
/// - divisions: number
/// - color1: ColorRepresentation
/// - color2: ColorRepresentation
external GridHelper([_i1.JSNumber size, _i1.JSNumber divisions, ColorRepresentation color1, ColorRepresentation color2, ]);

/// Method [dispose]
external void dispose();
}
/// Class [HemisphereLightHelper]
extension type HemisphereLightHelper.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - light: HemisphereLight
/// - size: number
/// - color: ColorRepresentation
external HemisphereLightHelper(HemisphereLight light, [_i1.JSNumber size, ColorRepresentation color, ]);

/// Property [light]
///
/// light: HemisphereLight
external HemisphereLight light;

/// Property [color]
///
/// color: ColorRepresentation | undefined
external ColorRepresentation color;

/// Property [material]
///
/// material: MeshBasicMaterial
external MeshBasicMaterial material;

/// Method [dispose]
external void dispose();
/// Method [update]
external void update();
}
/// Class [PlaneHelper]
extension type PlaneHelper.$(_i1.JSObject _) implements _i1.JSObject,Line<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - plane: Plane
/// - size: number
/// - hex: ColorRepresentation
external PlaneHelper(Plane plane, [_i1.JSNumber size, ColorRepresentation hex, ]);

/// Property [plane]
///
/// plane: Plane
external Plane plane;

/// Property [size]
///
/// size: number
external _i1.JSNumber size;

/// Method [dispose]
external void dispose();
}
/// Class [PointLightHelper]
extension type PointLightHelper.$(_i1.JSObject _) implements _i1.JSObject,Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - light: PointLight
/// - sphereSize: number
/// - color: ColorRepresentation
external PointLightHelper(PointLight light, [_i1.JSNumber sphereSize, ColorRepresentation color, ]);

/// Property [light]
///
/// light: PointLight
external PointLight light;

/// Property [color]
///
/// color: ColorRepresentation | undefined
external ColorRepresentation color;

/// Method [dispose]
external void dispose();
/// Method [update]
external void update();
}
/// Class [PolarGridHelper]
extension type PolarGridHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - sectors: number
/// - rings: number
/// - divisions: number
/// - color1: ColorRepresentation
/// - color2: ColorRepresentation
external PolarGridHelper([_i1.JSNumber radius, _i1.JSNumber sectors, _i1.JSNumber rings, _i1.JSNumber divisions, ColorRepresentation color1, ColorRepresentation color2, ]);

/// Method [dispose]
external void dispose();
}
/// Class [SkeletonHelper]
extension type SkeletonHelper.$(_i1.JSObject _) implements _i1.JSObject,LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - object: Object3D
external SkeletonHelper(Object3D<Object3DEventMap> object);

/// Property [root]
///
/// root: Object3D
external Object3D<Object3DEventMap> root;

/// Property [bones]
///
/// bones: Bone[]
external _i1.JSArray<Bone<Object3DEventMap>> bones;

/// Property [isSkeletonHelper]
///
/// readonly isSkeletonHelper: boolean
external _i1.JSBoolean get isSkeletonHelper;
/// Method [setColors]
///
/// Parameters:
/// - color1: Color
/// - color2: Color
external SkeletonHelper setColors(Color color1, Color color2, );
/// Method [dispose]
external void dispose();
}
/// Class [SpotLightHelper]
extension type SpotLightHelper.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - light: SpotLight
/// - color: ColorRepresentation
external SpotLightHelper(SpotLight light, [ColorRepresentation color, ]);

/// Property [light]
///
/// light: SpotLight
external SpotLight light;

/// Property [color]
///
/// color: ColorRepresentation | undefined
external ColorRepresentation color;

/// Property [cone]
///
/// cone: LineSegments
external LineSegments<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> cone;

/// Method [dispose]
external void dispose();
/// Method [update]
external void update();
}
/// Class [AmbientLight]
extension type AmbientLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
external AmbientLight([ColorRepresentation color, _i1.JSNumber intensity, ]);

/// Property [isAmbientLight]
///
/// readonly isAmbientLight: boolean
external _i1.JSBoolean get isAmbientLight;
}
/// Interface [DirectionalLightJSON]
extension type DirectionalLightJSON.$(_i1.JSObject _) implements LightJSON {
/// Property [shadow]
///
/// shadow: LightShadowJSON
external LightShadowJSON shadow;

/// Property [target]
///
/// target: string
external _i1.JSString target;

}
/// Class [DirectionalLight]
extension type DirectionalLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
external DirectionalLight([ColorRepresentation color, _i1.JSNumber intensity, ]);

/// Property [target]
///
/// target: Object3D
external Object3D<Object3DEventMap> target;

/// Property [shadow]
///
/// shadow: DirectionalLightShadow
external DirectionalLightShadow shadow;

/// Property [isDirectionalLight]
///
/// readonly isDirectionalLight: boolean
external _i1.JSBoolean get isDirectionalLight;
/// Method [copy]
///
/// Parameters:
/// - source: DirectionalLight
external _i1.JSAny copy(DirectionalLight source);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external DirectionalLightJSON toJSON([JSONMeta meta]);
}
/// Class [DirectionalLightShadow]
extension type DirectionalLightShadow.$(_i1.JSObject _) implements _i1.JSObject,LightShadow<OrthographicCamera> {
/// Constructor
external DirectionalLightShadow();

/// Property [isDirectionalLightShadow]
///
/// readonly isDirectionalLightShadow: boolean
external _i1.JSBoolean get isDirectionalLightShadow;
}
/// Interface [HemisphereLightJSON]
extension type HemisphereLightJSON.$(_i1.JSObject _) implements LightJSON {
/// Property [groundColor]
///
/// groundColor: number
external _i1.JSNumber groundColor;

}
/// Class [HemisphereLight]
extension type HemisphereLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - skyColor: ColorRepresentation
/// - groundColor: ColorRepresentation
/// - intensity: number
external HemisphereLight([ColorRepresentation skyColor, ColorRepresentation groundColor, _i1.JSNumber intensity, ]);

/// Property [groundColor]
///
/// groundColor: Color
external Color groundColor;

/// Property [isHemisphereLight]
///
/// readonly isHemisphereLight: boolean
external _i1.JSBoolean get isHemisphereLight;
/// Method [copy]
///
/// Parameters:
/// - source: HemisphereLight
/// - recursive: boolean
external _i1.JSAny copy(HemisphereLight source, [_i1.JSBoolean recursive, ]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external HemisphereLightJSON toJSON([JSONMeta meta]);
}
/// Interface [LightJSON]
extension type LightJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [color]
///
/// color: number
external _i1.JSNumber color;

/// Property [intensity]
///
/// intensity: number
external _i1.JSNumber intensity;

}
/// Interface [LightEventMap]
extension type LightEventMap.$(_i1.JSObject _) implements Object3DEventMap {
/// Property [dispose]
///
/// dispose: LightEventMap$Dispose$TypeLiteral
external LightEventMap$Dispose$TypeLiteral dispose;

}
/// Class [Light]
extension type Light._(_i1.JSObject _) implements _i1.JSObject,Object3D<LightEventMap> {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
external Light([ColorRepresentation color, _i1.JSNumber intensity, ]);

/// Property [color]
///
/// color: Color
external Color color;

/// Property [intensity]
///
/// intensity: number
external _i1.JSNumber intensity;

/// Property [isLight]
///
/// readonly isLight: boolean
external _i1.JSBoolean get isLight;
/// Method [dispose]
external void dispose();
/// Method [copy]
///
/// Parameters:
/// - source: Light
/// - recursive: boolean
external _i1.JSAny copy(Light source, [_i1.JSBoolean recursive, ]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external LightJSON toJSON([JSONMeta meta]);
}
/// Interface [LightEventMap$Dispose$TypeLiteral]
extension type LightEventMap$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [LightProbeJSON]
extension type LightProbeJSON.$(_i1.JSObject _) implements LightJSON {
/// Property [sh]
///
/// sh: number[]
external _i1.JSArray<_i1.JSNumber> sh;

}
/// Class [LightProbe]
extension type LightProbe.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - sh: SphericalHarmonics3
/// - intensity: number
external LightProbe([SphericalHarmonics3 sh, _i1.JSNumber intensity, ]);

/// Property [sh]
///
/// sh: SphericalHarmonics3
external SphericalHarmonics3 sh;

/// Property [isLightProbe]
///
/// readonly isLightProbe: boolean
external _i1.JSBoolean get isLightProbe;
/// Method [copy]
///
/// Parameters:
/// - source: LightProbe
external _i1.JSAny copy(LightProbe source);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external LightProbeJSON toJSON([JSONMeta meta]);
}
/// Interface [LightShadowJSON]
extension type LightShadowJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [intensity]
///
/// intensity?: number
external _i1.JSNumber? intensity;

/// Property [bias]
///
/// bias?: number
external _i1.JSNumber? bias;

/// Property [normalBias]
///
/// normalBias?: number
external _i1.JSNumber? normalBias;

/// Property [radius]
///
/// radius?: number
external _i1.JSNumber? radius;

/// Property [mapSize]
///
/// mapSize?: Vector2Tuple
external Vector2Tuple? mapSize;

/// Property [camera]
///
/// camera: Omit
external _i2.Omit<Object3DJSONObject,_i1.JSString> camera;

}
/// Class [LightShadow]
extension type LightShadow<TCamera extends Camera>._(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - camera: TCamera
external LightShadow(TCamera camera);

/// Property [camera]
///
/// camera: TCamera
external TCamera camera;

/// Property [intensity]
///
/// intensity: number
external _i1.JSNumber intensity;

/// Property [bias]
///
/// bias: number
external _i1.JSNumber bias;

/// Property [biasNode]
///
/// biasNode: Node | null
external _i3.Node<_i1.JSString> biasNode;

/// Property [normalBias]
///
/// normalBias: number
external _i1.JSNumber normalBias;

/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [blurSamples]
///
/// blurSamples: number
external _i1.JSNumber blurSamples;

/// Property [mapSize]
///
/// mapSize: Vector2
external Vector2 mapSize;

/// Property [mapType]
///
/// mapType: TextureDataType
external TextureDataType mapType;

/// Property [map]
///
/// map: RenderTarget | null
external RenderTarget<Texture<_i1.JSAny>> map;

/// Property [mapPass]
///
/// mapPass: RenderTarget | null
external RenderTarget<Texture<_i1.JSAny>> mapPass;

/// Property [matrix]
///
/// matrix: Matrix4
external Matrix4 matrix;

/// Property [autoUpdate]
///
/// autoUpdate: boolean
external _i1.JSBoolean autoUpdate;

/// Property [needsUpdate]
///
/// needsUpdate: boolean
external _i1.JSBoolean needsUpdate;

/// Method [getViewportCount]
external _i1.JSNumber getViewportCount();
/// Method [getFrustum]
external Frustum getFrustum();
/// Method [updateMatrices]
///
/// Parameters:
/// - light: Light
external void updateMatrices(Light light);
/// Method [getViewport]
///
/// Parameters:
/// - viewportIndex: number
external Vector4 getViewport(_i1.JSNumber viewportIndex);
/// Method [getFrameExtents]
external Vector2 getFrameExtents();
/// Method [dispose]
external void dispose();
/// Method [copy]
///
/// Parameters:
/// - source: LightShadow
external _i1.JSAny copy(LightShadow<Camera> source);
/// Method [clone]
external _i1.JSAny clone();
/// Method [toJSON]
external LightShadowJSON toJSON();
}
/// Interface [PointLightJSON]
extension type PointLightJSON.$(_i1.JSObject _) implements LightJSON {
/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [decay]
///
/// decay: number
external _i1.JSNumber decay;

/// Property [shadow]
///
/// shadow: LightShadowJSON
external LightShadowJSON shadow;

}
/// Class [PointLight]
extension type PointLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
/// - distance: number
/// - decay: number
external PointLight([ColorRepresentation color, _i1.JSNumber intensity, _i1.JSNumber distance, _i1.JSNumber decay, ]);

/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [decay]
///
/// decay: number
external _i1.JSNumber decay;

/// Property [shadow]
///
/// shadow: PointLightShadow
external PointLightShadow shadow;

/// Property [isPointLight]
///
/// readonly isPointLight: boolean
external _i1.JSBoolean get isPointLight;
/// Get Accessor [power]
///
/// power
external set power();
/// Get Accessor [power]
///
/// power
external _i1.JSNumber get power;
/// Method [copy]
///
/// Parameters:
/// - source: PointLight
/// - recursive: boolean
external _i1.JSAny copy(PointLight source, [_i1.JSBoolean recursive, ]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external PointLightJSON toJSON([JSONMeta meta]);
}
/// Class [PointLightShadow]
extension type PointLightShadow.$(_i1.JSObject _) implements _i1.JSObject,LightShadow<PerspectiveCamera> {
/// Constructor
external PointLightShadow();

/// Property [isPointLightShadow]
///
/// readonly isPointLightShadow: boolean
external _i1.JSBoolean get isPointLightShadow;
}
/// Class [RectAreaLight]
extension type RectAreaLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
/// - width: number
/// - height: number
external RectAreaLight([ColorRepresentation color, _i1.JSNumber intensity, _i1.JSNumber width, _i1.JSNumber height, ]);

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [isRectAreaLight]
///
/// readonly isRectAreaLight: boolean
external _i1.JSBoolean get isRectAreaLight;
/// Get Accessor [power]
///
/// power
external set power();
/// Get Accessor [power]
///
/// power
external _i1.JSNumber get power;
/// Method [copy]
///
/// Parameters:
/// - source: RectAreaLight
external _i1.JSAny copy(RectAreaLight source);
}
/// Interface [SpotLightJSON]
extension type SpotLightJSON.$(_i1.JSObject _) implements LightJSON {
/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [angle]
///
/// angle: number
external _i1.JSNumber angle;

/// Property [decay]
///
/// decay: number
external _i1.JSNumber decay;

/// Property [penumbra]
///
/// penumbra: number
external _i1.JSNumber penumbra;

/// Property [target]
///
/// target: string
external _i1.JSString target;

/// Property [map]
///
/// map?: string | undefined
external _i1.JSString? map;

/// Property [shadow]
///
/// shadow: LightShadowJSON
external LightShadowJSON shadow;

}
/// Class [SpotLight]
extension type SpotLight.$(_i1.JSObject _) implements _i1.JSObject,Light {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - intensity: number
/// - distance: number
/// - angle: number
/// - penumbra: number
/// - decay: number
external SpotLight([ColorRepresentation color, _i1.JSNumber intensity, _i1.JSNumber distance, _i1.JSNumber angle, _i1.JSNumber penumbra, _i1.JSNumber decay, ]);

/// Property [target]
///
/// target: Object3D
external Object3D<Object3DEventMap> target;

/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [angle]
///
/// angle: number
external _i1.JSNumber angle;

/// Property [penumbra]
///
/// penumbra: number
external _i1.JSNumber penumbra;

/// Property [decay]
///
/// decay: number
external _i1.JSNumber decay;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [shadow]
///
/// shadow: SpotLightShadow
external SpotLightShadow shadow;

/// Property [isSpotLight]
///
/// readonly isSpotLight: boolean
external _i1.JSBoolean get isSpotLight;
/// Get Accessor [power]
///
/// power
external set power();
/// Get Accessor [power]
///
/// power
external _i1.JSNumber get power;
/// Method [copy]
///
/// Parameters:
/// - source: SpotLight
/// - recursive: boolean
external _i1.JSAny copy(SpotLight source, [_i1.JSBoolean recursive, ]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external SpotLightJSON toJSON([JSONMeta meta]);
}
/// Class [SpotLightShadow]
extension type SpotLightShadow.$(_i1.JSObject _) implements _i1.JSObject,LightShadow<PerspectiveCamera> {
/// Constructor
external SpotLightShadow();

/// Property [focus]
///
/// focus: number
external _i1.JSNumber focus;

/// Property [aspect]
///
/// aspect: number
external _i1.JSNumber aspect;

/// Property [isSpotLightShadow]
///
/// readonly isSpotLightShadow: boolean
external _i1.JSBoolean get isSpotLightShadow;
/// Method [copy]
///
/// Parameters:
/// - source: SpotLightShadow
external _i1.JSAny copy(SpotLightShadow source);
}
/// Class [AnimationLoader]
extension type AnimationLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i1.JSArray<AnimationClip>,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external AnimationLoader([LoadingManager manager]);

/// Method [parse]
///
/// Parameters:
/// - json: readonly []
external _i1.JSArray<AnimationClip> parse(_i1.JSArray<_i1.JSAny> json);
}
/// Class [AudioLoader]
extension type AudioLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i3.AudioBuffer,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external AudioLoader([LoadingManager manager]);

}
/// Class [BufferGeometryLoader]
extension type BufferGeometryLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i1.JSAny,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external BufferGeometryLoader([LoadingManager manager]);

/// Method [parse]
///
/// Parameters:
/// - json: 
external _i1.JSAny parse(_i1.JSAny json);
}
/// Variable [Cache]
///
/// Cache: Cache$TypeLiteral
external Cache$TypeLiteral Cache;/// Interface [Cache$TypeLiteral]
extension type Cache$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [files]
///
/// files: any
external _i1.JSAny files;

/// Method [add]
///
/// Parameters:
/// - key: string
/// - file: any
///
/// Returns:
/// - void
external void add(_i1.JSString key, _i1.JSAny file, );
/// Method [get]
///
/// Parameters:
/// - key: string
///
/// Returns:
/// - any
external _i1.JSAny get(_i1.JSString key);
/// Method [remove]
///
/// Parameters:
/// - key: string
///
/// Returns:
/// - void
external void remove(_i1.JSString key);
/// Method [clear]
///
/// Returns:
/// - void
external void clear();
}
/// Class [CompressedTextureLoader]
extension type CompressedTextureLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<CompressedTexture<CompressedTextureImageData>,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external CompressedTextureLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: CompressedTexture) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external CompressedTexture<CompressedTextureImageData> load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Class [CubeTextureLoader]
extension type CubeTextureLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<CubeTexture<_i1.JSAny>,_i1.JSAny> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external CubeTextureLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: readonly string[]
/// - onLoad: (data: CubeTexture) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external CubeTexture<_i1.JSAny> load(_i1.JSArray<_i1.JSString> url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Class [DataTextureLoader]
extension type DataTextureLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<DataTexture,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external DataTextureLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: DataTexture, texData: object) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external DataTexture load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Class [FileLoader]
extension type FileLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i1.JSAny,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external FileLoader([LoadingManager manager]);

/// Property [mimeType]
///
/// mimeType: string
external _i1.JSString mimeType;

/// Property [responseType]
///
/// responseType: string
external _i1.JSString responseType;

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: string | ArrayBuffer) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external void load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
/// Method [setResponseType]
///
/// Parameters:
/// - value: string
external _i1.JSAny setResponseType(_i1.JSString value);
/// Method [setMimeType]
///
/// Parameters:
/// - value: string
external _i1.JSAny setMimeType(_i1.JSString value);
}
/// Class [ImageBitmapLoader]
extension type ImageBitmapLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i3.ImageBitmap,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external ImageBitmapLoader([LoadingManager manager]);

/// Property [options]
///
/// options: ImageBitmapOptions
external _i3.ImageBitmapOptions options;

/// Property [isImageBitmapLoader]
///
/// readonly isImageBitmapLoader: true
external _i1.JSBoolean get isImageBitmapLoader;
/// Method [setOptions]
///
/// Parameters:
/// - options: ImageBitmapOptions
external _i1.JSAny setOptions(_i3.ImageBitmapOptions options);
/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: ImageBitmap) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external void load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Class [ImageLoader]
extension type ImageLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<_i3.HTMLImageElement,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external ImageLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: HTMLImageElement) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external _i3.HTMLImageElement load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Class [Loader]
extension type Loader<TData extends _i1.JSAny,TUrl extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external Loader([LoadingManager manager]);

/// Property [crossOrigin]
///
/// crossOrigin: string
external _i1.JSString crossOrigin;

/// Property [withCredentials]
///
/// withCredentials: boolean
external _i1.JSBoolean withCredentials;

/// Property [path]
///
/// path: string
external _i1.JSString path;

/// Property [resourcePath]
///
/// resourcePath: string
external _i1.JSString resourcePath;

/// Property [manager]
///
/// manager: LoadingManager
external LoadingManager manager;

/// Property [requestHeader]
///
/// requestHeader: Loader$RequestHeader$TypeLiteral
external Loader$RequestHeader$TypeLiteral requestHeader;

/// Property [DEFAULT_MATERIAL_NAME]
///
/// static DEFAULT_MATERIAL_NAME: string
external _i1.JSString DEFAULT_MATERIAL_NAME;

/// Method [load]
///
/// Parameters:
/// - url: TUrl
/// - onLoad: (data: TData) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external void load(TUrl url, _i1.JSFunction onLoad, [_i1.JSFunction onProgress, _i1.JSFunction onError, ]);
/// Method [loadAsync]
///
/// Parameters:
/// - url: TUrl
/// - onProgress: (event: ProgressEvent) => void
external _i1.JSPromise<TData> loadAsync(TUrl url, [_i1.JSFunction onProgress, ]);
/// Method [setCrossOrigin]
///
/// Parameters:
/// - crossOrigin: string
external _i1.JSAny setCrossOrigin(_i1.JSString crossOrigin);
/// Method [setWithCredentials]
///
/// Parameters:
/// - value: boolean
external _i1.JSAny setWithCredentials(_i1.JSBoolean value);
/// Method [setPath]
///
/// Parameters:
/// - path: string
external _i1.JSAny setPath(_i1.JSString path);
/// Method [setResourcePath]
///
/// Parameters:
/// - resourcePath: string
external _i1.JSAny setResourcePath(_i1.JSString resourcePath);
/// Method [setRequestHeader]
///
/// Parameters:
/// - requestHeader: Loader$SetRequestHeader$RequestHeader$TypeLiteral
external _i1.JSAny setRequestHeader(Loader$SetRequestHeader$RequestHeader$TypeLiteral requestHeader);
/// Method [abort]
external _i1.JSAny abort();
}
/// Interface [Loader$RequestHeader$TypeLiteral]
extension type Loader$RequestHeader$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString header, _i1.JSString value, );
external _i1.JSString operator [](_i1.JSString header);
}
/// Interface [Loader$SetRequestHeader$RequestHeader$TypeLiteral]
extension type Loader$SetRequestHeader$RequestHeader$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString header, _i1.JSString value, );
external _i1.JSString operator [](_i1.JSString header);
}
/// Class [LoaderUtils]
extension type LoaderUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [extractUrlBase]
///
/// Parameters:
/// - url: string
external static _i1.JSString extractUrlBase(_i1.JSString url);
/// Method [resolveURL]
///
/// Parameters:
/// - url: string
/// - path: string
external static _i1.JSString resolveURL(_i1.JSString url, _i1.JSString path, );
}
/// Class [LoadingManager]
extension type LoadingManager.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - onLoad: () => void
/// - onProgress: (url: string, loaded: number, total: number) => void
/// - onError: (url: string) => void
external LoadingManager([_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);

/// Property [onStart]
///
/// onStart: ((url: string, loaded: number, total: number) => void) | undefined
external _i1.JSFunction onStart;

/// Property [onLoad]
///
/// onLoad: () => void
external _i1.JSFunction onLoad;

/// Property [onProgress]
///
/// onProgress: (url: string, loaded: number, total: number) => void
external _i1.JSFunction onProgress;

/// Property [onError]
///
/// onError: (url: string) => void
external _i1.JSFunction onError;

/// Property [abortController]
///
/// abortController: AbortController
external _i3.AbortController abortController;

/// Property [itemStart]
///
/// itemStart: (url: string) => void
external _i1.JSFunction itemStart;

/// Property [itemEnd]
///
/// itemEnd: (url: string) => void
external _i1.JSFunction itemEnd;

/// Property [itemError]
///
/// itemError: (url: string) => void
external _i1.JSFunction itemError;

/// Property [resolveURL]
///
/// resolveURL: (url: string) => string
external _i1.JSFunction resolveURL;

/// Property [setURLModifier]
///
/// setURLModifier: (callback: (url: string) => string) => 
external _i1.JSFunction setURLModifier;

/// Property [addHandler]
///
/// addHandler: (regex: RegExp, loader: Loader) => 
external _i1.JSFunction addHandler;

/// Property [removeHandler]
///
/// removeHandler: (regex: RegExp) => 
external _i1.JSFunction removeHandler;

/// Property [getHandler]
///
/// getHandler: (file: string) => Loader | null
external _i1.JSFunction getHandler;

/// Property [abort]
///
/// abort: () => 
external _i1.JSFunction abort;

}
/// Variable [DefaultLoadingManager]
///
/// DefaultLoadingManager: LoadingManager
external LoadingManager DefaultLoadingManager;/// Class [MaterialLoader]
extension type MaterialLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<Material,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external MaterialLoader([LoadingManager manager]);

/// Property [textures]
///
/// textures: MaterialLoader$Textures$TypeLiteral
external MaterialLoader$Textures$TypeLiteral textures;

/// Method [parse]
///
/// Parameters:
/// - json: 
external Material parse(_i1.JSAny json);
/// Method [setTextures]
///
/// Parameters:
/// - textures: MaterialLoader$SetTextures$Textures$TypeLiteral
external _i1.JSAny setTextures(MaterialLoader$SetTextures$Textures$TypeLiteral textures);
/// Method [createMaterialFromType$1]
///
/// Parameters:
/// - type: string
@_i1.JS('createMaterialFromType') external Material createMaterialFromType$1(_i1.JSString type);
/// Method [createMaterialFromType$2]
///
/// Parameters:
/// - type: string
@_i1.JS('createMaterialFromType') external static Material createMaterialFromType$2(_i1.JSString type);
}
/// Interface [MaterialLoader$Textures$TypeLiteral]
extension type MaterialLoader$Textures$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Texture<_i1.JSAny> value, );
external Texture<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [MaterialLoader$SetTextures$Textures$TypeLiteral]
extension type MaterialLoader$SetTextures$Textures$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Texture<_i1.JSAny> value, );
external Texture<_i1.JSAny> operator [](_i1.JSString key);
}
/// Class [ObjectLoader]
extension type ObjectLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<Object3D<Object3DEventMap>,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external ObjectLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: Object3D) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external void load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
/// Method [parse]
///
/// Parameters:
/// - json: 
/// - onLoad: (object: Object3D) => void
external Object3D<Object3DEventMap> parse(_i1.JSAny json, [_i1.JSFunction onLoad, ]);
/// Method [parseAsync]
///
/// Parameters:
/// - json: 
external _i1.JSPromise<Object3D<Object3DEventMap>> parseAsync(_i1.JSAny json);
/// Method [parseGeometries]
///
/// Parameters:
/// - json: 
external ObjectLoader$ParseGeometries$TypeLiteral parseGeometries(_i1.JSAny json);
/// Method [parseMaterials]
///
/// Parameters:
/// - json: 
/// - textures: ObjectLoader$ParseMaterials$Textures$TypeLiteral
external ObjectLoader$ParseMaterials$TypeLiteral parseMaterials(_i1.JSAny json, ObjectLoader$ParseMaterials$Textures$TypeLiteral textures, );
/// Method [parseAnimations]
///
/// Parameters:
/// - json: 
external ObjectLoader$ParseAnimations$TypeLiteral parseAnimations(_i1.JSAny json);
/// Method [parseImages]
///
/// Parameters:
/// - json: 
/// - onLoad: () => void
external ObjectLoader$ParseImages$TypeLiteral parseImages(_i1.JSAny json, [_i1.JSFunction onLoad, ]);
/// Method [parseImagesAsync]
///
/// Parameters:
/// - json: 
external _i1.JSPromise<ObjectLoader$ParseImagesAsync$TypeLiteral> parseImagesAsync(_i1.JSAny json);
/// Method [parseTextures]
///
/// Parameters:
/// - json: 
/// - images: ObjectLoader$ParseTextures$Images$TypeLiteral
external ObjectLoader$ParseTextures$TypeLiteral parseTextures(_i1.JSAny json, ObjectLoader$ParseTextures$Images$TypeLiteral images, );
/// Method [parseObject]
///
/// Parameters:
/// - data: 
/// - geometries: ObjectLoader$ParseObject$Geometries$TypeLiteral
/// - materials: ObjectLoader$ParseObject$Materials$TypeLiteral
/// - animations: ObjectLoader$ParseObject$Animations$TypeLiteral
external Object3D<Object3DEventMap> parseObject(_i1.JSAny data, ObjectLoader$ParseObject$Geometries$TypeLiteral geometries, ObjectLoader$ParseObject$Materials$TypeLiteral materials, ObjectLoader$ParseObject$Animations$TypeLiteral animations, );
}
/// Interface [ObjectLoader$ParseGeometries$TypeLiteral]
extension type ObjectLoader$ParseGeometries$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSAny value, );
external _i1.JSAny operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseMaterials$Textures$TypeLiteral]
extension type ObjectLoader$ParseMaterials$Textures$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Texture<_i1.JSAny> value, );
external Texture<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseMaterials$TypeLiteral]
extension type ObjectLoader$ParseMaterials$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Material value, );
external Material operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseAnimations$TypeLiteral]
extension type ObjectLoader$ParseAnimations$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, AnimationClip value, );
external AnimationClip operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseImages$TypeLiteral]
extension type ObjectLoader$ParseImages$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Source<_i1.JSAny> value, );
external Source<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseImagesAsync$TypeLiteral]
extension type ObjectLoader$ParseImagesAsync$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Source<_i1.JSAny> value, );
external Source<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseTextures$Images$TypeLiteral]
extension type ObjectLoader$ParseTextures$Images$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Source<_i1.JSAny> value, );
external Source<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseTextures$TypeLiteral]
extension type ObjectLoader$ParseTextures$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Texture<_i1.JSAny> value, );
external Texture<_i1.JSAny> operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseObject$Geometries$TypeLiteral]
extension type ObjectLoader$ParseObject$Geometries$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSAny value, );
external _i1.JSAny operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseObject$Materials$TypeLiteral]
extension type ObjectLoader$ParseObject$Materials$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, Material value, );
external Material operator [](_i1.JSString key);
}
/// Interface [ObjectLoader$ParseObject$Animations$TypeLiteral]
extension type ObjectLoader$ParseObject$Animations$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, AnimationClip value, );
external AnimationClip operator [](_i1.JSString key);
}
/// Class [TextureLoader]
extension type TextureLoader.$(_i1.JSObject _) implements _i1.JSObject,Loader<Texture<_i3.HTMLImageElement>,_i1.JSString> {
/// Constructor
///
/// Parameters:
/// - manager: LoadingManager
external TextureLoader([LoadingManager manager]);

/// Method [load]
///
/// Parameters:
/// - url: string
/// - onLoad: (data: Texture) => void
/// - onProgress: (event: ProgressEvent) => void
/// - onError: (err: ) => void
external Texture<_i3.HTMLImageElement> load(_i1.JSString url, [_i1.JSFunction onLoad, _i1.JSFunction onProgress, _i1.JSFunction onError, ]);
}
/// Interface [LineBasicMaterialProperties]
extension type LineBasicMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [linewidth]
///
/// linewidth: number
external _i1.JSNumber linewidth;

/// Property [linecap]
///
/// linecap: "butt" | "round" | "square"
external _i1.JSString linecap;

/// Property [linejoin]
///
/// linejoin: "round" | "bevel" | "miter"
external _i1.JSString linejoin;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [LineBasicMaterialParameters]
extension type LineBasicMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<LineBasicMaterialProperties>> {
}
/// Class [LineBasicMaterial]
extension type LineBasicMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: LineBasicMaterialParameters
external LineBasicMaterial([LineBasicMaterialParameters parameters]);

/// Property [isLineBasicMaterial]
///
/// readonly isLineBasicMaterial: boolean
external _i1.JSBoolean get isLineBasicMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: LineBasicMaterialParameters
external void setValues([LineBasicMaterialParameters values]);
}
/// Interface [LineDashedMaterialProperties]
extension type LineDashedMaterialProperties.$(_i1.JSObject _) implements LineBasicMaterialProperties {
/// Property [scale]
///
/// scale: number
external _i1.JSNumber scale;

/// Property [dashSize]
///
/// dashSize: number
external _i1.JSNumber dashSize;

/// Property [gapSize]
///
/// gapSize: number
external _i1.JSNumber gapSize;

}
/// Interface [LineDashedMaterialParameters]
extension type LineDashedMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<LineDashedMaterialProperties>> {
}
/// Class [LineDashedMaterial]
extension type LineDashedMaterial.$(_i1.JSObject _) implements _i1.JSObject,LineBasicMaterial {
/// Constructor
///
/// Parameters:
/// - parameters: LineDashedMaterialParameters
external LineDashedMaterial([LineDashedMaterialParameters parameters]);

/// Property [isLineDashedMaterial]
///
/// readonly isLineDashedMaterial: boolean
external _i1.JSBoolean get isLineDashedMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: LineDashedMaterialParameters
external void setValues([LineDashedMaterialParameters values]);
}
/// Interface [MaterialProperties]
extension type MaterialProperties.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [blending]
///
/// blending: Blending
external Blending blending;

/// Property [side]
///
/// side: Side
external Side side;

/// Property [vertexColors]
///
/// vertexColors: boolean
external _i1.JSBoolean vertexColors;

/// Property [opacity]
///
/// opacity: number
external _i1.JSNumber opacity;

/// Property [transparent]
///
/// transparent: boolean
external _i1.JSBoolean transparent;

/// Property [alphaHash]
///
/// alphaHash: boolean
external _i1.JSBoolean alphaHash;

/// Property [blendSrc]
///
/// blendSrc: BlendingSrcFactor
external BlendingSrcFactor blendSrc;

/// Property [blendDst]
///
/// blendDst: BlendingDstFactor
external BlendingDstFactor blendDst;

/// Property [blendEquation]
///
/// blendEquation: BlendingEquation
external BlendingEquation blendEquation;

/// Property [blendSrcAlpha]
///
/// blendSrcAlpha: BlendingSrcFactor | null
external BlendingSrcFactor blendSrcAlpha;

/// Property [blendDstAlpha]
///
/// blendDstAlpha: BlendingDstFactor | null
external BlendingDstFactor blendDstAlpha;

/// Property [blendEquationAlpha]
///
/// blendEquationAlpha: BlendingEquation | null
external BlendingEquation blendEquationAlpha;

/// Property [blendColor]
///
/// blendColor: Color
external Color blendColor;

/// Property [blendAlpha]
///
/// blendAlpha: number
external _i1.JSNumber blendAlpha;

/// Property [depthFunc]
///
/// depthFunc: DepthModes
external DepthModes depthFunc;

/// Property [depthTest]
///
/// depthTest: boolean
external _i1.JSBoolean depthTest;

/// Property [depthWrite]
///
/// depthWrite: boolean
external _i1.JSBoolean depthWrite;

/// Property [stencilWriteMask]
///
/// stencilWriteMask: number
external _i1.JSNumber stencilWriteMask;

/// Property [stencilFunc]
///
/// stencilFunc: StencilFunc
external StencilFunc stencilFunc;

/// Property [stencilRef]
///
/// stencilRef: number
external _i1.JSNumber stencilRef;

/// Property [stencilFuncMask]
///
/// stencilFuncMask: number
external _i1.JSNumber stencilFuncMask;

/// Property [stencilFail]
///
/// stencilFail: StencilOp
external StencilOp stencilFail;

/// Property [stencilZFail]
///
/// stencilZFail: StencilOp
external StencilOp stencilZFail;

/// Property [stencilZPass]
///
/// stencilZPass: StencilOp
external StencilOp stencilZPass;

/// Property [stencilWrite]
///
/// stencilWrite: boolean
external _i1.JSBoolean stencilWrite;

/// Property [clippingPlanes]
///
/// clippingPlanes: Array | null
external _i2.Array<Plane> clippingPlanes;

/// Property [clipIntersection]
///
/// clipIntersection: boolean
external _i1.JSBoolean clipIntersection;

/// Property [clipShadows]
///
/// clipShadows: boolean
external _i1.JSBoolean clipShadows;

/// Property [shadowSide]
///
/// shadowSide: Side | null
external Side shadowSide;

/// Property [colorWrite]
///
/// colorWrite: boolean
external _i1.JSBoolean colorWrite;

/// Property [precision]
///
/// precision: ("highp" | "mediump" | "lowp") | null
external _i1.JSString precision;

/// Property [polygonOffset]
///
/// polygonOffset: boolean
external _i1.JSBoolean polygonOffset;

/// Property [polygonOffsetFactor]
///
/// polygonOffsetFactor: number
external _i1.JSNumber polygonOffsetFactor;

/// Property [polygonOffsetUnits]
///
/// polygonOffsetUnits: number
external _i1.JSNumber polygonOffsetUnits;

/// Property [dithering]
///
/// dithering: boolean
external _i1.JSBoolean dithering;

/// Property [alphaToCoverage]
///
/// alphaToCoverage: boolean
external _i1.JSBoolean alphaToCoverage;

/// Property [premultipliedAlpha]
///
/// premultipliedAlpha: boolean
external _i1.JSBoolean premultipliedAlpha;

/// Property [forceSinglePass]
///
/// forceSinglePass: boolean
external _i1.JSBoolean forceSinglePass;

/// Property [allowOverride]
///
/// allowOverride: boolean
external _i1.JSBoolean allowOverride;

/// Property [visible]
///
/// visible: boolean
external _i1.JSBoolean visible;

/// Property [toneMapped]
///
/// toneMapped: boolean
external _i1.JSBoolean toneMapped;

/// Property [userData]
///
/// userData: Record
external _i2.Record<_i1.JSString,_i1.JSAny> userData;

/// Get Accessor [alphaTest]
///
/// alphaTest
external set alphaTest();
/// Get Accessor [alphaTest]
///
/// alphaTest
external _i1.JSNumber get alphaTest;
}
/// Typedef [MapColorPropertiesToColorRepresentations]
///
/// 
typedef MapColorPropertiesToColorRepresentations<T extends _i1.JSAny> = _i1.JSObject;
/// Interface [MaterialParameters]
extension type MaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MaterialProperties>> {
}
/// Interface [MaterialJSON]
extension type MaterialJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata: MaterialJSON$Metadata$TypeLiteral
external MaterialJSON$Metadata$TypeLiteral metadata;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [name]
///
/// name?: string
external _i1.JSString? name;

/// Property [color]
///
/// color?: number
external _i1.JSNumber? color;

/// Property [roughness]
///
/// roughness?: number
external _i1.JSNumber? roughness;

/// Property [metalness]
///
/// metalness?: number
external _i1.JSNumber? metalness;

/// Property [sheen]
///
/// sheen?: number
external _i1.JSNumber? sheen;

/// Property [sheenColor]
///
/// sheenColor?: number
external _i1.JSNumber? sheenColor;

/// Property [sheenRoughness]
///
/// sheenRoughness?: number
external _i1.JSNumber? sheenRoughness;

/// Property [emissive]
///
/// emissive?: number
external _i1.JSNumber? emissive;

/// Property [emissiveIntensity]
///
/// emissiveIntensity?: number
external _i1.JSNumber? emissiveIntensity;

/// Property [specular]
///
/// specular?: number
external _i1.JSNumber? specular;

/// Property [specularIntensity]
///
/// specularIntensity?: number
external _i1.JSNumber? specularIntensity;

/// Property [specularColor]
///
/// specularColor?: number
external _i1.JSNumber? specularColor;

/// Property [shininess]
///
/// shininess?: number
external _i1.JSNumber? shininess;

/// Property [clearcoat]
///
/// clearcoat?: number
external _i1.JSNumber? clearcoat;

/// Property [clearcoatRoughness]
///
/// clearcoatRoughness?: number
external _i1.JSNumber? clearcoatRoughness;

/// Property [clearcoatMap]
///
/// clearcoatMap?: string
external _i1.JSString? clearcoatMap;

/// Property [clearcoatRoughnessMap]
///
/// clearcoatRoughnessMap?: string
external _i1.JSString? clearcoatRoughnessMap;

/// Property [clearcoatNormalMap]
///
/// clearcoatNormalMap?: string
external _i1.JSString? clearcoatNormalMap;

/// Property [clearcoatNormalScale]
///
/// clearcoatNormalScale?: Vector2Tuple
external Vector2Tuple? clearcoatNormalScale;

/// Property [dispersion]
///
/// dispersion?: number
external _i1.JSNumber? dispersion;

/// Property [iridescence]
///
/// iridescence?: number
external _i1.JSNumber? iridescence;

/// Property [iridescenceIOR]
///
/// iridescenceIOR?: number
external _i1.JSNumber? iridescenceIOR;

/// Property [iridescenceThicknessRange]
///
/// iridescenceThicknessRange?: number
external _i1.JSNumber? iridescenceThicknessRange;

/// Property [iridescenceMap]
///
/// iridescenceMap?: string
external _i1.JSString? iridescenceMap;

/// Property [iridescenceThicknessMap]
///
/// iridescenceThicknessMap?: string
external _i1.JSString? iridescenceThicknessMap;

/// Property [anisotropy]
///
/// anisotropy?: number
external _i1.JSNumber? anisotropy;

/// Property [anisotropyRotation]
///
/// anisotropyRotation?: number
external _i1.JSNumber? anisotropyRotation;

/// Property [anisotropyMap]
///
/// anisotropyMap?: string
external _i1.JSString? anisotropyMap;

/// Property [map]
///
/// map?: string
external _i1.JSString? map;

/// Property [matcap]
///
/// matcap?: string
external _i1.JSString? matcap;

/// Property [alphaMap]
///
/// alphaMap?: string
external _i1.JSString? alphaMap;

/// Property [lightMap]
///
/// lightMap?: string
external _i1.JSString? lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity?: number
external _i1.JSNumber? lightMapIntensity;

/// Property [aoMap]
///
/// aoMap?: string
external _i1.JSString? aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity?: number
external _i1.JSNumber? aoMapIntensity;

/// Property [bumpMap]
///
/// bumpMap?: string
external _i1.JSString? bumpMap;

/// Property [bumpScale]
///
/// bumpScale?: number
external _i1.JSNumber? bumpScale;

/// Property [normalMap]
///
/// normalMap?: string
external _i1.JSString? normalMap;

/// Property [normalMapType]
///
/// normalMapType?: NormalMapTypes
external NormalMapTypes? normalMapType;

/// Property [normalScale]
///
/// normalScale?: Vector2Tuple
external Vector2Tuple? normalScale;

/// Property [displacementMap]
///
/// displacementMap?: string
external _i1.JSString? displacementMap;

/// Property [displacementScale]
///
/// displacementScale?: number
external _i1.JSNumber? displacementScale;

/// Property [displacementBias]
///
/// displacementBias?: number
external _i1.JSNumber? displacementBias;

/// Property [roughnessMap]
///
/// roughnessMap?: string
external _i1.JSString? roughnessMap;

/// Property [metalnessMap]
///
/// metalnessMap?: string
external _i1.JSString? metalnessMap;

/// Property [emissiveMap]
///
/// emissiveMap?: string
external _i1.JSString? emissiveMap;

/// Property [specularMap]
///
/// specularMap?: string
external _i1.JSString? specularMap;

/// Property [specularIntensityMap]
///
/// specularIntensityMap?: string
external _i1.JSString? specularIntensityMap;

/// Property [specularColorMap]
///
/// specularColorMap?: string
external _i1.JSString? specularColorMap;

/// Property [envMap]
///
/// envMap?: string
external _i1.JSString? envMap;

/// Property [combine]
///
/// combine?: Combine
external Combine? combine;

/// Property [envMapRotation]
///
/// envMapRotation?: EulerTuple
external EulerTuple? envMapRotation;

/// Property [envMapIntensity]
///
/// envMapIntensity?: number
external _i1.JSNumber? envMapIntensity;

/// Property [reflectivity]
///
/// reflectivity?: number
external _i1.JSNumber? reflectivity;

/// Property [refractionRatio]
///
/// refractionRatio?: number
external _i1.JSNumber? refractionRatio;

/// Property [gradientMap]
///
/// gradientMap?: string
external _i1.JSString? gradientMap;

/// Property [transmission]
///
/// transmission?: number
external _i1.JSNumber? transmission;

/// Property [transmissionMap]
///
/// transmissionMap?: string
external _i1.JSString? transmissionMap;

/// Property [thickness]
///
/// thickness?: number
external _i1.JSNumber? thickness;

/// Property [thicknessMap]
///
/// thicknessMap?: string
external _i1.JSString? thicknessMap;

/// Property [attenuationDistance]
///
/// attenuationDistance?: number
external _i1.JSNumber? attenuationDistance;

/// Property [attenuationColor]
///
/// attenuationColor?: number
external _i1.JSNumber? attenuationColor;

/// Property [size]
///
/// size?: number
external _i1.JSNumber? size;

/// Property [shadowSide]
///
/// shadowSide?: number
external _i1.JSNumber? shadowSide;

/// Property [sizeAttenuation]
///
/// sizeAttenuation?: boolean
external _i1.JSBoolean? sizeAttenuation;

/// Property [blending]
///
/// blending?: Blending
external Blending? blending;

/// Property [side]
///
/// side?: Side
external Side? side;

/// Property [vertexColors]
///
/// vertexColors?: boolean
external _i1.JSBoolean? vertexColors;

/// Property [opacity]
///
/// opacity?: number
external _i1.JSNumber? opacity;

/// Property [transparent]
///
/// transparent?: boolean
external _i1.JSBoolean? transparent;

/// Property [blendSrc]
///
/// blendSrc?: BlendingSrcFactor
external BlendingSrcFactor? blendSrc;

/// Property [blendDst]
///
/// blendDst?: BlendingDstFactor
external BlendingDstFactor? blendDst;

/// Property [blendEquation]
///
/// blendEquation?: BlendingEquation
external BlendingEquation? blendEquation;

/// Property [blendSrcAlpha]
///
/// blendSrcAlpha?: number | null
external _i1.JSNumber? blendSrcAlpha;

/// Property [blendDstAlpha]
///
/// blendDstAlpha?: number | null
external _i1.JSNumber? blendDstAlpha;

/// Property [blendEquationAlpha]
///
/// blendEquationAlpha?: number | null
external _i1.JSNumber? blendEquationAlpha;

/// Property [blendColor]
///
/// blendColor?: number
external _i1.JSNumber? blendColor;

/// Property [blendAlpha]
///
/// blendAlpha?: number
external _i1.JSNumber? blendAlpha;

/// Property [depthFunc]
///
/// depthFunc?: DepthModes
external DepthModes? depthFunc;

/// Property [depthTest]
///
/// depthTest?: boolean
external _i1.JSBoolean? depthTest;

/// Property [depthWrite]
///
/// depthWrite?: boolean
external _i1.JSBoolean? depthWrite;

/// Property [colorWrite]
///
/// colorWrite?: boolean
external _i1.JSBoolean? colorWrite;

/// Property [stencilWriteMask]
///
/// stencilWriteMask?: number
external _i1.JSNumber? stencilWriteMask;

/// Property [stencilFunc]
///
/// stencilFunc?: StencilFunc
external StencilFunc? stencilFunc;

/// Property [stencilRef]
///
/// stencilRef?: number
external _i1.JSNumber? stencilRef;

/// Property [stencilFuncMask]
///
/// stencilFuncMask?: number
external _i1.JSNumber? stencilFuncMask;

/// Property [stencilFail]
///
/// stencilFail?: StencilOp
external StencilOp? stencilFail;

/// Property [stencilZFail]
///
/// stencilZFail?: StencilOp
external StencilOp? stencilZFail;

/// Property [stencilZPass]
///
/// stencilZPass?: StencilOp
external StencilOp? stencilZPass;

/// Property [stencilWrite]
///
/// stencilWrite?: boolean
external _i1.JSBoolean? stencilWrite;

/// Property [rotation]
///
/// rotation?: number
external _i1.JSNumber? rotation;

/// Property [polygonOffset]
///
/// polygonOffset?: boolean
external _i1.JSBoolean? polygonOffset;

/// Property [polygonOffsetFactor]
///
/// polygonOffsetFactor?: number
external _i1.JSNumber? polygonOffsetFactor;

/// Property [polygonOffsetUnits]
///
/// polygonOffsetUnits?: number
external _i1.JSNumber? polygonOffsetUnits;

/// Property [linewidth]
///
/// linewidth?: number
external _i1.JSNumber? linewidth;

/// Property [dashSize]
///
/// dashSize?: number
external _i1.JSNumber? dashSize;

/// Property [gapSize]
///
/// gapSize?: number
external _i1.JSNumber? gapSize;

/// Property [scale]
///
/// scale?: number
external _i1.JSNumber? scale;

/// Property [dithering]
///
/// dithering?: boolean
external _i1.JSBoolean? dithering;

/// Property [alphaTest]
///
/// alphaTest?: number
external _i1.JSNumber? alphaTest;

/// Property [alphaHash]
///
/// alphaHash?: boolean
external _i1.JSBoolean? alphaHash;

/// Property [alphaToCoverage]
///
/// alphaToCoverage?: boolean
external _i1.JSBoolean? alphaToCoverage;

/// Property [premultipliedAlpha]
///
/// premultipliedAlpha?: boolean
external _i1.JSBoolean? premultipliedAlpha;

/// Property [forceSinglePass]
///
/// forceSinglePass?: boolean
external _i1.JSBoolean? forceSinglePass;

/// Property [wireframe]
///
/// wireframe?: boolean
external _i1.JSBoolean? wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth?: number
external _i1.JSNumber? wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap?: string
external _i1.JSString? wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin?: string
external _i1.JSString? wireframeLinejoin;

/// Property [flatShading]
///
/// flatShading?: boolean
external _i1.JSBoolean? flatShading;

/// Property [visible]
///
/// visible?: boolean
external _i1.JSBoolean? visible;

/// Property [toneMapped]
///
/// toneMapped?: boolean
external _i1.JSBoolean? toneMapped;

/// Property [fog]
///
/// fog?: boolean
external _i1.JSBoolean? fog;

/// Property [userData]
///
/// userData?: Record
external _i2.Record<_i1.JSString,_i1.JSAny>? userData;

/// Property [textures]
///
/// textures?: Array
external _i2.Array<_i2.Omit<TextureJSON,_i1.JSString>>? textures;

/// Property [images]
///
/// images?: SourceJSON[]
external _i1.JSArray<SourceJSON>? images;

}
/// Class [Material]
extension type Material.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<Material$TypeLiteral> {
/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [defines]
///
/// defines?: Record | undefined
external _i2.Record<_i1.JSString,_i1.JSAny>? defines;

/// Property [isMaterial]
///
/// readonly isMaterial: boolean
external _i1.JSBoolean get isMaterial;
/// Property [uuid]
///
/// readonly uuid: string
external _i1.JSString get uuid;
/// Property [version]
///
/// readonly version: number
external _i1.JSNumber get version;
/// Method [onBeforeRender]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - scene: Scene
/// - camera: Camera
/// - geometry: BufferGeometry
/// - object: Object3D
/// - group: Group
external void onBeforeRender(WebGLRenderer renderer, Scene scene, Camera camera, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Object3D<Object3DEventMap> object, Group<Object3DEventMap> group, );
/// Method [onBeforeCompile]
///
/// Parameters:
/// - parameters: WebGLProgramParametersWithUniforms
/// - renderer: WebGLRenderer
external void onBeforeCompile(WebGLProgramParametersWithUniforms parameters, WebGLRenderer renderer, );
/// Method [customProgramCacheKey]
external _i1.JSString customProgramCacheKey();
/// Method [setValues]
///
/// Parameters:
/// - values: MaterialParameters
external void setValues([MaterialParameters values]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external MaterialJSON toJSON([JSONMeta meta]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - source: Material
external _i1.JSAny copy(Material source);
/// Method [dispose]
external void dispose();
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
}
/// Interface [MaterialJSON$Metadata$TypeLiteral]
extension type MaterialJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [Material$Dispose$TypeLiteral]
extension type Material$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Material$TypeLiteral]
extension type Material$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [dispose]
///
/// dispose: Material$Dispose$TypeLiteral
external Material$Dispose$TypeLiteral dispose;

}
/// Interface [MeshBasicMaterialProperties]
extension type MeshBasicMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [lightMap]
///
/// lightMap: Texture | null
external Texture<_i1.JSAny> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: number
external _i1.JSNumber lightMapIntensity;

/// Property [aoMap]
///
/// aoMap: Texture | null
external Texture<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: number
external _i1.JSNumber aoMapIntensity;

/// Property [specularMap]
///
/// specularMap: Texture | null
external Texture<_i1.JSAny> specularMap;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [envMap]
///
/// envMap: Texture | null
external Texture<_i1.JSAny> envMap;

/// Property [envMapRotation]
///
/// envMapRotation: Euler
external Euler envMapRotation;

/// Property [combine]
///
/// combine: Combine
external Combine combine;

/// Property [reflectivity]
///
/// reflectivity: number
external _i1.JSNumber reflectivity;

/// Property [refractionRatio]
///
/// refractionRatio: number
external _i1.JSNumber refractionRatio;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinejoin;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshBasicMaterialParameters]
extension type MeshBasicMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshBasicMaterialProperties>> {
}
/// Class [MeshBasicMaterial]
extension type MeshBasicMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshBasicMaterialParameters
external MeshBasicMaterial([MeshBasicMaterialParameters parameters]);

/// Property [isMeshBasicMaterial]
///
/// readonly isMeshBasicMaterial: boolean
external _i1.JSBoolean get isMeshBasicMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshBasicMaterialParameters
external void setValues([MeshBasicMaterialParameters values]);
}
/// Interface [MeshDepthMaterialProperties]
extension type MeshDepthMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [depthPacking]
///
/// depthPacking: DepthPackingStrategies
external DepthPackingStrategies depthPacking;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

}
/// Interface [MeshDepthMaterialParameters]
extension type MeshDepthMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshDepthMaterialProperties>> {
}
/// Class [MeshDepthMaterial]
extension type MeshDepthMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshDepthMaterialParameters
external MeshDepthMaterial([MeshDepthMaterialParameters parameters]);

/// Property [isMeshDepthMaterial]
///
/// readonly isMeshDepthMaterial: boolean
external _i1.JSBoolean get isMeshDepthMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshDepthMaterialParameters
external void setValues([MeshDepthMaterialParameters values]);
}
/// Interface [MeshDistanceMaterialProperties]
extension type MeshDistanceMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

}
/// Interface [MeshDistanceMaterialParameters]
extension type MeshDistanceMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshDistanceMaterialProperties>> {
}
/// Class [MeshDistanceMaterial]
extension type MeshDistanceMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshDistanceMaterialParameters
external MeshDistanceMaterial([MeshDistanceMaterialParameters parameters]);

/// Property [isMeshDistanceMaterial]
///
/// readonly isMeshDistanceMaterial: boolean
external _i1.JSBoolean get isMeshDistanceMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshDistanceMaterialParameters
external void setValues([MeshDistanceMaterialParameters values]);
}
/// Interface [MeshLambertMaterialProperties]
extension type MeshLambertMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [lightMap]
///
/// lightMap: Texture | null
external Texture<_i1.JSAny> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: number
external _i1.JSNumber lightMapIntensity;

/// Property [aoMap]
///
/// aoMap: Texture | null
external Texture<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: number
external _i1.JSNumber aoMapIntensity;

/// Property [emissive]
///
/// emissive: Color
external Color emissive;

/// Property [emissiveIntensity]
///
/// emissiveIntensity: number
external _i1.JSNumber emissiveIntensity;

/// Property [emissiveMap]
///
/// emissiveMap: Texture | null
external Texture<_i1.JSAny> emissiveMap;

/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [specularMap]
///
/// specularMap: Texture | null
external Texture<_i1.JSAny> specularMap;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [envMap]
///
/// envMap: Texture | null
external Texture<_i1.JSAny> envMap;

/// Property [envMapRotation]
///
/// envMapRotation: Euler
external Euler envMapRotation;

/// Property [combine]
///
/// combine: Combine
external Combine combine;

/// Property [reflectivity]
///
/// reflectivity: number
external _i1.JSNumber reflectivity;

/// Property [envMapIntensity]
///
/// envMapIntensity: number
external _i1.JSNumber envMapIntensity;

/// Property [refractionRatio]
///
/// refractionRatio: number
external _i1.JSNumber refractionRatio;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinejoin;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshLambertMaterialParameters]
extension type MeshLambertMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshLambertMaterialProperties>> {
}
/// Class [MeshLambertMaterial]
extension type MeshLambertMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshLambertMaterialParameters
external MeshLambertMaterial([MeshLambertMaterialParameters parameters]);

/// Property [isMeshLambertMaterial]
///
/// readonly isMeshLambertMaterial: boolean
external _i1.JSBoolean get isMeshLambertMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshLambertMaterialParameters
external void setValues([MeshLambertMaterialParameters values]);
}
/// Interface [MeshMatcapMaterialProperties]
extension type MeshMatcapMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [matcap]
///
/// matcap: Texture | null
external Texture<_i1.JSAny> matcap;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshMatcapMaterialParameters]
extension type MeshMatcapMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshMatcapMaterialProperties>> {
}
/// Class [MeshMatcapMaterial]
extension type MeshMatcapMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshMatcapMaterialParameters
external MeshMatcapMaterial([MeshMatcapMaterialParameters parameters]);

/// Property [isMeshMatcapMaterial]
///
/// readonly isMeshMatcapMaterial: boolean
external _i1.JSBoolean get isMeshMatcapMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshMatcapMaterialParameters
external void setValues([MeshMatcapMaterialParameters values]);
}
/// Interface [MeshNormalMaterialProperties]
extension type MeshNormalMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

}
/// Interface [MeshNormalMaterialParameters]
extension type MeshNormalMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshNormalMaterialProperties>> {
}
/// Class [MeshNormalMaterial]
extension type MeshNormalMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshNormalMaterialParameters
external MeshNormalMaterial([MeshNormalMaterialParameters parameters]);

/// Property [isMeshNormalMaterial]
///
/// readonly isMeshNormalMaterial: boolean
external _i1.JSBoolean get isMeshNormalMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshNormalMaterialParameters
external void setValues([MeshNormalMaterialParameters values]);
}
/// Interface [MeshPhongMaterialProperties]
extension type MeshPhongMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [specular]
///
/// specular: Color
external Color specular;

/// Property [shininess]
///
/// shininess: number
external _i1.JSNumber shininess;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [lightMap]
///
/// lightMap: Texture | null
external Texture<_i1.JSAny> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: number
external _i1.JSNumber lightMapIntensity;

/// Property [aoMap]
///
/// aoMap: Texture | null
external Texture<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: number
external _i1.JSNumber aoMapIntensity;

/// Property [emissive]
///
/// emissive: Color
external Color emissive;

/// Property [emissiveIntensity]
///
/// emissiveIntensity: number
external _i1.JSNumber emissiveIntensity;

/// Property [emissiveMap]
///
/// emissiveMap: Texture | null
external Texture<_i1.JSAny> emissiveMap;

/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [specularMap]
///
/// specularMap: Texture | null
external Texture<_i1.JSAny> specularMap;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [envMap]
///
/// envMap: Texture | null
external Texture<_i1.JSAny> envMap;

/// Property [envMapRotation]
///
/// envMapRotation: Euler
external Euler envMapRotation;

/// Property [combine]
///
/// combine: Combine
external Combine combine;

/// Property [reflectivity]
///
/// reflectivity: number
external _i1.JSNumber reflectivity;

/// Property [envMapIntensity]
///
/// envMapIntensity: number
external _i1.JSNumber envMapIntensity;

/// Property [refractionRatio]
///
/// refractionRatio: number
external _i1.JSNumber refractionRatio;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinejoin;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshPhongMaterialParameters]
extension type MeshPhongMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshPhongMaterialProperties>> {
}
/// Class [MeshPhongMaterial]
extension type MeshPhongMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshPhongMaterialParameters
external MeshPhongMaterial([MeshPhongMaterialParameters parameters]);

/// Property [isMeshPhongMaterial]
///
/// readonly isMeshPhongMaterial: boolean
external _i1.JSBoolean get isMeshPhongMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshPhongMaterialParameters
external void setValues([MeshPhongMaterialParameters values]);
}
/// Interface [MeshPhysicalMaterialProperties]
extension type MeshPhysicalMaterialProperties.$(_i1.JSObject _) implements MeshStandardMaterialProperties {
/// Property [anisotropyRotation]
///
/// anisotropyRotation: number
external _i1.JSNumber anisotropyRotation;

/// Property [anisotropyMap]
///
/// anisotropyMap: Texture | null
external Texture<_i1.JSAny> anisotropyMap;

/// Property [clearcoatMap]
///
/// clearcoatMap: Texture | null
external Texture<_i1.JSAny> clearcoatMap;

/// Property [clearcoatRoughness]
///
/// clearcoatRoughness: number
external _i1.JSNumber clearcoatRoughness;

/// Property [clearcoatRoughnessMap]
///
/// clearcoatRoughnessMap: Texture | null
external Texture<_i1.JSAny> clearcoatRoughnessMap;

/// Property [clearcoatNormalScale]
///
/// clearcoatNormalScale: Vector2
external Vector2 clearcoatNormalScale;

/// Property [clearcoatNormalMap]
///
/// clearcoatNormalMap: Texture | null
external Texture<_i1.JSAny> clearcoatNormalMap;

/// Property [ior]
///
/// ior: number
external _i1.JSNumber ior;

/// Property [iridescenceMap]
///
/// iridescenceMap: Texture | null
external Texture<_i1.JSAny> iridescenceMap;

/// Property [iridescenceIOR]
///
/// iridescenceIOR: number
external _i1.JSNumber iridescenceIOR;

/// Property [iridescenceThicknessRange]
///
/// iridescenceThicknessRange: [number, number]
external _i1.JSArray<_i1.JSAny> iridescenceThicknessRange;

/// Property [iridescenceThicknessMap]
///
/// iridescenceThicknessMap: Texture | null
external Texture<_i1.JSAny> iridescenceThicknessMap;

/// Property [sheenColor]
///
/// sheenColor: Color
external Color sheenColor;

/// Property [sheenColorMap]
///
/// sheenColorMap: Texture | null
external Texture<_i1.JSAny> sheenColorMap;

/// Property [sheenRoughness]
///
/// sheenRoughness: number
external _i1.JSNumber sheenRoughness;

/// Property [sheenRoughnessMap]
///
/// sheenRoughnessMap: Texture | null
external Texture<_i1.JSAny> sheenRoughnessMap;

/// Property [transmissionMap]
///
/// transmissionMap: Texture | null
external Texture<_i1.JSAny> transmissionMap;

/// Property [thickness]
///
/// thickness: number
external _i1.JSNumber thickness;

/// Property [thicknessMap]
///
/// thicknessMap: Texture | null
external Texture<_i1.JSAny> thicknessMap;

/// Property [attenuationDistance]
///
/// attenuationDistance: number
external _i1.JSNumber attenuationDistance;

/// Property [attenuationColor]
///
/// attenuationColor: Color
external Color attenuationColor;

/// Property [specularIntensity]
///
/// specularIntensity: number
external _i1.JSNumber specularIntensity;

/// Property [specularIntensityMap]
///
/// specularIntensityMap: Texture | null
external Texture<_i1.JSAny> specularIntensityMap;

/// Property [specularColor]
///
/// specularColor: Color
external Color specularColor;

/// Property [specularColorMap]
///
/// specularColorMap: Texture | null
external Texture<_i1.JSAny> specularColorMap;

/// Get Accessor [reflectivity]
///
/// reflectivity
external _i1.JSNumber get reflectivity;
/// Get Accessor [reflectivity]
///
/// reflectivity
external set reflectivity();
/// Get Accessor [anisotropy]
///
/// anisotropy
external set anisotropy();
/// Get Accessor [anisotropy]
///
/// anisotropy
external _i1.JSNumber get anisotropy;
/// Get Accessor [clearcoat]
///
/// clearcoat
external set clearcoat();
/// Get Accessor [clearcoat]
///
/// clearcoat
external _i1.JSNumber get clearcoat;
/// Get Accessor [iridescence]
///
/// iridescence
external set iridescence();
/// Get Accessor [iridescence]
///
/// iridescence
external _i1.JSNumber get iridescence;
/// Get Accessor [dispersion]
///
/// dispersion
external set dispersion();
/// Get Accessor [dispersion]
///
/// dispersion
external _i1.JSNumber get dispersion;
/// Get Accessor [sheen]
///
/// sheen
external set sheen();
/// Get Accessor [sheen]
///
/// sheen
external _i1.JSNumber get sheen;
/// Get Accessor [transmission]
///
/// transmission
external set transmission();
/// Get Accessor [transmission]
///
/// transmission
external _i1.JSNumber get transmission;
}
/// Interface [MeshPhysicalMaterialParameters]
extension type MeshPhysicalMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshPhysicalMaterialProperties>> {
}
/// Class [MeshPhysicalMaterial]
extension type MeshPhysicalMaterial.$(_i1.JSObject _) implements _i1.JSObject,MeshStandardMaterial {
/// Constructor
///
/// Parameters:
/// - parameters: MeshPhysicalMaterialParameters
external MeshPhysicalMaterial([MeshPhysicalMaterialParameters parameters]);

/// Property [isMeshPhysicalMaterial]
///
/// readonly isMeshPhysicalMaterial: boolean
external _i1.JSBoolean get isMeshPhysicalMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshPhysicalMaterialParameters
external void setValues([MeshPhysicalMaterialParameters values]);
}
/// Interface [MeshStandardMaterialProperties]
extension type MeshStandardMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [roughness]
///
/// roughness: number
external _i1.JSNumber roughness;

/// Property [metalness]
///
/// metalness: number
external _i1.JSNumber metalness;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [lightMap]
///
/// lightMap: Texture | null
external Texture<_i1.JSAny> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: number
external _i1.JSNumber lightMapIntensity;

/// Property [aoMap]
///
/// aoMap: Texture | null
external Texture<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: number
external _i1.JSNumber aoMapIntensity;

/// Property [emissive]
///
/// emissive: Color
external Color emissive;

/// Property [emissiveIntensity]
///
/// emissiveIntensity: number
external _i1.JSNumber emissiveIntensity;

/// Property [emissiveMap]
///
/// emissiveMap: Texture | null
external Texture<_i1.JSAny> emissiveMap;

/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [roughnessMap]
///
/// roughnessMap: Texture | null
external Texture<_i1.JSAny> roughnessMap;

/// Property [metalnessMap]
///
/// metalnessMap: Texture | null
external Texture<_i1.JSAny> metalnessMap;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [envMap]
///
/// envMap: Texture | null
external Texture<_i1.JSAny> envMap;

/// Property [envMapRotation]
///
/// envMapRotation: Euler
external Euler envMapRotation;

/// Property [envMapIntensity]
///
/// envMapIntensity: number
external _i1.JSNumber envMapIntensity;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinejoin;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshStandardMaterialParameters]
extension type MeshStandardMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshStandardMaterialProperties>> {
}
/// Class [MeshStandardMaterial]
extension type MeshStandardMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshStandardMaterialParameters
external MeshStandardMaterial([MeshStandardMaterialParameters parameters]);

/// Property [isMeshStandardMaterial]
///
/// readonly isMeshStandardMaterial: boolean
external _i1.JSBoolean get isMeshStandardMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshStandardMaterialParameters
external void setValues([MeshStandardMaterialParameters values]);
}
/// Interface [MeshToonMaterialProperties]
extension type MeshToonMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [gradientMap]
///
/// gradientMap: Texture | null
external Texture<_i1.JSAny> gradientMap;

/// Property [lightMap]
///
/// lightMap: Texture | null
external Texture<_i1.JSAny> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: number
external _i1.JSNumber lightMapIntensity;

/// Property [aoMap]
///
/// aoMap: Texture | null
external Texture<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: number
external _i1.JSNumber aoMapIntensity;

/// Property [emissive]
///
/// emissive: Color
external Color emissive;

/// Property [emissiveIntensity]
///
/// emissiveIntensity: number
external _i1.JSNumber emissiveIntensity;

/// Property [emissiveMap]
///
/// emissiveMap: Texture | null
external Texture<_i1.JSAny> emissiveMap;

/// Property [bumpMap]
///
/// bumpMap: Texture | null
external Texture<_i1.JSAny> bumpMap;

/// Property [bumpScale]
///
/// bumpScale: number
external _i1.JSNumber bumpScale;

/// Property [normalMap]
///
/// normalMap: Texture | null
external Texture<_i1.JSAny> normalMap;

/// Property [normalMapType]
///
/// normalMapType: NormalMapTypes
external NormalMapTypes normalMapType;

/// Property [normalScale]
///
/// normalScale: Vector2
external Vector2 normalScale;

/// Property [displacementMap]
///
/// displacementMap: Texture | null
external Texture<_i1.JSAny> displacementMap;

/// Property [displacementScale]
///
/// displacementScale: number
external _i1.JSNumber displacementScale;

/// Property [displacementBias]
///
/// displacementBias: number
external _i1.JSNumber displacementBias;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [wireframeLinecap]
///
/// wireframeLinecap: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinecap;

/// Property [wireframeLinejoin]
///
/// wireframeLinejoin: "round" | "bevel" | "miter"
external _i1.JSString wireframeLinejoin;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [MeshToonMaterialParameters]
extension type MeshToonMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<MeshToonMaterialProperties>> {
}
/// Class [MeshToonMaterial]
extension type MeshToonMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: MeshToonMaterialParameters
external MeshToonMaterial([MeshToonMaterialParameters parameters]);

/// Property [isMeshToonMaterial]
///
/// readonly isMeshToonMaterial: boolean
external _i1.JSBoolean get isMeshToonMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: MeshToonMaterialParameters
external void setValues([MeshToonMaterialParameters values]);
}
/// Interface [PointsMaterialProperties]
extension type PointsMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [size]
///
/// size: number
external _i1.JSNumber size;

/// Property [sizeAttenuation]
///
/// sizeAttenuation: boolean
external _i1.JSBoolean sizeAttenuation;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [PointsMaterialParameters]
extension type PointsMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<PointsMaterialProperties>> {
}
/// Class [PointsMaterial]
extension type PointsMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: PointsMaterialParameters
external PointsMaterial([PointsMaterialParameters parameters]);

/// Property [isPointsMaterial]
///
/// readonly isPointsMaterial: boolean
external _i1.JSBoolean get isPointsMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: PointsMaterialParameters
external void setValues([PointsMaterialParameters values]);
}
/// Class [RawShaderMaterial]
extension type RawShaderMaterial.$(_i1.JSObject _) implements _i1.JSObject,ShaderMaterial {
/// Property [isRawShaderMaterial]
///
/// readonly isRawShaderMaterial: boolean
external _i1.JSBoolean get isRawShaderMaterial;
}
/// Interface [ShaderMaterialProperties]
extension type ShaderMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [defines]
///
/// defines: Record
external _i2.Record<_i1.JSString,_i1.JSAny> defines;

/// Property [uniforms]
///
/// uniforms: ShaderMaterialProperties$Uniforms$TypeLiteral
external ShaderMaterialProperties$Uniforms$TypeLiteral uniforms;

/// Property [uniformsGroups]
///
/// uniformsGroups: Array
external _i2.Array<UniformsGroup> uniformsGroups;

/// Property [vertexShader]
///
/// vertexShader: string
external _i1.JSString vertexShader;

/// Property [fragmentShader]
///
/// fragmentShader: string
external _i1.JSString fragmentShader;

/// Property [linewidth]
///
/// linewidth: number
external _i1.JSNumber linewidth;

/// Property [wireframe]
///
/// wireframe: boolean
external _i1.JSBoolean wireframe;

/// Property [wireframeLinewidth]
///
/// wireframeLinewidth: number
external _i1.JSNumber wireframeLinewidth;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

/// Property [lights]
///
/// lights: boolean
external _i1.JSBoolean lights;

/// Property [clipping]
///
/// clipping: boolean
external _i1.JSBoolean clipping;

/// Property [extensions]
///
/// extensions: ShaderMaterialProperties$Extensions$TypeLiteral
external ShaderMaterialProperties$Extensions$TypeLiteral extensions;

/// Property [defaultAttributeValues]
///
/// defaultAttributeValues: ShaderMaterialProperties$DefaultAttributeValues$TypeLiteral
external ShaderMaterialProperties$DefaultAttributeValues$TypeLiteral defaultAttributeValues;

/// Property [indexzeroAttributeName]
///
/// indexzeroAttributeName: string | undefined
@_i1.JS('index0AttributeName') external _i1.JSString indexzeroAttributeName;

/// Property [uniformsNeedUpdate]
///
/// uniformsNeedUpdate: boolean
external _i1.JSBoolean uniformsNeedUpdate;

/// Property [glslVersion]
///
/// glslVersion: GLSLVersion | null
external GLSLVersion glslVersion;

}
/// Interface [ShaderMaterialParameters]
extension type ShaderMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<ShaderMaterialProperties>> {
}
/// Typedef [ShaderMaterialUniformJSON]
///
/// ShaderMaterialUniformJSON$TypeLiteral | ShaderMaterialUniformJSON$TypeLiteral$2 | ShaderMaterialUniformJSON$TypeLiteral$3 | ShaderMaterialUniformJSON$TypeLiteral$4 | ShaderMaterialUniformJSON$TypeLiteral$5 | ShaderMaterialUniformJSON$TypeLiteral$6 | ShaderMaterialUniformJSON$TypeLiteral$7 | ShaderMaterialUniformJSON$TypeLiteral$8
typedef ShaderMaterialUniformJSON = _i1.JSAny;
/// Interface [ShaderMaterialJSON]
extension type ShaderMaterialJSON.$(_i1.JSObject _) implements MaterialJSON {
/// Property [glslVersion]
///
/// glslVersion: number | null
external _i1.JSNumber glslVersion;

/// Property [uniforms]
///
/// uniforms: Record
external _i2.Record<_i1.JSString,ShaderMaterialUniformJSON> uniforms;

/// Property [defines]
///
/// defines?: Record
external _i2.Record<_i1.JSString,_i1.JSAny>? defines;

/// Property [vertexShader]
///
/// vertexShader: string
external _i1.JSString vertexShader;

/// Property [fragmentShader]
///
/// fragmentShader: string
external _i1.JSString fragmentShader;

/// Property [lights]
///
/// lights: boolean
external _i1.JSBoolean lights;

/// Property [clipping]
///
/// clipping: boolean
external _i1.JSBoolean clipping;

/// Property [extensions]
///
/// extensions?: Record
external _i2.Record<_i1.JSString,_i1.JSBoolean>? extensions;

}
/// Class [ShaderMaterial]
extension type ShaderMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: ShaderMaterialParameters
external ShaderMaterial([ShaderMaterialParameters parameters]);

/// Property [defines]
///
/// defines: Record
external _i2.Record<_i1.JSString,_i1.JSAny> defines;

/// Property [isShaderMaterial]
///
/// readonly isShaderMaterial: boolean
external _i1.JSBoolean get isShaderMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: ShaderMaterialParameters
external void setValues([ShaderMaterialParameters values]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external ShaderMaterialJSON toJSON([JSONMeta meta]);
}
/// Interface [ShaderMaterialProperties$Uniforms$TypeLiteral]
extension type ShaderMaterialProperties$Uniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [ShaderMaterialProperties$Extensions$TypeLiteral]
extension type ShaderMaterialProperties$Extensions$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [clipCullDistance]
///
/// clipCullDistance: boolean
external _i1.JSBoolean clipCullDistance;

/// Property [multiDraw]
///
/// multiDraw: boolean
external _i1.JSBoolean multiDraw;

}
/// Interface [ShaderMaterialProperties$DefaultAttributeValues$TypeLiteral]
extension type ShaderMaterialProperties$DefaultAttributeValues$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [color]
///
/// color: [number, number, number]
external _i1.JSArray<_i1.JSAny> color;

/// Property [uv]
///
/// uv: [number, number]
external _i1.JSArray<_i1.JSAny> uv;

/// Property [uvone]
///
/// uvone: [number, number]
@_i1.JS('uv1') external _i1.JSArray<_i1.JSAny> uvone;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral]
extension type ShaderMaterialUniformJSON$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "t"
external _i1.JSString type;

/// Property [value]
///
/// value: string
external _i1.JSString value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$2]
extension type ShaderMaterialUniformJSON$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "c"
external _i1.JSString type;

/// Property [value]
///
/// value: number
external _i1.JSNumber value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$3]
extension type ShaderMaterialUniformJSON$TypeLiteral$3.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "v2"
external _i1.JSString type;

/// Property [value]
///
/// value: Vector2Tuple
external Vector2Tuple value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$4]
extension type ShaderMaterialUniformJSON$TypeLiteral$4.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "v3"
external _i1.JSString type;

/// Property [value]
///
/// value: Vector3Tuple
external Vector3Tuple value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$5]
extension type ShaderMaterialUniformJSON$TypeLiteral$5.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "v4"
external _i1.JSString type;

/// Property [value]
///
/// value: Vector4Tuple
external Vector4Tuple value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$6]
extension type ShaderMaterialUniformJSON$TypeLiteral$6.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "m3"
external _i1.JSString type;

/// Property [value]
///
/// value: Matrix3Tuple
external Matrix3Tuple value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$7]
extension type ShaderMaterialUniformJSON$TypeLiteral$7.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: "m4"
external _i1.JSString type;

/// Property [value]
///
/// value: Matrix4Tuple
external Matrix4Tuple value;

}
/// Interface [ShaderMaterialUniformJSON$TypeLiteral$8]
extension type ShaderMaterialUniformJSON$TypeLiteral$8.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: 
external _i1.JSAny value;

}
/// Interface [ShadowMaterialProperties]
extension type ShadowMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [ShadowMaterialParameters]
extension type ShadowMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<ShadowMaterialProperties>> {
}
/// Class [ShadowMaterial]
extension type ShadowMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: ShadowMaterialParameters
external ShadowMaterial([ShadowMaterialParameters parameters]);

/// Property [isShadowMaterial]
///
/// readonly isShadowMaterial: boolean
external _i1.JSBoolean get isShadowMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: ShadowMaterialParameters
external void setValues([ShadowMaterialParameters values]);
}
/// Interface [SpriteMaterialProperties]
extension type SpriteMaterialProperties.$(_i1.JSObject _) implements MaterialProperties {
/// Property [color]
///
/// color: Color
external Color color;

/// Property [map]
///
/// map: Texture | null
external Texture<_i1.JSAny> map;

/// Property [alphaMap]
///
/// alphaMap: Texture | null
external Texture<_i1.JSAny> alphaMap;

/// Property [rotation]
///
/// rotation: number
external _i1.JSNumber rotation;

/// Property [sizeAttenuation]
///
/// sizeAttenuation: boolean
external _i1.JSBoolean sizeAttenuation;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

}
/// Interface [SpriteMaterialParameters]
extension type SpriteMaterialParameters.$(_i1.JSObject _) implements _i2.Partial<MapColorPropertiesToColorRepresentations<SpriteMaterialProperties>> {
}
/// Class [SpriteMaterial]
extension type SpriteMaterial.$(_i1.JSObject _) implements _i1.JSObject,Material {
/// Constructor
///
/// Parameters:
/// - parameters: SpriteMaterialParameters
external SpriteMaterial([SpriteMaterialParameters parameters]);

/// Property [isSpriteMaterial]
///
/// readonly isSpriteMaterial: boolean
external _i1.JSBoolean get isSpriteMaterial;
/// Method [setValues]
///
/// Parameters:
/// - values: SpriteMaterialParameters
external void setValues([SpriteMaterialParameters values]);
}
/// Class [Box2]
extension type Box2.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - min: Vector2
/// - max: Vector2
external Box2([Vector2 min, Vector2 max, ]);

/// Property [min]
///
/// min: Vector2
external Vector2 min;

/// Property [max]
///
/// max: Vector2
external Vector2 max;

/// Method [set]
///
/// Parameters:
/// - min: Vector2
/// - max: Vector2
external Box2 set(Vector2 min, Vector2 max, );
/// Method [setFromPoints]
///
/// Parameters:
/// - points: Vector2[]
external Box2 setFromPoints(_i1.JSArray<Vector2> points);
/// Method [setFromCenterAndSize]
///
/// Parameters:
/// - center: Vector2
/// - size: Vector2
external Box2 setFromCenterAndSize(Vector2 center, Vector2 size, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - box: Box2
external _i1.JSAny copy(Box2 box);
/// Method [makeEmpty]
external Box2 makeEmpty();
/// Method [isEmpty]
external _i1.JSBoolean isEmpty();
/// Method [getCenter]
///
/// Parameters:
/// - target: Vector2
external Vector2 getCenter(Vector2 target);
/// Method [getSize]
///
/// Parameters:
/// - target: Vector2
external Vector2 getSize(Vector2 target);
/// Method [expandByPoint]
///
/// Parameters:
/// - point: Vector2
external Box2 expandByPoint(Vector2 point);
/// Method [expandByVector]
///
/// Parameters:
/// - vector: Vector2
external Box2 expandByVector(Vector2 vector);
/// Method [expandByScalar]
///
/// Parameters:
/// - scalar: number
external Box2 expandByScalar(_i1.JSNumber scalar);
/// Method [containsPoint]
///
/// Parameters:
/// - point: Vector2
external _i1.JSBoolean containsPoint(Vector2 point);
/// Method [containsBox]
///
/// Parameters:
/// - box: Box2
external _i1.JSBoolean containsBox(Box2 box);
/// Method [getParameter]
///
/// Parameters:
/// - point: Vector2
/// - target: Vector2
external Vector2 getParameter(Vector2 point, Vector2 target, );
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box2
external _i1.JSBoolean intersectsBox(Box2 box);
/// Method [clampPoint]
///
/// Parameters:
/// - point: Vector2
/// - target: Vector2
external Vector2 clampPoint(Vector2 point, Vector2 target, );
/// Method [distanceToPoint]
///
/// Parameters:
/// - point: Vector2
external _i1.JSNumber distanceToPoint(Vector2 point);
/// Method [intersect]
///
/// Parameters:
/// - box: Box2
external Box2 intersect(Box2 box);
/// Method [union]
///
/// Parameters:
/// - box: Box2
external Box2 union(Box2 box);
/// Method [translate]
///
/// Parameters:
/// - offset: Vector2
external Box2 translate(Vector2 offset);
/// Method [equals]
///
/// Parameters:
/// - box: Box2
external _i1.JSBoolean equals(Box2 box);
/// Method [empty]
external _i1.JSAny empty();
/// Method [isIntersectionBox]
///
/// Parameters:
/// - b: any
external _i1.JSAny isIntersectionBox(_i1.JSAny b);
}
/// Class [Box3]
extension type Box3.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - min: Vector3
/// - max: Vector3
external Box3([Vector3 min, Vector3 max, ]);

/// Property [min]
///
/// min: Vector3
external Vector3 min;

/// Property [max]
///
/// max: Vector3
external Vector3 max;

/// Property [isBoxthree]
///
/// readonly isBoxthree: true
@_i1.JS('isBox3') external _i1.JSBoolean get isBoxthree;
/// Method [set]
///
/// Parameters:
/// - min: Vector3
/// - max: Vector3
external _i1.JSAny set(Vector3 min, Vector3 max, );
/// Method [setFromArray]
///
/// Parameters:
/// - array: ArrayLike
external _i1.JSAny setFromArray(_i2.ArrayLike<_i1.JSNumber> array);
/// Method [setFromBufferAttribute]
///
/// Parameters:
/// - bufferAttribute: BufferAttribute
external _i1.JSAny setFromBufferAttribute(BufferAttribute bufferAttribute);
/// Method [setFromPoints]
///
/// Parameters:
/// - points: Vector3[]
external _i1.JSAny setFromPoints(_i1.JSArray<Vector3> points);
/// Method [setFromCenterAndSize]
///
/// Parameters:
/// - center: Vector3
/// - size: Vector3
external _i1.JSAny setFromCenterAndSize(Vector3 center, Vector3 size, );
/// Method [setFromObject]
///
/// Parameters:
/// - object: Object3D
/// - precise: boolean
external _i1.JSAny setFromObject(Object3D<Object3DEventMap> object, [_i1.JSBoolean precise, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - box: Box3
external _i1.JSAny copy(Box3 box);
/// Method [makeEmpty]
external _i1.JSAny makeEmpty();
/// Method [isEmpty]
external _i1.JSBoolean isEmpty();
/// Method [getCenter]
///
/// Parameters:
/// - target: Vector3
external Vector3 getCenter(Vector3 target);
/// Method [getSize]
///
/// Parameters:
/// - target: Vector3
external Vector3 getSize(Vector3 target);
/// Method [expandByPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSAny expandByPoint(Vector3 point);
/// Method [expandByVector]
///
/// Parameters:
/// - vector: Vector3
external _i1.JSAny expandByVector(Vector3 vector);
/// Method [expandByScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny expandByScalar(_i1.JSNumber scalar);
/// Method [expandByObject]
///
/// Parameters:
/// - object: Object3D
/// - precise: boolean
external _i1.JSAny expandByObject(Object3D<Object3DEventMap> object, [_i1.JSBoolean precise, ]);
/// Method [containsPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSBoolean containsPoint(Vector3 point);
/// Method [containsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean containsBox(Box3 box);
/// Method [getParameter]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 getParameter(Vector3 point, Vector3 target, );
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [intersectsSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean intersectsSphere(Sphere sphere);
/// Method [intersectsPlane]
///
/// Parameters:
/// - plane: Plane
external _i1.JSBoolean intersectsPlane(Plane plane);
/// Method [intersectsTriangle]
///
/// Parameters:
/// - triangle: Triangle
external _i1.JSBoolean intersectsTriangle(Triangle triangle);
/// Method [clampPoint]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 clampPoint(Vector3 point, Vector3 target, );
/// Method [distanceToPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSNumber distanceToPoint(Vector3 point);
/// Method [getBoundingSphere]
///
/// Parameters:
/// - target: Sphere
external Sphere getBoundingSphere(Sphere target);
/// Method [intersect]
///
/// Parameters:
/// - box: Box3
external _i1.JSAny intersect(Box3 box);
/// Method [union]
///
/// Parameters:
/// - box: Box3
external _i1.JSAny union(Box3 box);
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 matrix);
/// Method [translate]
///
/// Parameters:
/// - offset: Vector3
external _i1.JSAny translate(Vector3 offset);
/// Method [equals]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean equals(Box3 box);
/// Method [empty]
external _i1.JSAny empty();
/// Method [isIntersectionBox]
///
/// Parameters:
/// - b: any
external _i1.JSAny isIntersectionBox(_i1.JSAny b);
/// Method [isIntersectionSphere]
///
/// Parameters:
/// - s: any
external _i1.JSAny isIntersectionSphere(_i1.JSAny s);
/// Method [toJSON]
external Box3JSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: Box3JSON
external _i1.JSAny fromJSON(Box3JSON json);
}
/// Interface [Box3JSON]
extension type Box3JSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [min]
///
/// min: number[]
external _i1.JSArray<_i1.JSNumber> min;

/// Property [max]
///
/// max: number[]
external _i1.JSArray<_i1.JSNumber> max;

}
/// Interface [ColorSpaceDefinition]
extension type ColorSpaceDefinition.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [primaries$1]
///
/// primaries$1: [number, number, number, number, number, number]
@_i1.JS('primaries') external _i1.JSArray<_i1.JSAny> primaries$1;

/// Property [whitePoint$1]
///
/// whitePoint$1: [number, number]
@_i1.JS('whitePoint') external _i1.JSArray<_i1.JSAny> whitePoint$1;

/// Property [transfer$1]
///
/// transfer$1: ColorSpaceTransfer
@_i1.JS('transfer') external ColorSpaceTransfer transfer$1;

/// Property [toXYZ$1]
///
/// toXYZ$1: Matrix3
@_i1.JS('toXYZ') external Matrix3 toXYZ$1;

/// Property [fromXYZ$1]
///
/// fromXYZ$1: Matrix3
@_i1.JS('fromXYZ') external Matrix3 fromXYZ$1;

/// Property [luminanceCoefficients$1]
///
/// luminanceCoefficients$1: [number, number, number]
@_i1.JS('luminanceCoefficients') external _i1.JSArray<_i1.JSAny> luminanceCoefficients$1;

/// Property [workingColorSpaceConfig$1]
///
/// workingColorSpaceConfig$1?: ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral
@_i1.JS('workingColorSpaceConfig') external ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral? workingColorSpaceConfig$1;

/// Property [outputColorSpaceConfig$1]
///
/// outputColorSpaceConfig$1?: ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral
@_i1.JS('outputColorSpaceConfig') external ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral? outputColorSpaceConfig$1;

/// Property [primaries$2]
///
/// primaries$2: [number, number, number, number, number, number]
@_i1.JS('primaries') external _i1.JSArray<_i1.JSAny> primaries$2;

/// Property [whitePoint$2]
///
/// whitePoint$2: [number, number]
@_i1.JS('whitePoint') external _i1.JSArray<_i1.JSAny> whitePoint$2;

/// Property [transfer$2]
///
/// transfer$2: ColorSpaceTransfer
@_i1.JS('transfer') external ColorSpaceTransfer transfer$2;

/// Property [toXYZ$2]
///
/// toXYZ$2: Matrix3
@_i1.JS('toXYZ') external Matrix3 toXYZ$2;

/// Property [fromXYZ$2]
///
/// fromXYZ$2: Matrix3
@_i1.JS('fromXYZ') external Matrix3 fromXYZ$2;

/// Property [luminanceCoefficients$2]
///
/// luminanceCoefficients$2: [number, number, number]
@_i1.JS('luminanceCoefficients') external _i1.JSArray<_i1.JSAny> luminanceCoefficients$2;

/// Property [workingColorSpaceConfig$2]
///
/// workingColorSpaceConfig$2?: ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral$2
@_i1.JS('workingColorSpaceConfig') external ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral$2? workingColorSpaceConfig$2;

/// Property [outputColorSpaceConfig$2]
///
/// outputColorSpaceConfig$2?: ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral$2
@_i1.JS('outputColorSpaceConfig') external ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral$2? outputColorSpaceConfig$2;

}
/// Interface [ColorManagement]
extension type ColorManagement.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [enabled$1]
///
/// enabled$1: boolean
@_i1.JS('enabled') external _i1.JSBoolean enabled$1;

/// Property [workingColorSpace$1]
///
/// workingColorSpace$1: string
@_i1.JS('workingColorSpace') external _i1.JSString workingColorSpace$1;

/// Property [spaces$1]
///
/// spaces$1: Record
@_i1.JS('spaces') external _i2.Record<_i1.JSString,ColorSpaceDefinition> spaces$1;

/// Property [convert$1]
///
/// convert$1: (color: Color, sourceColorSpace: string, targetColorSpace: string) => Color
@_i1.JS('convert') external _i1.JSFunction convert$1;

/// Property [workingToColorSpace$1]
///
/// workingToColorSpace$1: (color: Color, targetColorSpace: string) => Color
@_i1.JS('workingToColorSpace') external _i1.JSFunction workingToColorSpace$1;

/// Property [colorSpaceToWorking$1]
///
/// colorSpaceToWorking$1: (color: Color, sourceColorSpace: string) => Color
@_i1.JS('colorSpaceToWorking') external _i1.JSFunction colorSpaceToWorking$1;

/// Property [getPrimaries$1]
///
/// getPrimaries$1: (colorSpace: string) => [number, number, number, number, number, number]
@_i1.JS('getPrimaries') external _i1.JSFunction getPrimaries$1;

/// Property [getTransfer$1]
///
/// getTransfer$1: (colorSpace: string) => ColorSpaceTransfer
@_i1.JS('getTransfer') external _i1.JSFunction getTransfer$1;

/// Property [getLuminanceCoefficients$1]
///
/// getLuminanceCoefficients$1: (target: Vector3, colorSpace: string) => [number, number, number]
@_i1.JS('getLuminanceCoefficients') external _i1.JSFunction getLuminanceCoefficients$1;

/// Property [define$1]
///
/// define$1: (colorSpaces: Record) => void
@_i1.JS('define') external _i1.JSFunction define$1;

/// Property [fromWorkingColorSpace$1]
///
/// fromWorkingColorSpace$1: (color: Color, targetColorSpace: string) => Color
@_i1.JS('fromWorkingColorSpace') external _i1.JSFunction fromWorkingColorSpace$1;

/// Property [toWorkingColorSpace$1]
///
/// toWorkingColorSpace$1: (color: Color, sourceColorSpace: string) => Color
@_i1.JS('toWorkingColorSpace') external _i1.JSFunction toWorkingColorSpace$1;

/// Property [enabled$2]
///
/// enabled$2: boolean
@_i1.JS('enabled') external _i1.JSBoolean enabled$2;

/// Property [workingColorSpace$2]
///
/// workingColorSpace$2: string
@_i1.JS('workingColorSpace') external _i1.JSString workingColorSpace$2;

/// Property [spaces$2]
///
/// spaces$2: Record
@_i1.JS('spaces') external _i2.Record<_i1.JSString,ColorSpaceDefinition> spaces$2;

/// Property [convert$2]
///
/// convert$2: (color: Color, sourceColorSpace: string, targetColorSpace: string) => Color
@_i1.JS('convert') external _i1.JSFunction convert$2;

/// Property [workingToColorSpace$2]
///
/// workingToColorSpace$2: (color: Color, targetColorSpace: string) => Color
@_i1.JS('workingToColorSpace') external _i1.JSFunction workingToColorSpace$2;

/// Property [colorSpaceToWorking$2]
///
/// colorSpaceToWorking$2: (color: Color, sourceColorSpace: string) => Color
@_i1.JS('colorSpaceToWorking') external _i1.JSFunction colorSpaceToWorking$2;

/// Property [getPrimaries$2]
///
/// getPrimaries$2: (colorSpace: string) => [number, number, number, number, number, number]
@_i1.JS('getPrimaries') external _i1.JSFunction getPrimaries$2;

/// Property [getTransfer$2]
///
/// getTransfer$2: (colorSpace: string) => ColorSpaceTransfer
@_i1.JS('getTransfer') external _i1.JSFunction getTransfer$2;

/// Property [getLuminanceCoefficients$2]
///
/// getLuminanceCoefficients$2: (target: Vector3, colorSpace: string) => [number, number, number]
@_i1.JS('getLuminanceCoefficients') external _i1.JSFunction getLuminanceCoefficients$2;

/// Property [define$2]
///
/// define$2: (colorSpaces: Record) => void
@_i1.JS('define') external _i1.JSFunction define$2;

/// Property [fromWorkingColorSpace$2]
///
/// fromWorkingColorSpace$2: (color: Color, targetColorSpace: string) => Color
@_i1.JS('fromWorkingColorSpace') external _i1.JSFunction fromWorkingColorSpace$2;

/// Property [toWorkingColorSpace$2]
///
/// toWorkingColorSpace$2: (color: Color, sourceColorSpace: string) => Color
@_i1.JS('toWorkingColorSpace') external _i1.JSFunction toWorkingColorSpace$2;

}
/// Variable [ColorManagement$]
///
/// ColorManagement$: ColorManagement
@_i1.JS('ColorManagement')
external ColorManagement ColorManagement$;/// Method [SRGBToLinear]
///
/// Parameters:
/// - c: number
@_i1.JS('SRGBToLinear') external _i1.JSNumber SRGBToLinear(_i1.JSNumber c);/// Method [LinearToSRGB]
///
/// Parameters:
/// - c: number
@_i1.JS('LinearToSRGB') external _i1.JSNumber LinearToSRGB(_i1.JSNumber c);/// Interface [ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral]
extension type ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [unpackColorSpace]
///
/// unpackColorSpace: string
external _i1.JSString unpackColorSpace;

}
/// Interface [ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral]
extension type ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [drawingBufferColorSpace]
///
/// drawingBufferColorSpace: string
external _i1.JSString drawingBufferColorSpace;

/// Property [toneMappingNode]
///
/// toneMappingNode?: "extended" | "standard"
external _i1.JSString? toneMappingNode;

}
/// Typedef [ColorRepresentation]
///
/// Color | string | number
typedef ColorRepresentation = _i1.JSAny;
/// Interface [HSL]
extension type HSL.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [h]
///
/// h: number
external _i1.JSNumber h;

/// Property [s]
///
/// s: number
external _i1.JSNumber s;

/// Property [l]
///
/// l: number
external _i1.JSNumber l;

}
/// Interface [RGB]
extension type RGB.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [r]
///
/// r: number
external _i1.JSNumber r;

/// Property [g]
///
/// g: number
external _i1.JSNumber g;

/// Property [b]
///
/// b: number
external _i1.JSNumber b;

}
/// Class [Color]
extension type Color.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
external Color.$1([ColorRepresentation color]);

/// Constructor
///
/// Parameters:
/// - r: number
/// - g: number
/// - b: number
external Color.$2(_i1.JSNumber r, _i1.JSNumber g, _i1.JSNumber b, );

/// Property [r]
///
/// r: number
external _i1.JSNumber r;

/// Property [g]
///
/// g: number
external _i1.JSNumber g;

/// Property [b]
///
/// b: number
external _i1.JSNumber b;

/// Property [NAMES]
///
/// static NAMES: typeof _colorKeywords
external _i1.JSString NAMES;

/// Property [isColor]
///
/// readonly isColor: true
external _i1.JSBoolean get isColor;
/// Method [set]
///
/// Parameters:
/// - ...args: [] | [, , ]
external _i1.JSAny set(_i1.JSArray<_i1.JSAny> args);
/// Method [setFromVector3]
///
/// Parameters:
/// - vector: Vector3
external _i1.JSAny setFromVector3(Vector3 vector);
/// Method [setScalar]
///
/// Parameters:
/// - scalar: number
external Color setScalar(_i1.JSNumber scalar);
/// Method [setHex]
///
/// Parameters:
/// - hex: number
/// - colorSpace: string
external Color setHex(_i1.JSNumber hex, [_i1.JSString colorSpace, ]);
/// Method [setRGB]
///
/// Parameters:
/// - r: number
/// - g: number
/// - b: number
/// - colorSpace: string
external Color setRGB(_i1.JSNumber r, _i1.JSNumber g, _i1.JSNumber b, [_i1.JSString colorSpace, ]);
/// Method [setHSL]
///
/// Parameters:
/// - h: number
/// - s: number
/// - l: number
/// - colorSpace: string
external Color setHSL(_i1.JSNumber h, _i1.JSNumber s, _i1.JSNumber l, [_i1.JSString colorSpace, ]);
/// Method [setStyle]
///
/// Parameters:
/// - style: string
/// - colorSpace: string
external Color setStyle(_i1.JSString style, [_i1.JSString colorSpace, ]);
/// Method [setColorName]
///
/// Parameters:
/// - style: string
/// - colorSpace: string
external Color setColorName(_i1.JSString style, [_i1.JSString colorSpace, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - color: Color
external _i1.JSAny copy(Color color);
/// Method [copySRGBToLinear]
///
/// Parameters:
/// - color: Color
external Color copySRGBToLinear(Color color);
/// Method [copyLinearToSRGB]
///
/// Parameters:
/// - color: Color
external Color copyLinearToSRGB(Color color);
/// Method [convertSRGBToLinear]
external Color convertSRGBToLinear();
/// Method [convertLinearToSRGB]
external Color convertLinearToSRGB();
/// Method [getHex]
///
/// Parameters:
/// - colorSpace: string
external _i1.JSNumber getHex([_i1.JSString colorSpace]);
/// Method [getHexString]
///
/// Parameters:
/// - colorSpace: string
external _i1.JSString getHexString([_i1.JSString colorSpace]);
/// Method [getHSL]
///
/// Parameters:
/// - target: HSL
/// - colorSpace: string
external HSL getHSL(HSL target, [_i1.JSString colorSpace, ]);
/// Method [getRGB]
///
/// Parameters:
/// - target: RGB
/// - colorSpace: string
external RGB getRGB(RGB target, [_i1.JSString colorSpace, ]);
/// Method [getStyle]
///
/// Parameters:
/// - colorSpace: string
external _i1.JSString getStyle([_i1.JSString colorSpace]);
/// Method [offsetHSL]
///
/// Parameters:
/// - h: number
/// - s: number
/// - l: number
external _i1.JSAny offsetHSL(_i1.JSNumber h, _i1.JSNumber s, _i1.JSNumber l, );
/// Method [add]
///
/// Parameters:
/// - color: Color
external _i1.JSAny add(Color color);
/// Method [addColors]
///
/// Parameters:
/// - color1: Color
/// - color2: Color
external _i1.JSAny addColors(Color color1, Color color2, );
/// Method [addScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny addScalar(_i1.JSNumber s);
/// Method [applyMatrix3]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyMatrix3(Matrix3 m);
/// Method [sub]
///
/// Parameters:
/// - color: Color
external _i1.JSAny sub(Color color);
/// Method [multiply]
///
/// Parameters:
/// - color: Color
external _i1.JSAny multiply(Color color);
/// Method [multiplyScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny multiplyScalar(_i1.JSNumber s);
/// Method [lerp]
///
/// Parameters:
/// - color: Color
/// - alpha: number
external _i1.JSAny lerp(Color color, _i1.JSNumber alpha, );
/// Method [lerpColors]
///
/// Parameters:
/// - color1: Color
/// - color2: Color
/// - alpha: number
external _i1.JSAny lerpColors(Color color1, Color color2, _i1.JSNumber alpha, );
/// Method [lerpHSL]
///
/// Parameters:
/// - color: Color
/// - alpha: number
external _i1.JSAny lerpHSL(Color color, _i1.JSNumber alpha, );
/// Method [equals]
///
/// Parameters:
/// - color: Color
external _i1.JSBoolean equals(Color color);
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - xyz: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$2(_i2.ArrayLike<_i1.JSNumber> xyz, [_i1.JSNumber offset, ]);
/// Method [toJSON]
external _i1.JSNumber toJSON();
/// Method [fromBufferAttribute]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute
/// - index: number
external _i1.JSAny fromBufferAttribute(_i1.JSAny attribute, _i1.JSNumber index, );
}
/// Interface [_colorKeywords$TypeLiteral]
extension type _colorKeywords$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [aliceblue]
///
/// aliceblue: 0xf0f8ff
external _i1.JSNumber aliceblue;

/// Property [antiquewhite]
///
/// antiquewhite: 0xfaebd7
external _i1.JSNumber antiquewhite;

/// Property [aqua]
///
/// aqua: 0x00ffff
external _i1.JSNumber aqua;

/// Property [aquamarine]
///
/// aquamarine: 0x7fffd4
external _i1.JSNumber aquamarine;

/// Property [azure]
///
/// azure: 0xf0ffff
external _i1.JSNumber azure;

/// Property [beige]
///
/// beige: 0xf5f5dc
external _i1.JSNumber beige;

/// Property [bisque]
///
/// bisque: 0xffe4c4
external _i1.JSNumber bisque;

/// Property [black]
///
/// black: 0x000000
external _i1.JSNumber black;

/// Property [blanchedalmond]
///
/// blanchedalmond: 0xffebcd
external _i1.JSNumber blanchedalmond;

/// Property [blue]
///
/// blue: 0x0000ff
external _i1.JSNumber blue;

/// Property [blueviolet]
///
/// blueviolet: 0x8a2be2
external _i1.JSNumber blueviolet;

/// Property [brown]
///
/// brown: 0xa52a2a
external _i1.JSNumber brown;

/// Property [burlywood]
///
/// burlywood: 0xdeb887
external _i1.JSNumber burlywood;

/// Property [cadetblue]
///
/// cadetblue: 0x5f9ea0
external _i1.JSNumber cadetblue;

/// Property [chartreuse]
///
/// chartreuse: 0x7fff00
external _i1.JSNumber chartreuse;

/// Property [chocolate]
///
/// chocolate: 0xd2691e
external _i1.JSNumber chocolate;

/// Property [coral]
///
/// coral: 0xff7f50
external _i1.JSNumber coral;

/// Property [cornflowerblue]
///
/// cornflowerblue: 0x6495ed
external _i1.JSNumber cornflowerblue;

/// Property [cornsilk]
///
/// cornsilk: 0xfff8dc
external _i1.JSNumber cornsilk;

/// Property [crimson]
///
/// crimson: 0xdc143c
external _i1.JSNumber crimson;

/// Property [cyan]
///
/// cyan: 0x00ffff
external _i1.JSNumber cyan;

/// Property [darkblue]
///
/// darkblue: 0x00008b
external _i1.JSNumber darkblue;

/// Property [darkcyan]
///
/// darkcyan: 0x008b8b
external _i1.JSNumber darkcyan;

/// Property [darkgoldenrod]
///
/// darkgoldenrod: 0xb8860b
external _i1.JSNumber darkgoldenrod;

/// Property [darkgray]
///
/// darkgray: 0xa9a9a9
external _i1.JSNumber darkgray;

/// Property [darkgreen]
///
/// darkgreen: 0x006400
external _i1.JSNumber darkgreen;

/// Property [darkgrey]
///
/// darkgrey: 0xa9a9a9
external _i1.JSNumber darkgrey;

/// Property [darkkhaki]
///
/// darkkhaki: 0xbdb76b
external _i1.JSNumber darkkhaki;

/// Property [darkmagenta]
///
/// darkmagenta: 0x8b008b
external _i1.JSNumber darkmagenta;

/// Property [darkolivegreen]
///
/// darkolivegreen: 0x556b2f
external _i1.JSNumber darkolivegreen;

/// Property [darkorange]
///
/// darkorange: 0xff8c00
external _i1.JSNumber darkorange;

/// Property [darkorchid]
///
/// darkorchid: 0x9932cc
external _i1.JSNumber darkorchid;

/// Property [darkred]
///
/// darkred: 0x8b0000
external _i1.JSNumber darkred;

/// Property [darksalmon]
///
/// darksalmon: 0xe9967a
external _i1.JSNumber darksalmon;

/// Property [darkseagreen]
///
/// darkseagreen: 0x8fbc8f
external _i1.JSNumber darkseagreen;

/// Property [darkslateblue]
///
/// darkslateblue: 0x483d8b
external _i1.JSNumber darkslateblue;

/// Property [darkslategray]
///
/// darkslategray: 0x2f4f4f
external _i1.JSNumber darkslategray;

/// Property [darkslategrey]
///
/// darkslategrey: 0x2f4f4f
external _i1.JSNumber darkslategrey;

/// Property [darkturquoise]
///
/// darkturquoise: 0x00ced1
external _i1.JSNumber darkturquoise;

/// Property [darkviolet]
///
/// darkviolet: 0x9400d3
external _i1.JSNumber darkviolet;

/// Property [deeppink]
///
/// deeppink: 0xff1493
external _i1.JSNumber deeppink;

/// Property [deepskyblue]
///
/// deepskyblue: 0x00bfff
external _i1.JSNumber deepskyblue;

/// Property [dimgray]
///
/// dimgray: 0x696969
external _i1.JSNumber dimgray;

/// Property [dimgrey]
///
/// dimgrey: 0x696969
external _i1.JSNumber dimgrey;

/// Property [dodgerblue]
///
/// dodgerblue: 0x1e90ff
external _i1.JSNumber dodgerblue;

/// Property [firebrick]
///
/// firebrick: 0xb22222
external _i1.JSNumber firebrick;

/// Property [floralwhite]
///
/// floralwhite: 0xfffaf0
external _i1.JSNumber floralwhite;

/// Property [forestgreen]
///
/// forestgreen: 0x228b22
external _i1.JSNumber forestgreen;

/// Property [fuchsia]
///
/// fuchsia: 0xff00ff
external _i1.JSNumber fuchsia;

/// Property [gainsboro]
///
/// gainsboro: 0xdcdcdc
external _i1.JSNumber gainsboro;

/// Property [ghostwhite]
///
/// ghostwhite: 0xf8f8ff
external _i1.JSNumber ghostwhite;

/// Property [gold]
///
/// gold: 0xffd700
external _i1.JSNumber gold;

/// Property [goldenrod]
///
/// goldenrod: 0xdaa520
external _i1.JSNumber goldenrod;

/// Property [gray]
///
/// gray: 0x808080
external _i1.JSNumber gray;

/// Property [green]
///
/// green: 0x008000
external _i1.JSNumber green;

/// Property [greenyellow]
///
/// greenyellow: 0xadff2f
external _i1.JSNumber greenyellow;

/// Property [grey]
///
/// grey: 0x808080
external _i1.JSNumber grey;

/// Property [honeydew]
///
/// honeydew: 0xf0fff0
external _i1.JSNumber honeydew;

/// Property [hotpink]
///
/// hotpink: 0xff69b4
external _i1.JSNumber hotpink;

/// Property [indianred]
///
/// indianred: 0xcd5c5c
external _i1.JSNumber indianred;

/// Property [indigo]
///
/// indigo: 0x4b0082
external _i1.JSNumber indigo;

/// Property [ivory]
///
/// ivory: 0xfffff0
external _i1.JSNumber ivory;

/// Property [khaki]
///
/// khaki: 0xf0e68c
external _i1.JSNumber khaki;

/// Property [lavender]
///
/// lavender: 0xe6e6fa
external _i1.JSNumber lavender;

/// Property [lavenderblush]
///
/// lavenderblush: 0xfff0f5
external _i1.JSNumber lavenderblush;

/// Property [lawngreen]
///
/// lawngreen: 0x7cfc00
external _i1.JSNumber lawngreen;

/// Property [lemonchiffon]
///
/// lemonchiffon: 0xfffacd
external _i1.JSNumber lemonchiffon;

/// Property [lightblue]
///
/// lightblue: 0xadd8e6
external _i1.JSNumber lightblue;

/// Property [lightcoral]
///
/// lightcoral: 0xf08080
external _i1.JSNumber lightcoral;

/// Property [lightcyan]
///
/// lightcyan: 0xe0ffff
external _i1.JSNumber lightcyan;

/// Property [lightgoldenrodyellow]
///
/// lightgoldenrodyellow: 0xfafad2
external _i1.JSNumber lightgoldenrodyellow;

/// Property [lightgray]
///
/// lightgray: 0xd3d3d3
external _i1.JSNumber lightgray;

/// Property [lightgreen]
///
/// lightgreen: 0x90ee90
external _i1.JSNumber lightgreen;

/// Property [lightgrey]
///
/// lightgrey: 0xd3d3d3
external _i1.JSNumber lightgrey;

/// Property [lightpink]
///
/// lightpink: 0xffb6c1
external _i1.JSNumber lightpink;

/// Property [lightsalmon]
///
/// lightsalmon: 0xffa07a
external _i1.JSNumber lightsalmon;

/// Property [lightseagreen]
///
/// lightseagreen: 0x20b2aa
external _i1.JSNumber lightseagreen;

/// Property [lightskyblue]
///
/// lightskyblue: 0x87cefa
external _i1.JSNumber lightskyblue;

/// Property [lightslategray]
///
/// lightslategray: 0x778899
external _i1.JSNumber lightslategray;

/// Property [lightslategrey]
///
/// lightslategrey: 0x778899
external _i1.JSNumber lightslategrey;

/// Property [lightsteelblue]
///
/// lightsteelblue: 0xb0c4de
external _i1.JSNumber lightsteelblue;

/// Property [lightyellow]
///
/// lightyellow: 0xffffe0
external _i1.JSNumber lightyellow;

/// Property [lime]
///
/// lime: 0x00ff00
external _i1.JSNumber lime;

/// Property [limegreen]
///
/// limegreen: 0x32cd32
external _i1.JSNumber limegreen;

/// Property [linen]
///
/// linen: 0xfaf0e6
external _i1.JSNumber linen;

/// Property [magenta]
///
/// magenta: 0xff00ff
external _i1.JSNumber magenta;

/// Property [maroon]
///
/// maroon: 0x800000
external _i1.JSNumber maroon;

/// Property [mediumaquamarine]
///
/// mediumaquamarine: 0x66cdaa
external _i1.JSNumber mediumaquamarine;

/// Property [mediumblue]
///
/// mediumblue: 0x0000cd
external _i1.JSNumber mediumblue;

/// Property [mediumorchid]
///
/// mediumorchid: 0xba55d3
external _i1.JSNumber mediumorchid;

/// Property [mediumpurple]
///
/// mediumpurple: 0x9370db
external _i1.JSNumber mediumpurple;

/// Property [mediumseagreen]
///
/// mediumseagreen: 0x3cb371
external _i1.JSNumber mediumseagreen;

/// Property [mediumslateblue]
///
/// mediumslateblue: 0x7b68ee
external _i1.JSNumber mediumslateblue;

/// Property [mediumspringgreen]
///
/// mediumspringgreen: 0x00fa9a
external _i1.JSNumber mediumspringgreen;

/// Property [mediumturquoise]
///
/// mediumturquoise: 0x48d1cc
external _i1.JSNumber mediumturquoise;

/// Property [mediumvioletred]
///
/// mediumvioletred: 0xc71585
external _i1.JSNumber mediumvioletred;

/// Property [midnightblue]
///
/// midnightblue: 0x191970
external _i1.JSNumber midnightblue;

/// Property [mintcream]
///
/// mintcream: 0xf5fffa
external _i1.JSNumber mintcream;

/// Property [mistyrose]
///
/// mistyrose: 0xffe4e1
external _i1.JSNumber mistyrose;

/// Property [moccasin]
///
/// moccasin: 0xffe4b5
external _i1.JSNumber moccasin;

/// Property [navajowhite]
///
/// navajowhite: 0xffdead
external _i1.JSNumber navajowhite;

/// Property [navy]
///
/// navy: 0x000080
external _i1.JSNumber navy;

/// Property [oldlace]
///
/// oldlace: 0xfdf5e6
external _i1.JSNumber oldlace;

/// Property [olive]
///
/// olive: 0x808000
external _i1.JSNumber olive;

/// Property [olivedrab]
///
/// olivedrab: 0x6b8e23
external _i1.JSNumber olivedrab;

/// Property [orange]
///
/// orange: 0xffa500
external _i1.JSNumber orange;

/// Property [orangered]
///
/// orangered: 0xff4500
external _i1.JSNumber orangered;

/// Property [orchid]
///
/// orchid: 0xda70d6
external _i1.JSNumber orchid;

/// Property [palegoldenrod]
///
/// palegoldenrod: 0xeee8aa
external _i1.JSNumber palegoldenrod;

/// Property [palegreen]
///
/// palegreen: 0x98fb98
external _i1.JSNumber palegreen;

/// Property [paleturquoise]
///
/// paleturquoise: 0xafeeee
external _i1.JSNumber paleturquoise;

/// Property [palevioletred]
///
/// palevioletred: 0xdb7093
external _i1.JSNumber palevioletred;

/// Property [papayawhip]
///
/// papayawhip: 0xffefd5
external _i1.JSNumber papayawhip;

/// Property [peachpuff]
///
/// peachpuff: 0xffdab9
external _i1.JSNumber peachpuff;

/// Property [peru]
///
/// peru: 0xcd853f
external _i1.JSNumber peru;

/// Property [pink]
///
/// pink: 0xffc0cb
external _i1.JSNumber pink;

/// Property [plum]
///
/// plum: 0xdda0dd
external _i1.JSNumber plum;

/// Property [powderblue]
///
/// powderblue: 0xb0e0e6
external _i1.JSNumber powderblue;

/// Property [purple]
///
/// purple: 0x800080
external _i1.JSNumber purple;

/// Property [rebeccapurple]
///
/// rebeccapurple: 0x663399
external _i1.JSNumber rebeccapurple;

/// Property [red]
///
/// red: 0xff0000
external _i1.JSNumber red;

/// Property [rosybrown]
///
/// rosybrown: 0xbc8f8f
external _i1.JSNumber rosybrown;

/// Property [royalblue]
///
/// royalblue: 0x4169e1
external _i1.JSNumber royalblue;

/// Property [saddlebrown]
///
/// saddlebrown: 0x8b4513
external _i1.JSNumber saddlebrown;

/// Property [salmon]
///
/// salmon: 0xfa8072
external _i1.JSNumber salmon;

/// Property [sandybrown]
///
/// sandybrown: 0xf4a460
external _i1.JSNumber sandybrown;

/// Property [seagreen]
///
/// seagreen: 0x2e8b57
external _i1.JSNumber seagreen;

/// Property [seashell]
///
/// seashell: 0xfff5ee
external _i1.JSNumber seashell;

/// Property [sienna]
///
/// sienna: 0xa0522d
external _i1.JSNumber sienna;

/// Property [silver]
///
/// silver: 0xc0c0c0
external _i1.JSNumber silver;

/// Property [skyblue]
///
/// skyblue: 0x87ceeb
external _i1.JSNumber skyblue;

/// Property [slateblue]
///
/// slateblue: 0x6a5acd
external _i1.JSNumber slateblue;

/// Property [slategray]
///
/// slategray: 0x708090
external _i1.JSNumber slategray;

/// Property [slategrey]
///
/// slategrey: 0x708090
external _i1.JSNumber slategrey;

/// Property [snow]
///
/// snow: 0xfffafa
external _i1.JSNumber snow;

/// Property [springgreen]
///
/// springgreen: 0x00ff7f
external _i1.JSNumber springgreen;

/// Property [steelblue]
///
/// steelblue: 0x4682b4
external _i1.JSNumber steelblue;

/// Property [tan]
///
/// tan: 0xd2b48c
external _i1.JSNumber tan;

/// Property [teal]
///
/// teal: 0x008080
external _i1.JSNumber teal;

/// Property [thistle]
///
/// thistle: 0xd8bfd8
external _i1.JSNumber thistle;

/// Property [tomato]
///
/// tomato: 0xff6347
external _i1.JSNumber tomato;

/// Property [turquoise]
///
/// turquoise: 0x40e0d0
external _i1.JSNumber turquoise;

/// Property [violet]
///
/// violet: 0xee82ee
external _i1.JSNumber violet;

/// Property [wheat]
///
/// wheat: 0xf5deb3
external _i1.JSNumber wheat;

/// Property [white]
///
/// white: 0xffffff
external _i1.JSNumber white;

/// Property [whitesmoke]
///
/// whitesmoke: 0xf5f5f5
external _i1.JSNumber whitesmoke;

/// Property [yellow]
///
/// yellow: 0xffff00
external _i1.JSNumber yellow;

/// Property [yellowgreen]
///
/// yellowgreen: 0x9acd32
external _i1.JSNumber yellowgreen;

}
/// Variable [ColorManagement$]
///
/// ColorManagement$: ColorManagement
@_i1.JS('ColorManagement')
external ColorManagement ColorManagement$;/// Method [SRGBToLinear]
///
/// Parameters:
/// - c: number
@_i1.JS('SRGBToLinear') external _i1.JSNumber SRGBToLinear(_i1.JSNumber c);/// Method [LinearToSRGB]
///
/// Parameters:
/// - c: number
@_i1.JS('LinearToSRGB') external _i1.JSNumber LinearToSRGB(_i1.JSNumber c);/// Interface [ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral$2]
extension type ColorSpaceDefinition$WorkingColorSpaceConfig$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [unpackColorSpace]
///
/// unpackColorSpace: string
external _i1.JSString unpackColorSpace;

}
/// Interface [ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral$2]
extension type ColorSpaceDefinition$OutputColorSpaceConfig$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [drawingBufferColorSpace]
///
/// drawingBufferColorSpace: string
external _i1.JSString drawingBufferColorSpace;

/// Property [toneMappingNode]
///
/// toneMappingNode?: "extended" | "standard"
external _i1.JSString? toneMappingNode;

}
/// Class [Cylindrical]
extension type Cylindrical.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - theta: number
/// - y: number
external Cylindrical([_i1.JSNumber radius, _i1.JSNumber theta, _i1.JSNumber y, ]);

/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [theta]
///
/// theta: number
external _i1.JSNumber theta;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - other: Cylindrical
external _i1.JSAny copy(Cylindrical other);
/// Method [set]
///
/// Parameters:
/// - radius: number
/// - theta: number
/// - y: number
external _i1.JSAny set(_i1.JSNumber radius, _i1.JSNumber theta, _i1.JSNumber y, );
/// Method [setFromVector3]
///
/// Parameters:
/// - vec3: Vector3
external _i1.JSAny setFromVector3(Vector3 vec3);
/// Method [setFromCartesianCoords]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny setFromCartesianCoords(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
}
/// Typedef [EulerOrder]
///
/// "XYZ" | "YXZ" | "ZXY" | "ZYX" | "YZX" | "XZY"
typedef EulerOrder = _i1.JSString;
/// Typedef [EulerTuple]
///
/// [, , , ]
typedef EulerTuple = _i1.JSArray<_i1.JSAny>;
/// Class [Euler]
extension type Euler.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - order: EulerOrder
external Euler([_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, EulerOrder order, ]);

/// Property [x]
///
/// x: number
external _i1.JSNumber x;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

/// Property [order]
///
/// order: EulerOrder
external EulerOrder order;

/// Property [DEFAULT_ORDER]
///
/// static DEFAULT_ORDER: "XYZ"
external _i1.JSString DEFAULT_ORDER;

/// Property [isEuler]
///
/// readonly isEuler: true
external _i1.JSBoolean get isEuler;
/// Method [set]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - order: EulerOrder
external Euler set(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, [EulerOrder order, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - euler: Euler
external _i1.JSAny copy(Euler euler);
/// Method [setFromRotationMatrix]
///
/// Parameters:
/// - m: Matrix4
/// - order: EulerOrder
/// - update: boolean
external Euler setFromRotationMatrix(Matrix4 m, [EulerOrder order, _i1.JSBoolean update, ]);
/// Method [setFromQuaternion]
///
/// Parameters:
/// - q: Quaternion
/// - order: EulerOrder
/// - update: boolean
external Euler setFromQuaternion(Quaternion q, [EulerOrder order, _i1.JSBoolean update, ]);
/// Method [setFromVector3]
///
/// Parameters:
/// - v: Vector3
/// - order: EulerOrder
external Euler setFromVector3(Vector3 v, [EulerOrder order, ]);
/// Method [reorder]
///
/// Parameters:
/// - newOrder: EulerOrder
external Euler reorder(EulerOrder newOrder);
/// Method [equals]
///
/// Parameters:
/// - euler: Euler
external _i1.JSBoolean equals(Euler euler);
/// Method [fromArray]
///
/// Parameters:
/// - array: EulerTuple
external Euler fromArray(EulerTuple array);
/// Method [toArray]
///
/// Parameters:
/// - array: Partial
/// - offset: number
external EulerTuple toArray([_i2.Partial<EulerTuple> array, _i1.JSNumber offset, ]);
}
/// Class [Frustum]
extension type Frustum.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - p0: Plane
/// - p1: Plane
/// - p2: Plane
/// - p3: Plane
/// - p4: Plane
/// - p5: Plane
external Frustum([Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5, ]);

/// Property [planes]
///
/// planes: Plane[]
external _i1.JSArray<Plane> planes;

/// Method [set]
///
/// Parameters:
/// - p0: Plane
/// - p1: Plane
/// - p2: Plane
/// - p3: Plane
/// - p4: Plane
/// - p5: Plane
external Frustum set(Plane p0, Plane p1, Plane p2, Plane p3, Plane p4, Plane p5, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - frustum: Frustum
external _i1.JSAny copy(Frustum frustum);
/// Method [setFromProjectionMatrix]
///
/// Parameters:
/// - m: Matrix4
/// - coordinateSystem: CoordinateSystem
/// - reversedDepth: boolean
external _i1.JSAny setFromProjectionMatrix(Matrix4 m, [CoordinateSystem coordinateSystem, _i1.JSBoolean reversedDepth, ]);
/// Method [intersectsObject]
///
/// Parameters:
/// - object: Object3D
external _i1.JSBoolean intersectsObject(Object3D<Object3DEventMap> object);
/// Method [intersectsSprite]
///
/// Parameters:
/// - sprite: Sprite
external _i1.JSBoolean intersectsSprite(Sprite<Object3DEventMap> sprite);
/// Method [intersectsSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean intersectsSphere(Sphere sphere);
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [containsPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSBoolean containsPoint(Vector3 point);
}
/// Class [FrustumArray]
extension type FrustumArray.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external FrustumArray();

/// Property [coordinateSystem]
///
/// coordinateSystem: CoordinateSystem
external CoordinateSystem coordinateSystem;

/// Method [intersectsObject]
///
/// Parameters:
/// - object: Object3D
/// - cameraArray: ArrayCamera
external _i1.JSBoolean intersectsObject(Object3D<Object3DEventMap> object, ArrayCamera cameraArray, );
/// Method [intersectsSprite$1]
///
/// Parameters:
/// - sprite: Sprite
/// - cameraArray: ArrayCamera
@_i1.JS('intersectsSprite') external _i1.JSBoolean intersectsSprite$1(Sprite<Object3DEventMap> sprite, ArrayCamera cameraArray, );
/// Method [intersectsSprite$2]
///
/// Parameters:
/// - sphere: Sphere
/// - cameraArray: ArrayCamera
@_i1.JS('intersectsSprite') external _i1.JSBoolean intersectsSprite$2(Sphere sphere, ArrayCamera cameraArray, );
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
/// - cameraArray: ArrayCamera
external _i1.JSBoolean intersectsBox(Box3 box, ArrayCamera cameraArray, );
/// Method [containsPoint]
///
/// Parameters:
/// - point: Vector3
/// - cameraArray: ArrayCamera
external _i1.JSBoolean containsPoint(Vector3 point, ArrayCamera cameraArray, );
/// Method [clone]
external FrustumArray clone();
}
/// Class [Interpolant]
extension type Interpolant._(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - sampleValues: any
/// - sampleSize: number
/// - resultBuffer: any
external Interpolant(_i1.JSAny parameterPositions, _i1.JSAny sampleValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Property [parameterPositions]
///
/// parameterPositions: any
external _i1.JSAny parameterPositions;

/// Property [sampleValues]
///
/// sampleValues: any
external _i1.JSAny sampleValues;

/// Property [valueSize]
///
/// valueSize: number
external _i1.JSNumber valueSize;

/// Property [resultBuffer]
///
/// resultBuffer: any
external _i1.JSAny resultBuffer;

/// Method [evaluate]
///
/// Parameters:
/// - time: number
external _i1.JSAny evaluate(_i1.JSNumber time);
}
/// Class [BezierInterpolant]
extension type BezierInterpolant.$(_i1.JSObject _) implements _i1.JSObject,Interpolant {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - samplesValues: any
/// - sampleSize: number
/// - resultBuffer: any
external BezierInterpolant(_i1.JSAny parameterPositions, _i1.JSAny samplesValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Method [interpolate_]
///
/// Parameters:
/// - i1: number
/// - t0: number
/// - t: number
/// - t1: number
external _i1.JSAny interpolate_(_i1.JSNumber i1, _i1.JSNumber t0, _i1.JSNumber t, _i1.JSNumber t1, );
}
/// Class [CubicInterpolant]
extension type CubicInterpolant.$(_i1.JSObject _) implements _i1.JSObject,Interpolant {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - samplesValues: any
/// - sampleSize: number
/// - resultBuffer: any
external CubicInterpolant(_i1.JSAny parameterPositions, _i1.JSAny samplesValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Method [interpolate_]
///
/// Parameters:
/// - i1: number
/// - t0: number
/// - t: number
/// - t1: number
external _i1.JSAny interpolate_(_i1.JSNumber i1, _i1.JSNumber t0, _i1.JSNumber t, _i1.JSNumber t1, );
}
/// Class [DiscreteInterpolant]
extension type DiscreteInterpolant.$(_i1.JSObject _) implements _i1.JSObject,Interpolant {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - samplesValues: any
/// - sampleSize: number
/// - resultBuffer: any
external DiscreteInterpolant(_i1.JSAny parameterPositions, _i1.JSAny samplesValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Method [interpolate_]
///
/// Parameters:
/// - i1: number
/// - t0: number
/// - t: number
/// - t1: number
external _i1.JSAny interpolate_(_i1.JSNumber i1, _i1.JSNumber t0, _i1.JSNumber t, _i1.JSNumber t1, );
}
/// Class [LinearInterpolant]
extension type LinearInterpolant.$(_i1.JSObject _) implements _i1.JSObject,Interpolant {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - samplesValues: any
/// - sampleSize: number
/// - resultBuffer: any
external LinearInterpolant(_i1.JSAny parameterPositions, _i1.JSAny samplesValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Method [interpolate_]
///
/// Parameters:
/// - i1: number
/// - t0: number
/// - t: number
/// - t1: number
external _i1.JSAny interpolate_(_i1.JSNumber i1, _i1.JSNumber t0, _i1.JSNumber t, _i1.JSNumber t1, );
}
/// Class [QuaternionLinearInterpolant]
extension type QuaternionLinearInterpolant.$(_i1.JSObject _) implements _i1.JSObject,Interpolant {
/// Constructor
///
/// Parameters:
/// - parameterPositions: any
/// - samplesValues: any
/// - sampleSize: number
/// - resultBuffer: any
external QuaternionLinearInterpolant(_i1.JSAny parameterPositions, _i1.JSAny samplesValues, _i1.JSNumber sampleSize, [_i1.JSAny resultBuffer, ]);

/// Method [interpolate_]
///
/// Parameters:
/// - i1: number
/// - t0: number
/// - t: number
/// - t1: number
external _i1.JSAny interpolate_(_i1.JSNumber i1, _i1.JSNumber t0, _i1.JSNumber t, _i1.JSNumber t1, );
}
/// Class [Line3]
extension type Line3.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - start: Vector3
/// - end: Vector3
external Line3([Vector3 start, Vector3 end, ]);

/// Property [start]
///
/// start: Vector3
external Vector3 start;

/// Property [end]
///
/// end: Vector3
external Vector3 end;

/// Method [set]
///
/// Parameters:
/// - start: Vector3
/// - end: Vector3
external Line3 set([Vector3 start, Vector3 end, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - line: Line3
external _i1.JSAny copy(Line3 line);
/// Method [getCenter]
///
/// Parameters:
/// - target: Vector3
external Vector3 getCenter(Vector3 target);
/// Method [delta]
///
/// Parameters:
/// - target: Vector3
external Vector3 delta(Vector3 target);
/// Method [distanceSq]
external _i1.JSNumber distanceSq();
/// Method [distance]
external _i1.JSNumber distance();
/// Method [at]
///
/// Parameters:
/// - t: number
/// - target: Vector3
external Vector3 at(_i1.JSNumber t, Vector3 target, );
/// Method [closestPointToPointParameter]
///
/// Parameters:
/// - point: Vector3
/// - clampToLine: boolean
external _i1.JSNumber closestPointToPointParameter(Vector3 point, [_i1.JSBoolean clampToLine, ]);
/// Method [closestPointToPoint]
///
/// Parameters:
/// - point: Vector3
/// - clampToLine: boolean
/// - target: Vector3
external Vector3 closestPointToPoint(Vector3 point, _i1.JSBoolean clampToLine, Vector3 target, );
/// Method [distanceSqToLine3]
///
/// Parameters:
/// - line: Line3
/// - c1: Vector3
/// - c2: Vector3
external _i1.JSNumber distanceSqToLine3(Line3 line, [Vector3 c1, Vector3 c2, ]);
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
external Line3 applyMatrix4(Matrix4 matrix);
/// Method [equals]
///
/// Parameters:
/// - line: Line3
external _i1.JSBoolean equals(Line3 line);
}
/// Variable [DEGtwoRAD]
///
/// DEGtwoRAD: number
@_i1.JS('DEG2RAD')
external _i1.JSNumber DEGtwoRAD;/// Variable [RADtwoDEG]
///
/// RADtwoDEG: number
@_i1.JS('RAD2DEG')
external _i1.JSNumber RADtwoDEG;/// Method [generateUUID]
@_i1.JS('generateUUID') external _i1.JSString generateUUID();/// Method [clamp]
///
/// Parameters:
/// - value: number
/// - min: number
/// - max: number
@_i1.JS('clamp') external _i1.JSNumber clamp(_i1.JSNumber value, _i1.JSNumber min, _i1.JSNumber max, );/// Method [euclideanModulo]
///
/// Parameters:
/// - n: number
/// - m: number
@_i1.JS('euclideanModulo') external _i1.JSNumber euclideanModulo(_i1.JSNumber n, _i1.JSNumber m, );/// Method [mapLinear]
///
/// Parameters:
/// - x: number
/// - a1: number
/// - a2: number
/// - b1: number
/// - b2: number
@_i1.JS('mapLinear') external _i1.JSNumber mapLinear(_i1.JSNumber x, _i1.JSNumber a1, _i1.JSNumber a2, _i1.JSNumber b1, _i1.JSNumber b2, );/// Method [inverseLerp]
///
/// Parameters:
/// - x: number
/// - y: number
/// - t: number
@_i1.JS('inverseLerp') external _i1.JSNumber inverseLerp(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber t, );/// Method [lerp]
///
/// Parameters:
/// - x: number
/// - y: number
/// - t: number
@_i1.JS('lerp') external _i1.JSNumber lerp(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber t, );/// Method [damp]
///
/// Parameters:
/// - x: number
/// - y: number
/// - lambda: number
/// - dt: number
@_i1.JS('damp') external _i1.JSNumber damp(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber lambda, _i1.JSNumber dt, );/// Method [pingpong]
///
/// Parameters:
/// - x: number
/// - length: number
@_i1.JS('pingpong') external _i1.JSNumber pingpong(_i1.JSNumber x, [_i1.JSNumber length, ]);/// Method [smoothstep]
///
/// Parameters:
/// - x: number
/// - min: number
/// - max: number
@_i1.JS('smoothstep') external _i1.JSNumber smoothstep(_i1.JSNumber x, _i1.JSNumber min, _i1.JSNumber max, );/// Method [smootherstep]
///
/// Parameters:
/// - x: number
/// - min: number
/// - max: number
@_i1.JS('smootherstep') external _i1.JSNumber smootherstep(_i1.JSNumber x, _i1.JSNumber min, _i1.JSNumber max, );/// Method [randInt]
///
/// Parameters:
/// - low: number
/// - high: number
@_i1.JS('randInt') external _i1.JSNumber randInt(_i1.JSNumber low, _i1.JSNumber high, );/// Method [randFloat]
///
/// Parameters:
/// - low: number
/// - high: number
@_i1.JS('randFloat') external _i1.JSNumber randFloat(_i1.JSNumber low, _i1.JSNumber high, );/// Method [randFloatSpread]
///
/// Parameters:
/// - range: number
@_i1.JS('randFloatSpread') external _i1.JSNumber randFloatSpread(_i1.JSNumber range);/// Method [seededRandom]
///
/// Parameters:
/// - seed: number
@_i1.JS('seededRandom') external _i1.JSNumber seededRandom([_i1.JSNumber seed]);/// Method [degToRad]
///
/// Parameters:
/// - degrees: number
@_i1.JS('degToRad') external _i1.JSNumber degToRad(_i1.JSNumber degrees);/// Method [radToDeg]
///
/// Parameters:
/// - radians: number
@_i1.JS('radToDeg') external _i1.JSNumber radToDeg(_i1.JSNumber radians);/// Method [isPowerOfTwo]
///
/// Parameters:
/// - value: number
@_i1.JS('isPowerOfTwo') external _i1.JSBoolean isPowerOfTwo(_i1.JSNumber value);/// Method [ceilPowerOfTwo]
///
/// Parameters:
/// - value: number
@_i1.JS('ceilPowerOfTwo') external _i1.JSNumber ceilPowerOfTwo(_i1.JSNumber value);/// Method [floorPowerOfTwo]
///
/// Parameters:
/// - value: number
@_i1.JS('floorPowerOfTwo') external _i1.JSNumber floorPowerOfTwo(_i1.JSNumber value);/// Method [setQuaternionFromProperEuler]
///
/// Parameters:
/// - q: Quaternion
/// - a: number
/// - b: number
/// - c: number
/// - order: string
@_i1.JS('setQuaternionFromProperEuler') external void setQuaternionFromProperEuler(Quaternion q, _i1.JSNumber a, _i1.JSNumber b, _i1.JSNumber c, _i1.JSString order, );/// Method [denormalize]
///
/// Parameters:
/// - value: number
/// - array: Float32Array | Uint32Array | Uint16Array | Uint8Array | Int32Array | Int16Array | Int8Array
@_i1.JS('denormalize') external _i1.JSNumber denormalize(_i1.JSNumber value, _i1.JSAny array, );/// Method [normalize]
///
/// Parameters:
/// - value: number
/// - array: Float32Array | Uint32Array | Uint16Array | Uint8Array | Int32Array | Int16Array | Int8Array
@_i1.JS('normalize') external _i1.JSNumber normalize(_i1.JSNumber value, _i1.JSAny array, );/// Variable [MathUtils]
///
/// MathUtils: MathUtils$TypeLiteral
external MathUtils$TypeLiteral MathUtils;/// Interface [MathUtils$TypeLiteral]
extension type MathUtils$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [DEGtwoRAD]
///
/// DEGtwoRAD: typeof DEG2RAD
@_i1.JS('DEG2RAD') external _i1.JSString DEGtwoRAD;

/// Property [RADtwoDEG]
///
/// RADtwoDEG: typeof RAD2DEG
@_i1.JS('RAD2DEG') external _i1.JSString RADtwoDEG;

/// Property [generateUUID]
///
/// generateUUID: typeof generateUUID
external _i1.JSString generateUUID;

/// Property [clamp]
///
/// clamp: typeof clamp
external _i1.JSString clamp;

/// Property [euclideanModulo]
///
/// euclideanModulo: typeof euclideanModulo
external _i1.JSString euclideanModulo;

/// Property [mapLinear]
///
/// mapLinear: typeof mapLinear
external _i1.JSString mapLinear;

/// Property [inverseLerp]
///
/// inverseLerp: typeof inverseLerp
external _i1.JSString inverseLerp;

/// Property [lerp]
///
/// lerp: typeof lerp
external _i1.JSString lerp;

/// Property [damp]
///
/// damp: typeof damp
external _i1.JSString damp;

/// Property [pingpong]
///
/// pingpong: typeof pingpong
external _i1.JSString pingpong;

/// Property [smoothstep]
///
/// smoothstep: typeof smoothstep
external _i1.JSString smoothstep;

/// Property [smootherstep]
///
/// smootherstep: typeof smootherstep
external _i1.JSString smootherstep;

/// Property [randInt]
///
/// randInt: typeof randInt
external _i1.JSString randInt;

/// Property [randFloat]
///
/// randFloat: typeof randFloat
external _i1.JSString randFloat;

/// Property [randFloatSpread]
///
/// randFloatSpread: typeof randFloatSpread
external _i1.JSString randFloatSpread;

/// Property [seededRandom]
///
/// seededRandom: typeof seededRandom
external _i1.JSString seededRandom;

/// Property [degToRad]
///
/// degToRad: typeof degToRad
external _i1.JSString degToRad;

/// Property [radToDeg]
///
/// radToDeg: typeof radToDeg
external _i1.JSString radToDeg;

/// Property [isPowerOfTwo]
///
/// isPowerOfTwo: typeof isPowerOfTwo
external _i1.JSString isPowerOfTwo;

/// Property [ceilPowerOfTwo]
///
/// ceilPowerOfTwo: typeof ceilPowerOfTwo
external _i1.JSString ceilPowerOfTwo;

/// Property [floorPowerOfTwo]
///
/// floorPowerOfTwo: typeof floorPowerOfTwo
external _i1.JSString floorPowerOfTwo;

/// Property [setQuaternionFromProperEuler]
///
/// setQuaternionFromProperEuler: typeof setQuaternionFromProperEuler
external _i1.JSString setQuaternionFromProperEuler;

/// Property [normalize]
///
/// normalize: typeof normalize
external _i1.JSString normalize;

/// Property [denormalize]
///
/// denormalize: typeof denormalize
external _i1.JSString denormalize;

}
/// Typedef [Matrix2Tuple]
///
/// [, , , ]
typedef Matrix2Tuple = _i1.JSArray<_i1.JSAny>;
/// Class [Matrix2]
extension type Matrix2.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Matrix2.$1();

/// Constructor
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n21: number
/// - n22: number
external Matrix2.$2(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n21, _i1.JSNumber n22, );

/// Property [elements]
///
/// elements: Matrix2Tuple
external Matrix2Tuple elements;

/// Property [isMatrixtwo]
///
/// readonly isMatrixtwo: true
@_i1.JS('isMatrix2') external _i1.JSBoolean get isMatrixtwo;
/// Method [identity]
external _i1.JSAny identity();
/// Method [fromArray]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [set]
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n21: number
/// - n22: number
external _i1.JSAny set(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n21, _i1.JSNumber n22, );
}
/// Typedef [Matrix3Tuple]
///
/// [, , , , , , , , ]
typedef Matrix3Tuple = _i1.JSArray<_i1.JSAny>;
/// Class [Matrix3]
extension type Matrix3.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Matrix3.$1();

/// Constructor
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n13: number
/// - n21: number
/// - n22: number
/// - n23: number
/// - n31: number
/// - n32: number
/// - n33: number
external Matrix3.$2(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n13, _i1.JSNumber n21, _i1.JSNumber n22, _i1.JSNumber n23, _i1.JSNumber n31, _i1.JSNumber n32, _i1.JSNumber n33, );

/// Property [elements]
///
/// elements: Matrix3Tuple
external Matrix3Tuple elements;

/// Property [isMatrixthree]
///
/// readonly isMatrixthree: true
@_i1.JS('isMatrix3') external _i1.JSBoolean get isMatrixthree;
/// Method [set]
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n13: number
/// - n21: number
/// - n22: number
/// - n23: number
/// - n31: number
/// - n32: number
/// - n33: number
external Matrix3 set(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n13, _i1.JSNumber n21, _i1.JSNumber n22, _i1.JSNumber n23, _i1.JSNumber n31, _i1.JSNumber n32, _i1.JSNumber n33, );
/// Method [identity]
external _i1.JSAny identity();
/// Method [copy]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny copy(Matrix3 m);
/// Method [extractBasis]
///
/// Parameters:
/// - xAxis: Vector3
/// - yAxis: Vector3
/// - zAxis: Vector3
external _i1.JSAny extractBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis, );
/// Method [setFromMatrix4]
///
/// Parameters:
/// - m: Matrix4
external Matrix3 setFromMatrix4(Matrix4 m);
/// Method [multiply]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny multiply(Matrix3 m);
/// Method [premultiply]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny premultiply(Matrix3 m);
/// Method [multiplyMatrices]
///
/// Parameters:
/// - a: Matrix3
/// - b: Matrix3
external _i1.JSAny multiplyMatrices(Matrix3 a, Matrix3 b, );
/// Method [multiplyScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny multiplyScalar(_i1.JSNumber s);
/// Method [determinant]
external _i1.JSNumber determinant();
/// Method [invert]
external _i1.JSAny invert();
/// Method [transpose]
external _i1.JSAny transpose();
/// Method [getNormalMatrix]
///
/// Parameters:
/// - matrix4: Matrix4
external _i1.JSAny getNormalMatrix(Matrix4 matrix4);
/// Method [transposeIntoArray]
///
/// Parameters:
/// - r: number[]
external _i1.JSAny transposeIntoArray(_i1.JSArray<_i1.JSNumber> r);
/// Method [setUvTransform]
///
/// Parameters:
/// - tx: number
/// - ty: number
/// - sx: number
/// - sy: number
/// - rotation: number
/// - cx: number
/// - cy: number
external _i1.JSAny setUvTransform(_i1.JSNumber tx, _i1.JSNumber ty, _i1.JSNumber sx, _i1.JSNumber sy, _i1.JSNumber rotation, _i1.JSNumber cx, _i1.JSNumber cy, );
/// Method [scale]
///
/// Parameters:
/// - sx: number
/// - sy: number
external _i1.JSAny scale(_i1.JSNumber sx, _i1.JSNumber sy, );
/// Method [rotate]
///
/// Parameters:
/// - theta: number
external _i1.JSAny rotate(_i1.JSNumber theta);
/// Method [translate]
///
/// Parameters:
/// - tx: number
/// - ty: number
external _i1.JSAny translate(_i1.JSNumber tx, _i1.JSNumber ty, );
/// Method [makeTranslation$1]
///
/// Parameters:
/// - v: Vector2
@_i1.JS('makeTranslation') external _i1.JSAny makeTranslation$1(Vector2 v);
/// Method [makeTranslation$2]
///
/// Parameters:
/// - x: number
/// - y: number
@_i1.JS('makeTranslation') external _i1.JSAny makeTranslation$2(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [makeRotation]
///
/// Parameters:
/// - theta: number
external _i1.JSAny makeRotation(_i1.JSNumber theta);
/// Method [makeScale]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny makeScale(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [equals]
///
/// Parameters:
/// - matrix: Matrix3
external _i1.JSBoolean equals(Matrix3 matrix);
/// Method [fromArray]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
@_i1.JS('toArray') external Matrix3Tuple toArray$1();
/// Method [toArray$2]
///
/// Type Parameters:
/// - TArray extends ArrayLike
///
/// Parameters:
/// - array: TArray
/// - offset: number
@_i1.JS('toArray') external TArray toArray$2<TArray extends _i2.ArrayLike<_i1.JSNumber>>(TArray array, [_i1.JSNumber offset, ]);
/// Method [clone]
external _i1.JSAny clone();
}
/// Typedef [Matrix4Tuple]
///
/// [, , , , , , , , , , , , , , , ]
typedef Matrix4Tuple = _i1.JSArray<_i1.JSAny>;
/// Class [Matrix4]
extension type Matrix4.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external Matrix4.$1();

/// Constructor
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n13: number
/// - n14: number
/// - n21: number
/// - n22: number
/// - n23: number
/// - n24: number
/// - n31: number
/// - n32: number
/// - n33: number
/// - n34: number
/// - n41: number
/// - n42: number
/// - n43: number
/// - n44: number
external Matrix4.$2(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n13, _i1.JSNumber n14, _i1.JSNumber n21, _i1.JSNumber n22, _i1.JSNumber n23, _i1.JSNumber n24, _i1.JSNumber n31, _i1.JSNumber n32, _i1.JSNumber n33, _i1.JSNumber n34, _i1.JSNumber n41, _i1.JSNumber n42, _i1.JSNumber n43, _i1.JSNumber n44, );

/// Property [elements]
///
/// elements: Matrix4Tuple
external Matrix4Tuple elements;

/// Property [isMatrixfour]
///
/// readonly isMatrixfour: true
@_i1.JS('isMatrix4') external _i1.JSBoolean get isMatrixfour;
/// Method [set]
///
/// Parameters:
/// - n11: number
/// - n12: number
/// - n13: number
/// - n14: number
/// - n21: number
/// - n22: number
/// - n23: number
/// - n24: number
/// - n31: number
/// - n32: number
/// - n33: number
/// - n34: number
/// - n41: number
/// - n42: number
/// - n43: number
/// - n44: number
external _i1.JSAny set(_i1.JSNumber n11, _i1.JSNumber n12, _i1.JSNumber n13, _i1.JSNumber n14, _i1.JSNumber n21, _i1.JSNumber n22, _i1.JSNumber n23, _i1.JSNumber n24, _i1.JSNumber n31, _i1.JSNumber n32, _i1.JSNumber n33, _i1.JSNumber n34, _i1.JSNumber n41, _i1.JSNumber n42, _i1.JSNumber n43, _i1.JSNumber n44, );
/// Method [identity]
external _i1.JSAny identity();
/// Method [clone]
external Matrix4 clone();
/// Method [copy]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny copy(Matrix4 m);
/// Method [copyPosition]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny copyPosition(Matrix4 m);
/// Method [setFromMatrix3]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny setFromMatrix3(Matrix3 m);
/// Method [extractBasis]
///
/// Parameters:
/// - xAxis: Vector3
/// - yAxis: Vector3
/// - zAxis: Vector3
external _i1.JSAny extractBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis, );
/// Method [makeBasis]
///
/// Parameters:
/// - xAxis: Vector3
/// - yAxis: Vector3
/// - zAxis: Vector3
external _i1.JSAny makeBasis(Vector3 xAxis, Vector3 yAxis, Vector3 zAxis, );
/// Method [extractRotation]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny extractRotation(Matrix4 m);
/// Method [makeRotationFromEuler]
///
/// Parameters:
/// - euler: Euler
external _i1.JSAny makeRotationFromEuler(Euler euler);
/// Method [makeRotationFromQuaternion]
///
/// Parameters:
/// - q: Quaternion
external _i1.JSAny makeRotationFromQuaternion(Quaternion q);
/// Method [lookAt]
///
/// Parameters:
/// - eye: Vector3
/// - target: Vector3
/// - up: Vector3
external _i1.JSAny lookAt(Vector3 eye, Vector3 target, Vector3 up, );
/// Method [multiply]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny multiply(Matrix4 m);
/// Method [premultiply]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny premultiply(Matrix4 m);
/// Method [multiplyMatrices]
///
/// Parameters:
/// - a: Matrix4
/// - b: Matrix4
external _i1.JSAny multiplyMatrices(Matrix4 a, Matrix4 b, );
/// Method [multiplyScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny multiplyScalar(_i1.JSNumber s);
/// Method [determinant]
external _i1.JSNumber determinant();
/// Method [transpose]
external _i1.JSAny transpose();
/// Method [setPosition$1]
///
/// Parameters:
/// - v: Vector3
@_i1.JS('setPosition') external _i1.JSAny setPosition$1(Vector3 v);
/// Method [setPosition$2]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
@_i1.JS('setPosition') external _i1.JSAny setPosition$2(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [invert]
external _i1.JSAny invert();
/// Method [scale]
///
/// Parameters:
/// - v: Vector3
external _i1.JSAny scale(Vector3 v);
/// Method [getMaxScaleOnAxis]
external _i1.JSNumber getMaxScaleOnAxis();
/// Method [makeTranslation$1]
///
/// Parameters:
/// - v: Vector3
@_i1.JS('makeTranslation') external _i1.JSAny makeTranslation$1(Vector3 v);
/// Method [makeTranslation$2]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
@_i1.JS('makeTranslation') external _i1.JSAny makeTranslation$2(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [makeRotationX]
///
/// Parameters:
/// - theta: number
external _i1.JSAny makeRotationX(_i1.JSNumber theta);
/// Method [makeRotationY]
///
/// Parameters:
/// - theta: number
external _i1.JSAny makeRotationY(_i1.JSNumber theta);
/// Method [makeRotationZ]
///
/// Parameters:
/// - theta: number
external _i1.JSAny makeRotationZ(_i1.JSNumber theta);
/// Method [makeRotationAxis]
///
/// Parameters:
/// - axis: Vector3
/// - angle: number
external _i1.JSAny makeRotationAxis(Vector3 axis, _i1.JSNumber angle, );
/// Method [makeScale]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny makeScale(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [makeShear]
///
/// Parameters:
/// - xy: number
/// - xz: number
/// - yx: number
/// - yz: number
/// - zx: number
/// - zy: number
external _i1.JSAny makeShear(_i1.JSNumber xy, _i1.JSNumber xz, _i1.JSNumber yx, _i1.JSNumber yz, _i1.JSNumber zx, _i1.JSNumber zy, );
/// Method [compose]
///
/// Parameters:
/// - position: Vector3
/// - quaternion: Quaternion
/// - scale: Vector3
external _i1.JSAny compose(Vector3 position, Quaternion quaternion, Vector3 scale, );
/// Method [decompose]
///
/// Parameters:
/// - position: Vector3
/// - quaternion: Quaternion
/// - scale: Vector3
external _i1.JSAny decompose(Vector3 position, Quaternion quaternion, Vector3 scale, );
/// Method [makePerspective]
///
/// Parameters:
/// - left: number
/// - right: number
/// - top: number
/// - bottom: number
/// - near: number
/// - far: number
/// - coordinateSystem: CoordinateSystem
/// - reversedDepth: boolean
external _i1.JSAny makePerspective(_i1.JSNumber left, _i1.JSNumber right, _i1.JSNumber top, _i1.JSNumber bottom, _i1.JSNumber near, _i1.JSNumber far, [CoordinateSystem coordinateSystem, _i1.JSBoolean reversedDepth, ]);
/// Method [makeOrthographic]
///
/// Parameters:
/// - left: number
/// - right: number
/// - top: number
/// - bottom: number
/// - near: number
/// - far: number
/// - coordinateSystem: CoordinateSystem
/// - reversedDepth: boolean
external _i1.JSAny makeOrthographic(_i1.JSNumber left, _i1.JSNumber right, _i1.JSNumber top, _i1.JSNumber bottom, _i1.JSNumber near, _i1.JSNumber far, [CoordinateSystem coordinateSystem, _i1.JSBoolean reversedDepth, ]);
/// Method [equals]
///
/// Parameters:
/// - matrix: Matrix4
external _i1.JSBoolean equals(Matrix4 matrix);
/// Method [fromArray]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
@_i1.JS('toArray') external Matrix4Tuple toArray$1();
/// Method [toArray$2]
///
/// Type Parameters:
/// - TArray extends ArrayLike
///
/// Parameters:
/// - array: TArray
/// - offset: number
@_i1.JS('toArray') external TArray toArray$2<TArray extends _i2.ArrayLike<_i1.JSNumber>>(TArray array, [_i1.JSNumber offset, ]);
}
/// Class [Plane]
extension type Plane.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - normal: Vector3
/// - constant: number
external Plane([Vector3 normal, _i1.JSNumber constant, ]);

/// Property [normal]
///
/// normal: Vector3
external Vector3 normal;

/// Property [constant]
///
/// constant: number
external _i1.JSNumber constant;

/// Property [isPlane]
///
/// readonly isPlane: true
external _i1.JSBoolean get isPlane;
/// Method [set]
///
/// Parameters:
/// - normal: Vector3
/// - constant: number
external Plane set(Vector3 normal, _i1.JSNumber constant, );
/// Method [setComponents]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external Plane setComponents(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, );
/// Method [setFromNormalAndCoplanarPoint]
///
/// Parameters:
/// - normal: Vector3
/// - point: Vector3
external Plane setFromNormalAndCoplanarPoint(Vector3 normal, Vector3 point, );
/// Method [setFromCoplanarPoints]
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
external Plane setFromCoplanarPoints(Vector3 a, Vector3 b, Vector3 c, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - plane: Plane
external _i1.JSAny copy(Plane plane);
/// Method [normalize]
external Plane normalize();
/// Method [negate]
external Plane negate();
/// Method [distanceToPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSNumber distanceToPoint(Vector3 point);
/// Method [distanceToSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSNumber distanceToSphere(Sphere sphere);
/// Method [projectPoint]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 projectPoint(Vector3 point, Vector3 target, );
/// Method [intersectLine]
///
/// Parameters:
/// - line: Line3
/// - target: Vector3
external Vector3? intersectLine(Line3 line, Vector3 target, );
/// Method [intersectsLine]
///
/// Parameters:
/// - line: Line3
external _i1.JSBoolean intersectsLine(Line3 line);
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [intersectsSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean intersectsSphere(Sphere sphere);
/// Method [coplanarPoint]
///
/// Parameters:
/// - target: Vector3
external Vector3 coplanarPoint(Vector3 target);
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
/// - optionalNormalMatrix: Matrix3
external Plane applyMatrix4(Matrix4 matrix, [Matrix3 optionalNormalMatrix, ]);
/// Method [translate]
///
/// Parameters:
/// - offset: Vector3
external Plane translate(Vector3 offset);
/// Method [equals]
///
/// Parameters:
/// - plane: Plane
external _i1.JSBoolean equals(Plane plane);
/// Method [isIntersectionLine]
///
/// Parameters:
/// - l: any
external _i1.JSAny isIntersectionLine(_i1.JSAny l);
}
/// Interface [QuaternionLike]
extension type QuaternionLike.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [x]
///
/// readonly x: number
external _i1.JSNumber get x;
/// Property [y]
///
/// readonly y: number
external _i1.JSNumber get y;
/// Property [z]
///
/// readonly z: number
external _i1.JSNumber get z;
/// Property [w]
///
/// readonly w: number
external _i1.JSNumber get w;
}
/// Typedef [QuaternionTuple]
///
/// [, , , ]
typedef QuaternionTuple = _i1.JSArray<_i1.JSAny>;
/// Class [Quaternion]
extension type Quaternion.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external Quaternion([_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, ]);

/// Property [x]
///
/// x: number
external _i1.JSNumber x;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

/// Property [w]
///
/// w: number
external _i1.JSNumber w;

/// Property [isQuaternion]
///
/// readonly isQuaternion: true
external _i1.JSBoolean get isQuaternion;
/// Method [set]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external _i1.JSAny set(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - q: QuaternionLike
external _i1.JSAny copy(QuaternionLike q);
/// Method [setFromEuler]
///
/// Parameters:
/// - euler: Euler
/// - update: boolean
external _i1.JSAny setFromEuler(Euler euler, [_i1.JSBoolean update, ]);
/// Method [setFromAxisAngle]
///
/// Parameters:
/// - axis: Vector3Like
/// - angle: number
external _i1.JSAny setFromAxisAngle(Vector3Like axis, _i1.JSNumber angle, );
/// Method [setFromRotationMatrix]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny setFromRotationMatrix(Matrix4 m);
/// Method [setFromUnitVectors]
///
/// Parameters:
/// - vFrom: Vector3
/// - vTo: Vector3Like
external _i1.JSAny setFromUnitVectors(Vector3 vFrom, Vector3Like vTo, );
/// Method [angleTo]
///
/// Parameters:
/// - q: Quaternion
external _i1.JSNumber angleTo(Quaternion q);
/// Method [rotateTowards]
///
/// Parameters:
/// - q: Quaternion
/// - step: number
external _i1.JSAny rotateTowards(Quaternion q, _i1.JSNumber step, );
/// Method [identity]
external _i1.JSAny identity();
/// Method [invert]
external _i1.JSAny invert();
/// Method [conjugate]
external _i1.JSAny conjugate();
/// Method [dot]
///
/// Parameters:
/// - v: Quaternion
external _i1.JSNumber dot(Quaternion v);
/// Method [lengthSq]
external _i1.JSNumber lengthSq();
/// Method [length]
external _i1.JSNumber length();
/// Method [normalize]
external _i1.JSAny normalize();
/// Method [multiply]
///
/// Parameters:
/// - q: Quaternion
external _i1.JSAny multiply(Quaternion q);
/// Method [premultiply]
///
/// Parameters:
/// - q: Quaternion
external _i1.JSAny premultiply(Quaternion q);
/// Method [multiplyQuaternions]
///
/// Parameters:
/// - a: Quaternion
/// - b: Quaternion
external _i1.JSAny multiplyQuaternions(Quaternion a, Quaternion b, );
/// Method [slerp]
///
/// Parameters:
/// - qb: Quaternion
/// - t: number
external _i1.JSAny slerp(Quaternion qb, _i1.JSNumber t, );
/// Method [slerpQuaternions]
///
/// Parameters:
/// - qa: Quaternion
/// - qb: Quaternion
/// - t: number
external _i1.JSAny slerpQuaternions(Quaternion qa, Quaternion qb, _i1.JSNumber t, );
/// Method [equals]
///
/// Parameters:
/// - v: Quaternion
external _i1.JSBoolean equals(Quaternion v);
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - array: QuaternionTuple
/// - offset: 0
@_i1.JS('toArray') external QuaternionTuple toArray$2([QuaternionTuple array, _i1.JSNumber offset, ]);
/// Method [toArray$3]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$3(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [toJSON]
external _i1.JSArray<_i1.JSAny> toJSON();
/// Method [fromBufferAttribute]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute
/// - index: number
external _i1.JSAny fromBufferAttribute(_i1.JSAny attribute, _i1.JSNumber index, );
/// Method [slerpFlat]
///
/// Parameters:
/// - dst: number[]
/// - dstOffset: number
/// - src0: number[]
/// - srcOffset: number
/// - src1: number[]
/// - stcOffset1: number
/// - t: number
external static void slerpFlat(_i1.JSArray<_i1.JSNumber> dst, _i1.JSNumber dstOffset, _i1.JSArray<_i1.JSNumber> src0, _i1.JSNumber srcOffset, _i1.JSArray<_i1.JSNumber> src1, _i1.JSNumber stcOffset1, _i1.JSNumber t, );
/// Method [multiplyQuaternionsFlat]
///
/// Parameters:
/// - dst: number[]
/// - dstOffset: number
/// - src0: number[]
/// - srcOffset: number
/// - src1: number[]
/// - stcOffset1: number
external static _i1.JSArray<_i1.JSNumber> multiplyQuaternionsFlat(_i1.JSArray<_i1.JSNumber> dst, _i1.JSNumber dstOffset, _i1.JSArray<_i1.JSNumber> src0, _i1.JSNumber srcOffset, _i1.JSArray<_i1.JSNumber> src1, _i1.JSNumber stcOffset1, );
/// Method [random]
external _i1.JSAny random();
}
/// Class [Ray]
extension type Ray.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - origin: Vector3
/// - direction: Vector3
external Ray([Vector3 origin, Vector3 direction, ]);

/// Property [origin]
///
/// origin: Vector3
external Vector3 origin;

/// Property [direction]
///
/// direction: Vector3
external Vector3 direction;

/// Method [set]
///
/// Parameters:
/// - origin: Vector3
/// - direction: Vector3
external Ray set(Vector3 origin, Vector3 direction, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - ray: Ray
external _i1.JSAny copy(Ray ray);
/// Method [at]
///
/// Parameters:
/// - t: number
/// - target: Vector3
external Vector3 at(_i1.JSNumber t, Vector3 target, );
/// Method [lookAt]
///
/// Parameters:
/// - v: Vector3
external Ray lookAt(Vector3 v);
/// Method [recast]
///
/// Parameters:
/// - t: number
external Ray recast(_i1.JSNumber t);
/// Method [closestPointToPoint]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 closestPointToPoint(Vector3 point, Vector3 target, );
/// Method [distanceToPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSNumber distanceToPoint(Vector3 point);
/// Method [distanceSqToPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSNumber distanceSqToPoint(Vector3 point);
/// Method [distanceSqToSegment]
///
/// Parameters:
/// - v0: Vector3
/// - v1: Vector3
/// - optionalPointOnRay: Vector3
/// - optionalPointOnSegment: Vector3
external _i1.JSNumber distanceSqToSegment(Vector3 v0, Vector3 v1, [Vector3 optionalPointOnRay, Vector3 optionalPointOnSegment, ]);
/// Method [intersectSphere]
///
/// Parameters:
/// - sphere: Sphere
/// - target: Vector3
external Vector3? intersectSphere(Sphere sphere, Vector3 target, );
/// Method [intersectsSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean intersectsSphere(Sphere sphere);
/// Method [distanceToPlane]
///
/// Parameters:
/// - plane: Plane
external _i1.JSNumber distanceToPlane(Plane plane);
/// Method [intersectPlane]
///
/// Parameters:
/// - plane: Plane
/// - target: Vector3
external Vector3? intersectPlane(Plane plane, Vector3 target, );
/// Method [intersectsPlane]
///
/// Parameters:
/// - plane: Plane
external _i1.JSBoolean intersectsPlane(Plane plane);
/// Method [intersectBox]
///
/// Parameters:
/// - box: Box3
/// - target: Vector3
external Vector3? intersectBox(Box3 box, Vector3 target, );
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [intersectTriangle]
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
/// - backfaceCulling: boolean
/// - target: Vector3
external Vector3? intersectTriangle(Vector3 a, Vector3 b, Vector3 c, _i1.JSBoolean backfaceCulling, Vector3 target, );
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix4: Matrix4
external Ray applyMatrix4(Matrix4 matrix4);
/// Method [equals]
///
/// Parameters:
/// - ray: Ray
external _i1.JSBoolean equals(Ray ray);
/// Method [isIntersectionBox]
///
/// Parameters:
/// - b: any
external _i1.JSAny isIntersectionBox(_i1.JSAny b);
/// Method [isIntersectionPlane]
///
/// Parameters:
/// - p: any
external _i1.JSAny isIntersectionPlane(_i1.JSAny p);
/// Method [isIntersectionSphere]
///
/// Parameters:
/// - s: any
external _i1.JSAny isIntersectionSphere(_i1.JSAny s);
}
/// Class [Sphere]
extension type Sphere.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - center: Vector3
/// - radius: number
external Sphere([Vector3 center, _i1.JSNumber radius, ]);

/// Property [center]
///
/// center: Vector3
external Vector3 center;

/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [isSphere]
///
/// readonly isSphere: true
external _i1.JSBoolean get isSphere;
/// Method [set]
///
/// Parameters:
/// - center: Vector3
/// - radius: number
external Sphere set(Vector3 center, _i1.JSNumber radius, );
/// Method [setFromPoints]
///
/// Parameters:
/// - points: Vector3[]
/// - optionalCenter: Vector3
external Sphere setFromPoints(_i1.JSArray<Vector3> points, [Vector3 optionalCenter, ]);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSAny copy(Sphere sphere);
/// Method [expandByPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSAny expandByPoint(Vector3 point);
/// Method [isEmpty]
external _i1.JSBoolean isEmpty();
/// Method [makeEmpty]
external _i1.JSAny makeEmpty();
/// Method [containsPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSBoolean containsPoint(Vector3 point);
/// Method [distanceToPoint]
///
/// Parameters:
/// - point: Vector3
external _i1.JSNumber distanceToPoint(Vector3 point);
/// Method [intersectsSphere]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean intersectsSphere(Sphere sphere);
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [intersectsPlane]
///
/// Parameters:
/// - plane: Plane
external _i1.JSBoolean intersectsPlane(Plane plane);
/// Method [clampPoint]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 clampPoint(Vector3 point, Vector3 target, );
/// Method [getBoundingBox]
///
/// Parameters:
/// - target: Box3
external Box3 getBoundingBox(Box3 target);
/// Method [applyMatrix4]
///
/// Parameters:
/// - matrix: Matrix4
external Sphere applyMatrix4(Matrix4 matrix);
/// Method [translate]
///
/// Parameters:
/// - offset: Vector3
external Sphere translate(Vector3 offset);
/// Method [equals]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSBoolean equals(Sphere sphere);
/// Method [union]
///
/// Parameters:
/// - sphere: Sphere
external _i1.JSAny union(Sphere sphere);
/// Method [empty]
external _i1.JSAny empty();
/// Method [toJSON]
external SphereJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: SphereJSON
external _i1.JSAny fromJSON(SphereJSON json);
}
/// Interface [SphereJSON]
extension type SphereJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [center]
///
/// center: number[]
external _i1.JSArray<_i1.JSNumber> center;

}
/// Class [Spherical]
extension type Spherical.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - radius: number
/// - phi: number
/// - theta: number
external Spherical([_i1.JSNumber radius, _i1.JSNumber phi, _i1.JSNumber theta, ]);

/// Property [radius]
///
/// radius: number
external _i1.JSNumber radius;

/// Property [phi]
///
/// phi: number
external _i1.JSNumber phi;

/// Property [theta]
///
/// theta: number
external _i1.JSNumber theta;

/// Method [set]
///
/// Parameters:
/// - radius: number
/// - phi: number
/// - theta: number
external _i1.JSAny set(_i1.JSNumber radius, _i1.JSNumber phi, _i1.JSNumber theta, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - other: Spherical
external _i1.JSAny copy(Spherical other);
/// Method [makeSafe]
external _i1.JSAny makeSafe();
/// Method [setFromVector3]
///
/// Parameters:
/// - v: Vector3
external _i1.JSAny setFromVector3(Vector3 v);
/// Method [setFromCartesianCoords]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny setFromCartesianCoords(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
}
/// Class [SphericalHarmonics3]
extension type SphericalHarmonics3.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external SphericalHarmonics3();

/// Property [coefficients]
///
/// coefficients: Vector3[]
external _i1.JSArray<Vector3> coefficients;

/// Property [isSphericalHarmonicsthree]
///
/// readonly isSphericalHarmonicsthree: true
@_i1.JS('isSphericalHarmonics3') external _i1.JSBoolean get isSphericalHarmonicsthree;
/// Method [set]
///
/// Parameters:
/// - coefficients: Vector3[]
external SphericalHarmonics3 set(_i1.JSArray<Vector3> coefficients);
/// Method [zero]
external SphericalHarmonics3 zero();
/// Method [add]
///
/// Parameters:
/// - sh: SphericalHarmonics3
external SphericalHarmonics3 add(SphericalHarmonics3 sh);
/// Method [addScaledSH]
///
/// Parameters:
/// - sh: SphericalHarmonics3
/// - s: number
external SphericalHarmonics3 addScaledSH(SphericalHarmonics3 sh, _i1.JSNumber s, );
/// Method [scale]
///
/// Parameters:
/// - s: number
external SphericalHarmonics3 scale(_i1.JSNumber s);
/// Method [lerp]
///
/// Parameters:
/// - sh: SphericalHarmonics3
/// - alpha: number
external SphericalHarmonics3 lerp(SphericalHarmonics3 sh, _i1.JSNumber alpha, );
/// Method [equals]
///
/// Parameters:
/// - sh: SphericalHarmonics3
external _i1.JSBoolean equals(SphericalHarmonics3 sh);
/// Method [copy]
///
/// Parameters:
/// - sh: SphericalHarmonics3
external SphericalHarmonics3 copy(SphericalHarmonics3 sh);
/// Method [clone]
external _i1.JSAny clone();
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$2(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [getAt]
///
/// Parameters:
/// - normal: Vector3
/// - target: Vector3
external Vector3 getAt(Vector3 normal, Vector3 target, );
/// Method [getIrradianceAt]
///
/// Parameters:
/// - normal: Vector3
/// - target: Vector3
external Vector3 getIrradianceAt(Vector3 normal, Vector3 target, );
/// Method [getBasisAt]
///
/// Parameters:
/// - normal: Vector3
/// - shBasis: number[]
external static void getBasisAt(Vector3 normal, _i1.JSArray<_i1.JSNumber> shBasis, );
}
/// Class [Triangle]
extension type Triangle.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
external Triangle([Vector3 a, Vector3 b, Vector3 c, ]);

/// Property [a]
///
/// a: Vector3
external Vector3 a;

/// Property [b]
///
/// b: Vector3
external Vector3 b;

/// Property [c]
///
/// c: Vector3
external Vector3 c;

/// Method [set]
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
external Triangle set(Vector3 a, Vector3 b, Vector3 c, );
/// Method [setFromPointsAndIndices]
///
/// Parameters:
/// - points: Vector3[]
/// - i0: number
/// - i1: number
/// - i2: number
external _i1.JSAny setFromPointsAndIndices(_i1.JSArray<Vector3> points, _i1.JSNumber i0, _i1.JSNumber i1, _i1.JSNumber i2, );
/// Method [setFromAttributeAndIndices]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute
/// - i0: number
/// - i1: number
/// - i2: number
external _i1.JSAny setFromAttributeAndIndices(_i1.JSAny attribute, _i1.JSNumber i0, _i1.JSNumber i1, _i1.JSNumber i2, );
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - triangle: Triangle
external _i1.JSAny copy(Triangle triangle);
/// Method [getArea]
external _i1.JSNumber getArea();
/// Method [getMidpoint]
///
/// Parameters:
/// - target: Vector3
external Vector3 getMidpoint(Vector3 target);
/// Method [getNormal$1]
///
/// Parameters:
/// - target: Vector3
@_i1.JS('getNormal') external Vector3 getNormal$1(Vector3 target);
/// Method [getPlane]
///
/// Parameters:
/// - target: Plane
external Plane getPlane(Plane target);
/// Method [getBarycoord$1]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
@_i1.JS('getBarycoord') external Vector3? getBarycoord$1(Vector3 point, Vector3 target, );
/// Method [getInterpolation$1]
///
/// Parameters:
/// - point: Vector3
/// - v1: Vector2
/// - v2: Vector2
/// - v3: Vector2
/// - target: Vector2
@_i1.JS('getInterpolation') external Vector2? getInterpolation$1(Vector3 point, Vector2 v1, Vector2 v2, Vector2 v3, Vector2 target, );
/// Method [getInterpolation$2]
///
/// Parameters:
/// - point: Vector3
/// - v1: Vector3
/// - v2: Vector3
/// - v3: Vector3
/// - target: Vector3
@_i1.JS('getInterpolation') external Vector3? getInterpolation$2(Vector3 point, Vector3 v1, Vector3 v2, Vector3 v3, Vector3 target, );
/// Method [getInterpolation$3]
///
/// Parameters:
/// - point: Vector3
/// - v1: Vector4
/// - v2: Vector4
/// - v3: Vector4
/// - target: Vector4
@_i1.JS('getInterpolation') external Vector4? getInterpolation$3(Vector3 point, Vector4 v1, Vector4 v2, Vector4 v3, Vector4 target, );
/// Method [containsPoint$1]
///
/// Parameters:
/// - point: Vector3
@_i1.JS('containsPoint') external _i1.JSBoolean containsPoint$1(Vector3 point);
/// Method [intersectsBox]
///
/// Parameters:
/// - box: Box3
external _i1.JSBoolean intersectsBox(Box3 box);
/// Method [isFrontFacing$1]
///
/// Parameters:
/// - direction: Vector3
@_i1.JS('isFrontFacing') external _i1.JSBoolean isFrontFacing$1(Vector3 direction);
/// Method [closestPointToPoint]
///
/// Parameters:
/// - point: Vector3
/// - target: Vector3
external Vector3 closestPointToPoint(Vector3 point, Vector3 target, );
/// Method [equals]
///
/// Parameters:
/// - triangle: Triangle
external _i1.JSBoolean equals(Triangle triangle);
/// Method [getNormal$2]
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
/// - target: Vector3
@_i1.JS('getNormal') external static Vector3 getNormal$2(Vector3 a, Vector3 b, Vector3 c, Vector3 target, );
/// Method [getBarycoord$2]
///
/// Parameters:
/// - point: Vector3
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
/// - target: Vector3
@_i1.JS('getBarycoord') external static Vector3? getBarycoord$2(Vector3 point, Vector3 a, Vector3 b, Vector3 c, Vector3 target, );
/// Method [containsPoint$2]
///
/// Parameters:
/// - point: Vector3
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
@_i1.JS('containsPoint') external static _i1.JSBoolean containsPoint$2(Vector3 point, Vector3 a, Vector3 b, Vector3 c, );
/// Method [getInterpolation$4]
///
/// Parameters:
/// - point: Vector3
/// - p1: Vector3
/// - p2: Vector3
/// - p3: Vector3
/// - v1: Vector2
/// - v2: Vector2
/// - v3: Vector2
/// - target: Vector2
@_i1.JS('getInterpolation') external static Vector2? getInterpolation$4(Vector3 point, Vector3 p1, Vector3 p2, Vector3 p3, Vector2 v1, Vector2 v2, Vector2 v3, Vector2 target, );
/// Method [getInterpolation$5]
///
/// Parameters:
/// - point: Vector3
/// - p1: Vector3
/// - p2: Vector3
/// - p3: Vector3
/// - v1: Vector3
/// - v2: Vector3
/// - v3: Vector3
/// - target: Vector3
@_i1.JS('getInterpolation') external static Vector3? getInterpolation$5(Vector3 point, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 v1, Vector3 v2, Vector3 v3, Vector3 target, );
/// Method [getInterpolation$6]
///
/// Parameters:
/// - point: Vector3
/// - p1: Vector3
/// - p2: Vector3
/// - p3: Vector3
/// - v1: Vector4
/// - v2: Vector4
/// - v3: Vector4
/// - target: Vector4
@_i1.JS('getInterpolation') external static Vector4? getInterpolation$6(Vector3 point, Vector3 p1, Vector3 p2, Vector3 p3, Vector4 v1, Vector4 v2, Vector4 v3, Vector4 target, );
/// Method [getInterpolatedAttribute$1]
///
/// Parameters:
/// - attr: BufferAttribute | InterleavedBufferAttribute
/// - i1: number
/// - i2: number
/// - i3: number
/// - barycoord: Vector3
/// - target: Vector2
@_i1.JS('getInterpolatedAttribute') external static Vector2 getInterpolatedAttribute$1(_i1.JSAny attr, _i1.JSNumber i1, _i1.JSNumber i2, _i1.JSNumber i3, Vector3 barycoord, Vector2 target, );
/// Method [getInterpolatedAttribute$2]
///
/// Parameters:
/// - attr: BufferAttribute | InterleavedBufferAttribute
/// - i1: number
/// - i2: number
/// - i3: number
/// - barycoord: Vector3
/// - target: Vector3
@_i1.JS('getInterpolatedAttribute') external static Vector3 getInterpolatedAttribute$2(_i1.JSAny attr, _i1.JSNumber i1, _i1.JSNumber i2, _i1.JSNumber i3, Vector3 barycoord, Vector3 target, );
/// Method [getInterpolatedAttribute$3]
///
/// Parameters:
/// - attr: BufferAttribute | InterleavedBufferAttribute
/// - i1: number
/// - i2: number
/// - i3: number
/// - barycoord: Vector3
/// - target: Vector4
@_i1.JS('getInterpolatedAttribute') external static Vector4 getInterpolatedAttribute$3(_i1.JSAny attr, _i1.JSNumber i1, _i1.JSNumber i2, _i1.JSNumber i3, Vector3 barycoord, Vector4 target, );
/// Method [isFrontFacing$2]
///
/// Parameters:
/// - a: Vector3
/// - b: Vector3
/// - c: Vector3
/// - direction: Vector3
@_i1.JS('isFrontFacing') external static _i1.JSBoolean isFrontFacing$2(Vector3 a, Vector3 b, Vector3 c, Vector3 direction, );
}
/// Typedef [Vector2Tuple]
///
/// [, ]
typedef Vector2Tuple = _i1.JSArray<_i1.JSAny>;
/// Interface [Vector2Like]
extension type Vector2Like.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [x]
///
/// readonly x: number
external _i1.JSNumber get x;
/// Property [y]
///
/// readonly y: number
external _i1.JSNumber get y;
}
/// Class [Vector2]
extension type Vector2.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - x: number
/// - y: number
external Vector2([_i1.JSNumber x, _i1.JSNumber y, ]);

/// Property [x]
///
/// x: number
external _i1.JSNumber x;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [isVectortwo]
///
/// readonly isVectortwo: true
@_i1.JS('isVector2') external _i1.JSBoolean get isVectortwo;
/// Method [set]
///
/// Parameters:
/// - x: number
/// - y: number
external _i1.JSAny set(_i1.JSNumber x, _i1.JSNumber y, );
/// Method [setScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny setScalar(_i1.JSNumber scalar);
/// Method [setX]
///
/// Parameters:
/// - x: number
external _i1.JSAny setX(_i1.JSNumber x);
/// Method [setY]
///
/// Parameters:
/// - y: number
external _i1.JSAny setY(_i1.JSNumber y);
/// Method [setComponent]
///
/// Parameters:
/// - index: number
/// - value: number
external _i1.JSAny setComponent(_i1.JSNumber index, _i1.JSNumber value, );
/// Method [getComponent]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getComponent(_i1.JSNumber index);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny copy(Vector2Like v);
/// Method [add]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny add(Vector2Like v);
/// Method [addScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny addScalar(_i1.JSNumber s);
/// Method [addVectors]
///
/// Parameters:
/// - a: Vector2Like
/// - b: Vector2Like
external _i1.JSAny addVectors(Vector2Like a, Vector2Like b, );
/// Method [addScaledVector]
///
/// Parameters:
/// - v: Vector2Like
/// - s: number
external _i1.JSAny addScaledVector(Vector2Like v, _i1.JSNumber s, );
/// Method [sub]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny sub(Vector2Like v);
/// Method [subScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny subScalar(_i1.JSNumber s);
/// Method [subVectors]
///
/// Parameters:
/// - a: Vector2Like
/// - b: Vector2Like
external _i1.JSAny subVectors(Vector2Like a, Vector2Like b, );
/// Method [multiply]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny multiply(Vector2Like v);
/// Method [multiplyScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny multiplyScalar(_i1.JSNumber scalar);
/// Method [divide]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny divide(Vector2Like v);
/// Method [divideScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny divideScalar(_i1.JSNumber s);
/// Method [applyMatrix3]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyMatrix3(Matrix3 m);
/// Method [min]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny min(Vector2Like v);
/// Method [max]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSAny max(Vector2Like v);
/// Method [clamp]
///
/// Parameters:
/// - min: Vector2Like
/// - max: Vector2Like
external _i1.JSAny clamp(Vector2Like min, Vector2Like max, );
/// Method [clampScalar]
///
/// Parameters:
/// - min: number
/// - max: number
external _i1.JSAny clampScalar(_i1.JSNumber min, _i1.JSNumber max, );
/// Method [clampLength]
///
/// Parameters:
/// - min: number
/// - max: number
external _i1.JSAny clampLength(_i1.JSNumber min, _i1.JSNumber max, );
/// Method [floor]
external _i1.JSAny floor();
/// Method [ceil]
external _i1.JSAny ceil();
/// Method [round]
external _i1.JSAny round();
/// Method [roundToZero]
external _i1.JSAny roundToZero();
/// Method [negate]
external _i1.JSAny negate();
/// Method [dot]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSNumber dot(Vector2Like v);
/// Method [cross]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSNumber cross(Vector2Like v);
/// Method [lengthSq]
external _i1.JSNumber lengthSq();
/// Method [length]
external _i1.JSNumber length();
/// Method [manhattanLength]
external _i1.JSNumber manhattanLength();
/// Method [normalize]
external _i1.JSAny normalize();
/// Method [angle]
external _i1.JSNumber angle();
/// Method [angleTo]
///
/// Parameters:
/// - v: Vector2
external _i1.JSNumber angleTo(Vector2 v);
/// Method [distanceTo]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSNumber distanceTo(Vector2Like v);
/// Method [distanceToSquared]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSNumber distanceToSquared(Vector2Like v);
/// Method [manhattanDistanceTo]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSNumber manhattanDistanceTo(Vector2Like v);
/// Method [setLength]
///
/// Parameters:
/// - length: number
external _i1.JSAny setLength(_i1.JSNumber length);
/// Method [lerp]
///
/// Parameters:
/// - v: Vector2Like
/// - alpha: number
external _i1.JSAny lerp(Vector2Like v, _i1.JSNumber alpha, );
/// Method [lerpVectors]
///
/// Parameters:
/// - v1: Vector2Like
/// - v2: Vector2Like
/// - alpha: number
external _i1.JSAny lerpVectors(Vector2Like v1, Vector2Like v2, _i1.JSNumber alpha, );
/// Method [equals]
///
/// Parameters:
/// - v: Vector2Like
external _i1.JSBoolean equals(Vector2Like v);
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - array: Vector2Tuple
/// - offset: 0
@_i1.JS('toArray') external Vector2Tuple toArray$2([Vector2Tuple array, _i1.JSNumber offset, ]);
/// Method [toArray$3]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$3(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [fromBufferAttribute]
///
/// Parameters:
/// - attribute: BufferAttribute
/// - index: number
external _i1.JSAny fromBufferAttribute(BufferAttribute attribute, _i1.JSNumber index, );
/// Method [rotateAround]
///
/// Parameters:
/// - center: Vector2Like
/// - angle: number
external _i1.JSAny rotateAround(Vector2Like center, _i1.JSNumber angle, );
/// Method [random]
external _i1.JSAny random();
}
/// Typedef [Vector3Tuple]
///
/// [number, number, number]
typedef Vector3Tuple = _i1.JSArray<_i1.JSAny>;
/// Interface [Vector3Like]
extension type Vector3Like.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [x]
///
/// readonly x: number
external _i1.JSNumber get x;
/// Property [y]
///
/// readonly y: number
external _i1.JSNumber get y;
/// Property [z]
///
/// readonly z: number
external _i1.JSNumber get z;
}
/// Class [Vector3]
extension type Vector3.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external Vector3([_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, ]);

/// Property [x]
///
/// x: number
external _i1.JSNumber x;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

/// Property [isVectorthree]
///
/// readonly isVectorthree: true
@_i1.JS('isVector3') external _i1.JSBoolean get isVectorthree;
/// Method [set]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
external _i1.JSAny set(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, );
/// Method [setScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny setScalar(_i1.JSNumber scalar);
/// Method [setX]
///
/// Parameters:
/// - x: number
external _i1.JSAny setX(_i1.JSNumber x);
/// Method [setY]
///
/// Parameters:
/// - y: number
external _i1.JSAny setY(_i1.JSNumber y);
/// Method [setZ]
///
/// Parameters:
/// - z: number
external _i1.JSAny setZ(_i1.JSNumber z);
/// Method [setComponent]
///
/// Parameters:
/// - index: number
/// - value: number
external _i1.JSAny setComponent(_i1.JSNumber index, _i1.JSNumber value, );
/// Method [getComponent]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getComponent(_i1.JSNumber index);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny copy(Vector3Like v);
/// Method [add]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny add(Vector3Like v);
/// Method [addScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny addScalar(_i1.JSNumber s);
/// Method [addVectors]
///
/// Parameters:
/// - a: Vector3Like
/// - b: Vector3Like
external _i1.JSAny addVectors(Vector3Like a, Vector3Like b, );
/// Method [addScaledVector]
///
/// Parameters:
/// - v: Vector3Like
/// - s: number
external _i1.JSAny addScaledVector(Vector3Like v, _i1.JSNumber s, );
/// Method [sub]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny sub(Vector3Like v);
/// Method [subScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny subScalar(_i1.JSNumber s);
/// Method [subVectors]
///
/// Parameters:
/// - a: Vector3Like
/// - b: Vector3Like
external _i1.JSAny subVectors(Vector3Like a, Vector3Like b, );
/// Method [multiply]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny multiply(Vector3Like v);
/// Method [multiplyScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny multiplyScalar(_i1.JSNumber s);
/// Method [multiplyVectors]
///
/// Parameters:
/// - a: Vector3Like
/// - b: Vector3Like
external _i1.JSAny multiplyVectors(Vector3Like a, Vector3Like b, );
/// Method [applyEuler]
///
/// Parameters:
/// - euler: Euler
external _i1.JSAny applyEuler(Euler euler);
/// Method [applyAxisAngle]
///
/// Parameters:
/// - axis: Vector3Like
/// - angle: number
external _i1.JSAny applyAxisAngle(Vector3Like axis, _i1.JSNumber angle, );
/// Method [applyMatrix3]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyMatrix3(Matrix3 m);
/// Method [applyNormalMatrix]
///
/// Parameters:
/// - m: Matrix3
external _i1.JSAny applyNormalMatrix(Matrix3 m);
/// Method [applyMatrix4]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 m);
/// Method [applyQuaternion]
///
/// Parameters:
/// - q: QuaternionLike
external _i1.JSAny applyQuaternion(QuaternionLike q);
/// Method [project]
///
/// Parameters:
/// - camera: Camera
external _i1.JSAny project(Camera camera);
/// Method [unproject]
///
/// Parameters:
/// - camera: Camera
external _i1.JSAny unproject(Camera camera);
/// Method [transformDirection]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny transformDirection(Matrix4 m);
/// Method [divide]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny divide(Vector3Like v);
/// Method [divideScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny divideScalar(_i1.JSNumber s);
/// Method [min]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny min(Vector3Like v);
/// Method [max]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny max(Vector3Like v);
/// Method [clamp]
///
/// Parameters:
/// - min: Vector3Like
/// - max: Vector3Like
external _i1.JSAny clamp(Vector3Like min, Vector3Like max, );
/// Method [clampScalar]
///
/// Parameters:
/// - min: number
/// - max: number
external _i1.JSAny clampScalar(_i1.JSNumber min, _i1.JSNumber max, );
/// Method [clampLength]
///
/// Parameters:
/// - min: number
/// - max: number
external _i1.JSAny clampLength(_i1.JSNumber min, _i1.JSNumber max, );
/// Method [floor]
external _i1.JSAny floor();
/// Method [ceil]
external _i1.JSAny ceil();
/// Method [round]
external _i1.JSAny round();
/// Method [roundToZero]
external _i1.JSAny roundToZero();
/// Method [negate]
external _i1.JSAny negate();
/// Method [dot]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSNumber dot(Vector3Like v);
/// Method [lengthSq]
external _i1.JSNumber lengthSq();
/// Method [length]
external _i1.JSNumber length();
/// Method [manhattanLength]
external _i1.JSNumber manhattanLength();
/// Method [normalize]
external _i1.JSAny normalize();
/// Method [setLength]
///
/// Parameters:
/// - l: number
external _i1.JSAny setLength(_i1.JSNumber l);
/// Method [lerp]
///
/// Parameters:
/// - v: Vector3Like
/// - alpha: number
external _i1.JSAny lerp(Vector3Like v, _i1.JSNumber alpha, );
/// Method [lerpVectors]
///
/// Parameters:
/// - v1: Vector3Like
/// - v2: Vector3Like
/// - alpha: number
external _i1.JSAny lerpVectors(Vector3Like v1, Vector3Like v2, _i1.JSNumber alpha, );
/// Method [cross]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSAny cross(Vector3Like v);
/// Method [crossVectors]
///
/// Parameters:
/// - a: Vector3Like
/// - b: Vector3Like
external _i1.JSAny crossVectors(Vector3Like a, Vector3Like b, );
/// Method [projectOnVector]
///
/// Parameters:
/// - v: Vector3
external _i1.JSAny projectOnVector(Vector3 v);
/// Method [projectOnPlane]
///
/// Parameters:
/// - planeNormal: Vector3
external _i1.JSAny projectOnPlane(Vector3 planeNormal);
/// Method [reflect]
///
/// Parameters:
/// - vector: Vector3Like
external _i1.JSAny reflect(Vector3Like vector);
/// Method [angleTo]
///
/// Parameters:
/// - v: Vector3
external _i1.JSNumber angleTo(Vector3 v);
/// Method [distanceTo]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSNumber distanceTo(Vector3Like v);
/// Method [distanceToSquared]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSNumber distanceToSquared(Vector3Like v);
/// Method [manhattanDistanceTo]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSNumber manhattanDistanceTo(Vector3Like v);
/// Method [setFromSpherical]
///
/// Parameters:
/// - s: Spherical
external _i1.JSAny setFromSpherical(Spherical s);
/// Method [setFromSphericalCoords]
///
/// Parameters:
/// - r: number
/// - phi: number
/// - theta: number
external _i1.JSAny setFromSphericalCoords(_i1.JSNumber r, _i1.JSNumber phi, _i1.JSNumber theta, );
/// Method [setFromCylindrical]
///
/// Parameters:
/// - s: Cylindrical
external _i1.JSAny setFromCylindrical(Cylindrical s);
/// Method [setFromCylindricalCoords]
///
/// Parameters:
/// - radius: number
/// - theta: number
/// - y: number
external _i1.JSAny setFromCylindricalCoords(_i1.JSNumber radius, _i1.JSNumber theta, _i1.JSNumber y, );
/// Method [setFromMatrixPosition]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny setFromMatrixPosition(Matrix4 m);
/// Method [setFromMatrixScale]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny setFromMatrixScale(Matrix4 m);
/// Method [setFromMatrixColumn]
///
/// Parameters:
/// - matrix: Matrix4
/// - index: number
external _i1.JSAny setFromMatrixColumn(Matrix4 matrix, _i1.JSNumber index, );
/// Method [setFromMatrix3Column]
///
/// Parameters:
/// - matrix: Matrix3
/// - index: number
external _i1.JSAny setFromMatrix3Column(Matrix3 matrix, _i1.JSNumber index, );
/// Method [setFromEuler]
///
/// Parameters:
/// - e: Euler
external _i1.JSAny setFromEuler(Euler e);
/// Method [setFromColor]
///
/// Parameters:
/// - color: RGB
external _i1.JSAny setFromColor(RGB color);
/// Method [equals]
///
/// Parameters:
/// - v: Vector3Like
external _i1.JSBoolean equals(Vector3Like v);
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - array: Vector3Tuple
/// - offset: 0
@_i1.JS('toArray') external Vector3Tuple toArray$2([Vector3Tuple array, _i1.JSNumber offset, ]);
/// Method [toArray$3]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$3(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [fromBufferAttribute]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute
/// - index: number
external _i1.JSAny fromBufferAttribute(_i1.JSAny attribute, _i1.JSNumber index, );
/// Method [random]
external _i1.JSAny random();
/// Method [randomDirection]
external _i1.JSAny randomDirection();
}
/// Typedef [Vector4Tuple]
///
/// [number, number, number, number]
typedef Vector4Tuple = _i1.JSArray<_i1.JSAny>;
/// Interface [Vector4Like]
extension type Vector4Like.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [x]
///
/// readonly x: number
external _i1.JSNumber get x;
/// Property [y]
///
/// readonly y: number
external _i1.JSNumber get y;
/// Property [z]
///
/// readonly z: number
external _i1.JSNumber get z;
/// Property [w]
///
/// readonly w: number
external _i1.JSNumber get w;
}
/// Class [Vector4]
extension type Vector4.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external Vector4([_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, ]);

/// Property [x]
///
/// x: number
external _i1.JSNumber x;

/// Property [y]
///
/// y: number
external _i1.JSNumber y;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

/// Property [w]
///
/// w: number
external _i1.JSNumber w;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [isVectorfour]
///
/// readonly isVectorfour: true
@_i1.JS('isVector4') external _i1.JSBoolean get isVectorfour;
/// Method [set]
///
/// Parameters:
/// - x: number
/// - y: number
/// - z: number
/// - w: number
external _i1.JSAny set(_i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber z, _i1.JSNumber w, );
/// Method [setScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny setScalar(_i1.JSNumber scalar);
/// Method [setX]
///
/// Parameters:
/// - x: number
external _i1.JSAny setX(_i1.JSNumber x);
/// Method [setY]
///
/// Parameters:
/// - y: number
external _i1.JSAny setY(_i1.JSNumber y);
/// Method [setZ]
///
/// Parameters:
/// - z: number
external _i1.JSAny setZ(_i1.JSNumber z);
/// Method [setW]
///
/// Parameters:
/// - w: number
external _i1.JSAny setW(_i1.JSNumber w);
/// Method [setComponent]
///
/// Parameters:
/// - index: number
/// - value: number
external _i1.JSAny setComponent(_i1.JSNumber index, _i1.JSNumber value, );
/// Method [getComponent]
///
/// Parameters:
/// - index: number
external _i1.JSNumber getComponent(_i1.JSNumber index);
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny copy(Vector4Like v);
/// Method [add]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny add(Vector4Like v);
/// Method [addScalar]
///
/// Parameters:
/// - scalar: number
external _i1.JSAny addScalar(_i1.JSNumber scalar);
/// Method [addVectors]
///
/// Parameters:
/// - a: Vector4Like
/// - b: Vector4Like
external _i1.JSAny addVectors(Vector4Like a, Vector4Like b, );
/// Method [addScaledVector]
///
/// Parameters:
/// - v: Vector4Like
/// - s: number
external _i1.JSAny addScaledVector(Vector4Like v, _i1.JSNumber s, );
/// Method [sub]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny sub(Vector4Like v);
/// Method [subScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny subScalar(_i1.JSNumber s);
/// Method [subVectors]
///
/// Parameters:
/// - a: Vector4Like
/// - b: Vector4Like
external _i1.JSAny subVectors(Vector4Like a, Vector4Like b, );
/// Method [multiply]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny multiply(Vector4Like v);
/// Method [multiplyScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny multiplyScalar(_i1.JSNumber s);
/// Method [applyMatrix4]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny applyMatrix4(Matrix4 m);
/// Method [divide]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny divide(Vector4Like v);
/// Method [divideScalar]
///
/// Parameters:
/// - s: number
external _i1.JSAny divideScalar(_i1.JSNumber s);
/// Method [setAxisAngleFromQuaternion]
///
/// Parameters:
/// - q: QuaternionLike
external _i1.JSAny setAxisAngleFromQuaternion(QuaternionLike q);
/// Method [setAxisAngleFromRotationMatrix]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny setAxisAngleFromRotationMatrix(Matrix4 m);
/// Method [setFromMatrixPosition]
///
/// Parameters:
/// - m: Matrix4
external _i1.JSAny setFromMatrixPosition(Matrix4 m);
/// Method [min]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny min(Vector4Like v);
/// Method [max]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSAny max(Vector4Like v);
/// Method [clamp]
///
/// Parameters:
/// - min: Vector4Like
/// - max: Vector4Like
external _i1.JSAny clamp(Vector4Like min, Vector4Like max, );
/// Method [clampScalar]
///
/// Parameters:
/// - min: number
/// - max: number
external _i1.JSAny clampScalar(_i1.JSNumber min, _i1.JSNumber max, );
/// Method [floor]
external _i1.JSAny floor();
/// Method [ceil]
external _i1.JSAny ceil();
/// Method [round]
external _i1.JSAny round();
/// Method [roundToZero]
external _i1.JSAny roundToZero();
/// Method [negate]
external _i1.JSAny negate();
/// Method [dot]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSNumber dot(Vector4Like v);
/// Method [lengthSq]
external _i1.JSNumber lengthSq();
/// Method [length]
external _i1.JSNumber length();
/// Method [manhattanLength]
external _i1.JSNumber manhattanLength();
/// Method [normalize]
external _i1.JSAny normalize();
/// Method [setLength]
///
/// Parameters:
/// - length: number
external _i1.JSAny setLength(_i1.JSNumber length);
/// Method [lerp]
///
/// Parameters:
/// - v: Vector4Like
/// - alpha: number
external _i1.JSAny lerp(Vector4Like v, _i1.JSNumber alpha, );
/// Method [lerpVectors]
///
/// Parameters:
/// - v1: Vector4Like
/// - v2: Vector4Like
/// - alpha: number
external _i1.JSAny lerpVectors(Vector4Like v1, Vector4Like v2, _i1.JSNumber alpha, );
/// Method [equals]
///
/// Parameters:
/// - v: Vector4Like
external _i1.JSBoolean equals(Vector4Like v);
/// Method [fromArray]
///
/// Parameters:
/// - array: number[] | ArrayLike
/// - offset: number
external _i1.JSAny fromArray(_i1.JSAny array, [_i1.JSNumber offset, ]);
/// Method [toArray$1]
///
/// Parameters:
/// - array: number[]
/// - offset: number
@_i1.JS('toArray') external _i1.JSArray<_i1.JSNumber> toArray$1([_i1.JSArray<_i1.JSNumber> array, _i1.JSNumber offset, ]);
/// Method [toArray$2]
///
/// Parameters:
/// - array: Vector4Tuple
/// - offset: 0
@_i1.JS('toArray') external Vector4Tuple toArray$2([Vector4Tuple array, _i1.JSNumber offset, ]);
/// Method [toArray$3]
///
/// Parameters:
/// - array: ArrayLike
/// - offset: number
@_i1.JS('toArray') external _i2.ArrayLike<_i1.JSNumber> toArray$3(_i2.ArrayLike<_i1.JSNumber> array, [_i1.JSNumber offset, ]);
/// Method [fromBufferAttribute]
///
/// Parameters:
/// - attribute: BufferAttribute
/// - index: number
external _i1.JSAny fromBufferAttribute(BufferAttribute attribute, _i1.JSNumber index, );
/// Method [random]
external _i1.JSAny random();
}
/// Interface [BatchedMeshGeometryRange]
extension type BatchedMeshGeometryRange.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [vertexStart]
///
/// vertexStart: number
external _i1.JSNumber vertexStart;

/// Property [vertexCount]
///
/// vertexCount: number
external _i1.JSNumber vertexCount;

/// Property [reservedVertexCount]
///
/// reservedVertexCount: number
external _i1.JSNumber reservedVertexCount;

/// Property [indexStart]
///
/// indexStart: number
external _i1.JSNumber indexStart;

/// Property [indexCount]
///
/// indexCount: number
external _i1.JSNumber indexCount;

/// Property [reservedIndexCount]
///
/// reservedIndexCount: number
external _i1.JSNumber reservedIndexCount;

/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

}
/// Class [BatchedMesh]
extension type BatchedMesh.$(_i1.JSObject _) implements _i1.JSObject,Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,Material,Object3DEventMap> {
/// Constructor
///
/// Parameters:
/// - maxInstanceCount: number
/// - maxVertexCount: number
/// - maxIndexCount: number
/// - material: Material
external BatchedMesh(_i1.JSNumber maxInstanceCount, _i1.JSNumber maxVertexCount, [_i1.JSNumber maxIndexCount, Material material, ]);

/// Property [boundingBox]
///
/// boundingBox: Box3 | null
external Box3 boundingBox;

/// Property [boundingSphere]
///
/// boundingSphere: Sphere | null
external Sphere boundingSphere;

/// Property [customSort]
///
/// customSort: ((this: , list: Array, camera: Camera) => void) | null
external _i1.JSFunction customSort;

/// Property [perObjectFrustumCulled]
///
/// perObjectFrustumCulled: boolean
external _i1.JSBoolean perObjectFrustumCulled;

/// Property [sortObjects]
///
/// sortObjects: boolean
external _i1.JSBoolean sortObjects;

/// Get Accessor [maxInstanceCount]
///
/// maxInstanceCount
external _i1.JSNumber get maxInstanceCount;
/// Get Accessor [instanceCount]
///
/// instanceCount
external _i1.JSNumber get instanceCount;
/// Get Accessor [unusedVertexCount]
///
/// unusedVertexCount
external _i1.JSNumber get unusedVertexCount;
/// Get Accessor [unusedIndexCount]
///
/// unusedIndexCount
external _i1.JSNumber get unusedIndexCount;
/// Property [isBatchedMesh]
///
/// readonly isBatchedMesh: true
external _i1.JSBoolean get isBatchedMesh;
/// Method [computeBoundingBox]
external void computeBoundingBox();
/// Method [computeBoundingSphere]
external void computeBoundingSphere();
/// Method [dispose]
external _i1.JSAny dispose();
/// Method [setCustomSort]
///
/// Parameters:
/// - sortFunction: ((this: , list: Array, camera: Camera) => void) | null
external _i1.JSAny setCustomSort(_i1.JSFunction? sortFunction);
/// Method [getColorAt]
///
/// Parameters:
/// - instanceId: number
/// - color: Color | Vector4
external _i1.JSAny getColorAt(_i1.JSNumber instanceId, _i1.JSAny color, );
/// Method [getMatrixAt]
///
/// Parameters:
/// - instanceId: number
/// - target: Matrix4
external Matrix4 getMatrixAt(_i1.JSNumber instanceId, Matrix4 target, );
/// Method [getVisibleAt]
///
/// Parameters:
/// - instanceId: number
external _i1.JSBoolean getVisibleAt(_i1.JSNumber instanceId);
/// Method [getGeometryRangeAt]
///
/// Parameters:
/// - geometryId: number
/// - target: BatchedMeshGeometryRange
external BatchedMeshGeometryRange? getGeometryRangeAt(_i1.JSNumber geometryId, [BatchedMeshGeometryRange target, ]);
/// Method [getGeometryIdAt]
///
/// Parameters:
/// - instanceId: number
external _i1.JSNumber getGeometryIdAt(_i1.JSNumber instanceId);
/// Method [setColorAt]
///
/// Parameters:
/// - instanceId: number
/// - color: Color | Vector4
external void setColorAt(_i1.JSNumber instanceId, _i1.JSAny color, );
/// Method [setMatrixAt]
///
/// Parameters:
/// - instanceId: number
/// - matrix: Matrix4
external _i1.JSAny setMatrixAt(_i1.JSNumber instanceId, Matrix4 matrix, );
/// Method [setVisibleAt]
///
/// Parameters:
/// - instanceId: number
/// - visible: boolean
external _i1.JSAny setVisibleAt(_i1.JSNumber instanceId, _i1.JSBoolean visible, );
/// Method [setGeometryIdAt]
///
/// Parameters:
/// - instanceId: number
/// - geometryId: number
external _i1.JSAny setGeometryIdAt(_i1.JSNumber instanceId, _i1.JSNumber geometryId, );
/// Method [addGeometry]
///
/// Parameters:
/// - geometry: BufferGeometry
/// - reservedVertexRange: number
/// - reservedIndexRange: number
external _i1.JSNumber addGeometry(BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, [_i1.JSNumber reservedVertexRange, _i1.JSNumber reservedIndexRange, ]);
/// Method [addInstance]
///
/// Parameters:
/// - geometryId: number
external _i1.JSNumber addInstance(_i1.JSNumber geometryId);
/// Method [deleteGeometry]
///
/// Parameters:
/// - geometryId: number
external _i1.JSAny deleteGeometry(_i1.JSNumber geometryId);
/// Method [deleteInstance]
///
/// Parameters:
/// - instanceId: number
external _i1.JSAny deleteInstance(_i1.JSNumber instanceId);
/// Method [setGeometryAt]
///
/// Parameters:
/// - geometryId: number
/// - geometry: BufferGeometry
external _i1.JSNumber setGeometryAt(_i1.JSNumber geometryId, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, );
/// Method [optimize]
external _i1.JSAny optimize();
/// Method [setGeometrySize]
///
/// Parameters:
/// - maxVertexCount: number
/// - maxIndexCount: number
external void setGeometrySize(_i1.JSNumber maxVertexCount, _i1.JSNumber maxIndexCount, );
/// Method [setInstanceCount]
///
/// Parameters:
/// - maxInstanceCount: number
external void setInstanceCount(_i1.JSNumber maxInstanceCount);
/// Method [getBoundingBoxAt]
///
/// Parameters:
/// - geometryId: number
/// - target: Box3
external Box3? getBoundingBoxAt(_i1.JSNumber geometryId, Box3 target, );
/// Method [getBoundingSphereAt]
///
/// Parameters:
/// - geometryId: number
/// - target: Sphere
external Sphere? getBoundingSphereAt(_i1.JSNumber geometryId, Sphere target, );
}
/// Interface [BatchedMesh$CustomSort$List$TypeLiteral]
extension type BatchedMesh$CustomSort$List$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

}
/// Interface [BatchedMesh$SetCustomSort$SortFunction$List$TypeLiteral]
extension type BatchedMesh$SetCustomSort$SortFunction$List$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

}
/// Class [Bone]
extension type Bone<TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
external Bone();

/// Property [isBone]
///
/// readonly isBone: true
external _i1.JSBoolean get isBone;
/// Property [type]
///
/// override readonly type: string | "Bone"
external _i1.JSString get type;
}
/// Class [Group]
extension type Group<TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
external Group();

/// Property [isGroup]
///
/// readonly isGroup: true
external _i1.JSBoolean get isGroup;
}
/// Interface [InstancedMeshJSONObject]
extension type InstancedMeshJSONObject.$(_i1.JSObject _) implements MeshJSONObject {
/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [instanceMatrix]
///
/// instanceMatrix: BufferAttributeJSON
external BufferAttributeJSON instanceMatrix;

/// Property [instanceColor]
///
/// instanceColor?: BufferAttributeJSON
external BufferAttributeJSON? instanceColor;

}
/// Interface [InstancedMeshJSON]
extension type InstancedMeshJSON.$(_i1.JSObject _) implements MeshJSONObject {
/// Property [object]
///
/// object: InstancedMeshJSONObject
external InstancedMeshJSONObject object;

}
/// Interface [InstancedMeshEventMap]
extension type InstancedMeshEventMap.$(_i1.JSObject _) implements Object3DEventMap {
/// Property [dispose]
///
/// dispose: InstancedMeshEventMap$Dispose$TypeLiteral
external InstancedMeshEventMap$Dispose$TypeLiteral dispose;

}
/// Class [InstancedMesh]
extension type InstancedMesh<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends InstancedMeshEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Mesh<TGeometry,TMaterial,TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry | undefined
/// - material: TMaterial | undefined
/// - count: number
external InstancedMesh(TGeometry? geometry, TMaterial? material, _i1.JSNumber count, );

/// Property [instanceMatrix]
///
/// instanceMatrix: InstancedBufferAttribute
external InstancedBufferAttribute instanceMatrix;

/// Property [previousInstancedMatrix]
///
/// previousInstancedMatrix: InstancedBufferAttribute | null
external InstancedBufferAttribute previousInstancedMatrix;

/// Property [instanceColor]
///
/// instanceColor: InstancedBufferAttribute | null
external InstancedBufferAttribute instanceColor;

/// Property [morphTexture]
///
/// morphTexture: DataTexture | null
external DataTexture morphTexture;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [boundingBox]
///
/// boundingBox: Box3 | null
external Box3 boundingBox;

/// Property [boundingSphere]
///
/// boundingSphere: Sphere | null
external Sphere boundingSphere;

/// Property [isInstancedMesh]
///
/// readonly isInstancedMesh: true
external _i1.JSBoolean get isInstancedMesh;
/// Method [computeBoundingBox]
external void computeBoundingBox();
/// Method [computeBoundingSphere]
external void computeBoundingSphere();
/// Method [getColorAt]
///
/// Parameters:
/// - index: number
/// - color: Color
external void getColorAt(_i1.JSNumber index, Color color, );
/// Method [setColorAt]
///
/// Parameters:
/// - index: number
/// - color: Color
external void setColorAt(_i1.JSNumber index, Color color, );
/// Method [getMatrixAt]
///
/// Parameters:
/// - index: number
/// - matrix: Matrix4
external void getMatrixAt(_i1.JSNumber index, Matrix4 matrix, );
/// Method [getMorphAt]
///
/// Parameters:
/// - index: number
/// - mesh: Mesh
external void getMorphAt(_i1.JSNumber index, Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> mesh, );
/// Method [setMatrixAt]
///
/// Parameters:
/// - index: number
/// - matrix: Matrix4
external void setMatrixAt(_i1.JSNumber index, Matrix4 matrix, );
/// Method [setMorphAt]
///
/// Parameters:
/// - index: number
/// - mesh: Mesh
external void setMorphAt(_i1.JSNumber index, Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> mesh, );
/// Method [updateMorphTargets]
external void updateMorphTargets();
/// Method [dispose]
external _i1.JSAny dispose();
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external InstancedMeshJSON toJSON([JSONMeta meta]);
}
/// Interface [InstancedMeshEventMap$Dispose$TypeLiteral]
extension type InstancedMeshEventMap$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [Line]
extension type Line<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
external Line([TGeometry geometry, TMaterial material, ]);

/// Property [geometry]
///
/// geometry: TGeometry
external TGeometry geometry;

/// Property [material]
///
/// material: TMaterial
external TMaterial material;

/// Property [morphTargetInfluences]
///
/// morphTargetInfluences?: number[] | undefined
external _i1.JSArray<_i1.JSNumber>? morphTargetInfluences;

/// Property [morphTargetDictionary]
///
/// morphTargetDictionary?: Line$MorphTargetDictionary$TypeLiteral | undefined
external Line$MorphTargetDictionary$TypeLiteral? morphTargetDictionary;

/// Property [isLine]
///
/// readonly isLine: true
external _i1.JSBoolean get isLine;
/// Property [type]
///
/// override readonly type: string | "Line"
external _i1.JSString get type;
/// Method [computeLineDistances]
external _i1.JSAny computeLineDistances();
/// Method [updateMorphTargets]
external void updateMorphTargets();
}
/// Interface [Line$MorphTargetDictionary$TypeLiteral]
extension type Line$MorphTargetDictionary$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSNumber value, );
external _i1.JSNumber operator [](_i1.JSString key);
}
/// Class [LineLoop]
extension type LineLoop<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Line<TGeometry,TMaterial,TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
external LineLoop([TGeometry geometry, TMaterial material, ]);

/// Property [isLineLoop]
///
/// readonly isLineLoop: true
external _i1.JSBoolean get isLineLoop;
/// Property [type]
///
/// override readonly type: string | "LineLoop"
external _i1.JSString get type;
}
/// Class [LineSegments]
extension type LineSegments<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Line<TGeometry,TMaterial,TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
external LineSegments([TGeometry geometry, TMaterial material, ]);

/// Property [isLineSegments]
///
/// readonly isLineSegments: true
external _i1.JSBoolean get isLineSegments;
/// Property [type]
///
/// override readonly type: string | "LineSegments"
external _i1.JSString get type;
}
/// Interface [LODJSONObject]
extension type LODJSONObject.$(_i1.JSObject _) implements Object3DJSONObject {
/// Property [autoUpdate]
///
/// autoUpdate?: boolean
external _i1.JSBoolean? autoUpdate;

/// Property [levels]
///
/// levels: Array
external _i2.Array<LODJSONObject$Levels$TypeLiteral> levels;

}
/// Interface [LODJSON]
extension type LODJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [object]
///
/// object: LODJSONObject
external LODJSONObject object;

}
/// Class [LOD]
extension type LOD<TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
external LOD();

/// Property [autoUpdate]
///
/// autoUpdate: boolean
external _i1.JSBoolean autoUpdate;

/// Property [isLOD]
///
/// readonly isLOD: true
external _i1.JSBoolean get isLOD;
/// Property [type]
///
/// override readonly type: string | "LOD"
external _i1.JSString get type;
/// Property [levels]
///
/// readonly levels: Array
external _i2.Array<LOD$Levels$TypeLiteral> get levels;
/// Method [addLevel]
///
/// Parameters:
/// - object: Object3D
/// - distance: number
/// - hysteresis: number
external _i1.JSAny addLevel(Object3D<Object3DEventMap> object, [_i1.JSNumber distance, _i1.JSNumber hysteresis, ]);
/// Method [removeLevel]
///
/// Parameters:
/// - distance: number
external _i1.JSBoolean removeLevel(_i1.JSNumber distance);
/// Method [getCurrentLevel]
external _i1.JSNumber getCurrentLevel();
/// Method [getObjectForDistance]
///
/// Parameters:
/// - distance: number
external Object3D<Object3DEventMap>? getObjectForDistance(_i1.JSNumber distance);
/// Method [update]
///
/// Parameters:
/// - camera: Camera
external void update(Camera camera);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external LODJSON toJSON([JSONMeta meta]);
}
/// Interface [LODJSONObject$Levels$TypeLiteral]
extension type LODJSONObject$Levels$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [object]
///
/// object: string
external _i1.JSString object;

/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [hysteresis]
///
/// hysteresis: number
external _i1.JSNumber hysteresis;

}
/// Interface [LOD$Levels$TypeLiteral]
extension type LOD$Levels$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [object]
///
/// object: Object3D
external Object3D<Object3DEventMap> object;

/// Property [distance]
///
/// distance: number
external _i1.JSNumber distance;

/// Property [hysteresis]
///
/// hysteresis: number
external _i1.JSNumber hysteresis;

}
/// Interface [MeshJSONObject]
extension type MeshJSONObject.$(_i1.JSObject _) implements Object3DJSONObject {
/// Property [geometry]
///
/// geometry: string
external _i1.JSString geometry;

}
/// Interface [MeshJSON]
extension type MeshJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [object]
///
/// object: MeshJSONObject
external MeshJSONObject object;

}
/// Class [Mesh]
extension type Mesh<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
external Mesh([TGeometry geometry, TMaterial material, ]);

/// Property [geometry]
///
/// geometry: TGeometry
external TGeometry geometry;

/// Property [material]
///
/// material: TMaterial
external TMaterial material;

/// Property [morphTargetInfluences]
///
/// morphTargetInfluences?: number[] | undefined
external _i1.JSArray<_i1.JSNumber>? morphTargetInfluences;

/// Property [morphTargetDictionary]
///
/// morphTargetDictionary?: Mesh$MorphTargetDictionary$TypeLiteral | undefined
external Mesh$MorphTargetDictionary$TypeLiteral? morphTargetDictionary;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [isMesh]
///
/// readonly isMesh: true
external _i1.JSBoolean get isMesh;
/// Property [type]
///
/// override readonly type: string | "Mesh"
external _i1.JSString get type;
/// Method [updateMorphTargets]
external void updateMorphTargets();
/// Method [getVertexPosition]
///
/// Parameters:
/// - index: number
/// - target: Vector3
external Vector3 getVertexPosition(_i1.JSNumber index, Vector3 target, );
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external MeshJSON toJSON([JSONMeta meta]);
}
/// Interface [Mesh$MorphTargetDictionary$TypeLiteral]
extension type Mesh$MorphTargetDictionary$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSNumber value, );
external _i1.JSNumber operator [](_i1.JSString key);
}
/// Class [Points]
extension type Points<TGeometry extends BufferGeometry<NormalOrGLBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
external Points([TGeometry geometry, TMaterial material, ]);

/// Property [morphTargetInfluences]
///
/// morphTargetInfluences?: number[] | undefined
external _i1.JSArray<_i1.JSNumber>? morphTargetInfluences;

/// Property [morphTargetDictionary]
///
/// morphTargetDictionary?: Points$MorphTargetDictionary$TypeLiteral | undefined
external Points$MorphTargetDictionary$TypeLiteral? morphTargetDictionary;

/// Property [geometry]
///
/// geometry: TGeometry
external TGeometry geometry;

/// Property [material]
///
/// material: TMaterial
external TMaterial material;

/// Property [isPoints]
///
/// readonly isPoints: true
external _i1.JSBoolean get isPoints;
/// Property [type]
///
/// override readonly type: string | "Points"
external _i1.JSString get type;
/// Method [updateMorphTargets]
external void updateMorphTargets();
}
/// Interface [Points$MorphTargetDictionary$TypeLiteral]
extension type Points$MorphTargetDictionary$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString key, _i1.JSNumber value, );
external _i1.JSNumber operator [](_i1.JSString key);
}
/// Interface [SkeletonJSON]
extension type SkeletonJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata: SkeletonJSON$Metadata$TypeLiteral
external SkeletonJSON$Metadata$TypeLiteral metadata;

/// Property [bones]
///
/// bones: string[]
external _i1.JSArray<_i1.JSString> bones;

/// Property [boneInverses]
///
/// boneInverses: Matrix4Tuple[]
external _i1.JSArray<Matrix4Tuple> boneInverses;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

}
/// Class [Skeleton]
extension type Skeleton.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - bones: Bone[]
/// - boneInverses: Matrix4[]
external Skeleton([_i1.JSArray<Bone<Object3DEventMap>> bones, _i1.JSArray<Matrix4> boneInverses, ]);

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [bones]
///
/// bones: Bone[]
external _i1.JSArray<Bone<Object3DEventMap>> bones;

/// Property [boneInverses]
///
/// boneInverses: Matrix4[]
external _i1.JSArray<Matrix4> boneInverses;

/// Property [boneMatrices]
///
/// boneMatrices: Float32Array | null
external _i1.JSFloat32Array boneMatrices;

/// Property [previousBoneMatrices]
///
/// previousBoneMatrices: Float32Array | null
external _i1.JSFloat32Array previousBoneMatrices;

/// Property [boneTexture]
///
/// boneTexture: DataTexture | null
external DataTexture boneTexture;

/// Property [frame]
///
/// frame: number
external _i1.JSNumber frame;

/// Method [init]
external void init();
/// Method [calculateInverses]
external void calculateInverses();
/// Method [computeBoneTexture]
external _i1.JSAny computeBoneTexture();
/// Method [pose]
external void pose();
/// Method [update]
external void update();
/// Method [clone]
external Skeleton clone();
/// Method [getBoneByName]
///
/// Parameters:
/// - name: string
external Bone<Object3DEventMap>? getBoneByName(_i1.JSString name);
/// Method [dispose]
external void dispose();
/// Method [toJSON]
external SkeletonJSON toJSON();
/// Method [fromJSON]
///
/// Parameters:
/// - json: SkeletonJSON
/// - bones: Record
external void fromJSON(SkeletonJSON json, _i2.Record<_i1.JSString,Bone<Object3DEventMap>> bones, );
}
/// Interface [SkeletonJSON$Metadata$TypeLiteral]
extension type SkeletonJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [SkinnedMeshJSONObject]
extension type SkinnedMeshJSONObject.$(_i1.JSObject _) implements MeshJSONObject {
/// Property [bindMode]
///
/// bindMode: BindMode
external BindMode bindMode;

/// Property [bindMatrix]
///
/// bindMatrix: Matrix4Tuple
external Matrix4Tuple bindMatrix;

/// Property [skeleton]
///
/// skeleton?: string
external _i1.JSString? skeleton;

}
/// Interface [SkinnedMeshJSON]
extension type SkinnedMeshJSON.$(_i1.JSObject _) implements MeshJSON {
/// Property [object]
///
/// object: SkinnedMeshJSONObject
external SkinnedMeshJSONObject object;

}
/// Class [SkinnedMesh]
extension type SkinnedMesh<TGeometry extends BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,TMaterial extends _i1.JSAny,TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Mesh<TGeometry,TMaterial,TEventMap> {
/// Constructor
///
/// Parameters:
/// - geometry: TGeometry
/// - material: TMaterial
/// - useVertexTexture: boolean
external SkinnedMesh([TGeometry geometry, TMaterial material, _i1.JSBoolean useVertexTexture, ]);

/// Property [bindMode]
///
/// bindMode: BindMode
external BindMode bindMode;

/// Property [bindMatrix]
///
/// bindMatrix: Matrix4
external Matrix4 bindMatrix;

/// Property [bindMatrixInverse]
///
/// bindMatrixInverse: Matrix4
external Matrix4 bindMatrixInverse;

/// Property [boundingBox]
///
/// boundingBox: Box3
external Box3 boundingBox;

/// Property [boundingSphere]
///
/// boundingSphere: Sphere
external Sphere boundingSphere;

/// Property [skeleton]
///
/// skeleton: Skeleton
external Skeleton skeleton;

/// Property [isSkinnedMesh]
///
/// readonly isSkinnedMesh: true
external _i1.JSBoolean get isSkinnedMesh;
/// Property [type]
///
/// override readonly type: string | "SkinnedMesh"
external _i1.JSString get type;
/// Method [bind]
///
/// Parameters:
/// - skeleton: Skeleton
/// - bindMatrix: Matrix4
external void bind(Skeleton skeleton, [Matrix4 bindMatrix, ]);
/// Method [computeBoundingBox]
external void computeBoundingBox();
/// Method [computeBoundingSphere]
external void computeBoundingSphere();
/// Method [pose]
external void pose();
/// Method [normalizeSkinWeights]
external void normalizeSkinWeights();
/// Method [applyBoneTransform]
///
/// Parameters:
/// - index: number
/// - vector: Vector3
external Vector3 applyBoneTransform(_i1.JSNumber index, Vector3 vector, );
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external SkinnedMeshJSON toJSON([JSONMeta meta]);
}
/// Class [Sprite]
extension type Sprite<TEventMap extends Object3DEventMap>.$(_i1.JSObject _) implements _i1.JSObject,Object3D<TEventMap> {
/// Constructor
///
/// Parameters:
/// - material: SpriteMaterial
external Sprite([SpriteMaterial material]);

/// Property [castShadow]
///
/// override castShadow: false
external _i1.JSBoolean castShadow;

/// Property [geometry]
///
/// geometry: BufferGeometry
external BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry;

/// Property [material]
///
/// material: SpriteMaterial
external SpriteMaterial material;

/// Property [center]
///
/// center: Vector2
external Vector2 center;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

/// Property [isSprite]
///
/// readonly isSprite: true
external _i1.JSBoolean get isSprite;
/// Property [type]
///
/// override readonly type: string | "Sprite"
external _i1.JSString get type;
}
/// Class [WebGL3DRenderTarget]
extension type WebGL3DRenderTarget.$(_i1.JSObject _) implements _i1.JSObject,WebGLRenderTarget<Texture<_i1.JSAny>> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - depth: number
/// - options: RenderTargetOptions
external WebGL3DRenderTarget([_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, RenderTargetOptions options, ]);

/// Property [textures]
///
/// textures: Data3DTexture[]
external _i1.JSArray<Data3DTexture> textures;

/// Get Accessor [texture]
///
/// texture
external Data3DTexture get texture;
/// Get Accessor [texture]
///
/// texture
external set texture();
/// Property [isWebGLthreeDRenderTarget]
///
/// readonly isWebGLthreeDRenderTarget: true
@_i1.JS('isWebGL3DRenderTarget') external _i1.JSBoolean get isWebGLthreeDRenderTarget;
}
/// Class [WebGLArrayRenderTarget]
extension type WebGLArrayRenderTarget.$(_i1.JSObject _) implements _i1.JSObject,WebGLRenderTarget<Texture<_i1.JSAny>> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - depth: number
/// - options: RenderTargetOptions
external WebGLArrayRenderTarget([_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, RenderTargetOptions options, ]);

/// Property [textures]
///
/// textures: DataArrayTexture[]
external _i1.JSArray<DataArrayTexture> textures;

/// Get Accessor [texture]
///
/// texture
external DataArrayTexture get texture;
/// Get Accessor [texture]
///
/// texture
external set texture();
/// Property [isWebGLArrayRenderTarget]
///
/// readonly isWebGLArrayRenderTarget: true
external _i1.JSBoolean get isWebGLArrayRenderTarget;
}
/// Class [WebGLRenderTarget]
extension type WebGLRenderTarget<TTexture extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,RenderTarget<TTexture> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - options: RenderTargetOptions
external WebGLRenderTarget([_i1.JSNumber width, _i1.JSNumber height, RenderTargetOptions options, ]);

/// Property [isWebGLRenderTarget]
///
/// readonly isWebGLRenderTarget: true
external _i1.JSBoolean get isWebGLRenderTarget;
}
/// Typedef [XRControllerEventType]
///
/// XRSessionEventType | XRInputSourceEventType | "disconnected" | "connected"
typedef XRControllerEventType = _i1.JSAny;
/// Class [XRJointSpace]
extension type XRJointSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<Object3DEventMap> {
/// Property [jointRadius]
///
/// readonly jointRadius: number | undefined
external _i1.JSNumber get jointRadius;
}
/// Typedef [XRHandJoints]
///
/// Record
typedef XRHandJoints = _i2.Record<_i3.XRHandJoint,_i3.XRJointSpace>;
/// Interface [XRHandInputState]
extension type XRHandInputState.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [pinching$1]
///
/// pinching$1: boolean
@_i1.JS('pinching') external _i1.JSBoolean pinching$1;

/// Property [pinching$2]
///
/// pinching$2: boolean
@_i1.JS('pinching') external _i1.JSBoolean pinching$2;

}
/// Interface [WebXRSpaceEventMap]
extension type WebXRSpaceEventMap.$(_i1.JSObject _) implements Object3DEventMap {
/// Property [select$1]
///
/// select$1: WebXRSpaceEventMap$Select$TypeLiteral
@_i1.JS('select') external WebXRSpaceEventMap$Select$TypeLiteral select$1;

/// Property [selectstart$1]
///
/// selectstart$1: WebXRSpaceEventMap$Selectstart$TypeLiteral
@_i1.JS('selectstart') external WebXRSpaceEventMap$Selectstart$TypeLiteral selectstart$1;

/// Property [selectend$1]
///
/// selectend$1: WebXRSpaceEventMap$Selectend$TypeLiteral
@_i1.JS('selectend') external WebXRSpaceEventMap$Selectend$TypeLiteral selectend$1;

/// Property [squeeze$1]
///
/// squeeze$1: WebXRSpaceEventMap$Squeeze$TypeLiteral
@_i1.JS('squeeze') external WebXRSpaceEventMap$Squeeze$TypeLiteral squeeze$1;

/// Property [squeezestart$1]
///
/// squeezestart$1: WebXRSpaceEventMap$Squeezestart$TypeLiteral
@_i1.JS('squeezestart') external WebXRSpaceEventMap$Squeezestart$TypeLiteral squeezestart$1;

/// Property [squeezeend$1]
///
/// squeezeend$1: WebXRSpaceEventMap$Squeezeend$TypeLiteral
@_i1.JS('squeezeend') external WebXRSpaceEventMap$Squeezeend$TypeLiteral squeezeend$1;

/// Property [connected$1]
///
/// connected$1: WebXRSpaceEventMap$Connected$TypeLiteral
@_i1.JS('connected') external WebXRSpaceEventMap$Connected$TypeLiteral connected$1;

/// Property [disconnected$1]
///
/// disconnected$1: WebXRSpaceEventMap$Disconnected$TypeLiteral
@_i1.JS('disconnected') external WebXRSpaceEventMap$Disconnected$TypeLiteral disconnected$1;

/// Property [pinchend$1]
///
/// pinchend$1: WebXRSpaceEventMap$Pinchend$TypeLiteral
@_i1.JS('pinchend') external WebXRSpaceEventMap$Pinchend$TypeLiteral pinchend$1;

/// Property [pinchstart$1]
///
/// pinchstart$1: WebXRSpaceEventMap$Pinchstart$TypeLiteral
@_i1.JS('pinchstart') external WebXRSpaceEventMap$Pinchstart$TypeLiteral pinchstart$1;

/// Property [move$1]
///
/// move$1: WebXRSpaceEventMap$Move$TypeLiteral
@_i1.JS('move') external WebXRSpaceEventMap$Move$TypeLiteral move$1;

/// Property [select$2]
///
/// select$2: WebXRSpaceEventMap$Select$TypeLiteral$2
@_i1.JS('select') external WebXRSpaceEventMap$Select$TypeLiteral$2 select$2;

/// Property [selectstart$2]
///
/// selectstart$2: WebXRSpaceEventMap$Selectstart$TypeLiteral$2
@_i1.JS('selectstart') external WebXRSpaceEventMap$Selectstart$TypeLiteral$2 selectstart$2;

/// Property [selectend$2]
///
/// selectend$2: WebXRSpaceEventMap$Selectend$TypeLiteral$2
@_i1.JS('selectend') external WebXRSpaceEventMap$Selectend$TypeLiteral$2 selectend$2;

/// Property [squeeze$2]
///
/// squeeze$2: WebXRSpaceEventMap$Squeeze$TypeLiteral$2
@_i1.JS('squeeze') external WebXRSpaceEventMap$Squeeze$TypeLiteral$2 squeeze$2;

/// Property [squeezestart$2]
///
/// squeezestart$2: WebXRSpaceEventMap$Squeezestart$TypeLiteral$2
@_i1.JS('squeezestart') external WebXRSpaceEventMap$Squeezestart$TypeLiteral$2 squeezestart$2;

/// Property [squeezeend$2]
///
/// squeezeend$2: WebXRSpaceEventMap$Squeezeend$TypeLiteral$2
@_i1.JS('squeezeend') external WebXRSpaceEventMap$Squeezeend$TypeLiteral$2 squeezeend$2;

/// Property [connected$2]
///
/// connected$2: WebXRSpaceEventMap$Connected$TypeLiteral$2
@_i1.JS('connected') external WebXRSpaceEventMap$Connected$TypeLiteral$2 connected$2;

/// Property [disconnected$2]
///
/// disconnected$2: WebXRSpaceEventMap$Disconnected$TypeLiteral$2
@_i1.JS('disconnected') external WebXRSpaceEventMap$Disconnected$TypeLiteral$2 disconnected$2;

/// Property [pinchend$2]
///
/// pinchend$2: WebXRSpaceEventMap$Pinchend$TypeLiteral$2
@_i1.JS('pinchend') external WebXRSpaceEventMap$Pinchend$TypeLiteral$2 pinchend$2;

/// Property [pinchstart$2]
///
/// pinchstart$2: WebXRSpaceEventMap$Pinchstart$TypeLiteral$2
@_i1.JS('pinchstart') external WebXRSpaceEventMap$Pinchstart$TypeLiteral$2 pinchstart$2;

/// Property [move$2]
///
/// move$2: WebXRSpaceEventMap$Move$TypeLiteral$2
@_i1.JS('move') external WebXRSpaceEventMap$Move$TypeLiteral$2 move$2;

}
/// Class [XRHandSpace]
extension type XRHandSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [joints]
///
/// readonly joints: Partial
external _i2.Partial<XRHandJoints> get joints;
/// Property [inputState]
///
/// readonly inputState: XRHandInputState
external XRHandInputState get inputState;
}
/// Class [XRTargetRaySpace]
extension type XRTargetRaySpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [hasLinearVelocity]
///
/// hasLinearVelocity: boolean
external _i1.JSBoolean hasLinearVelocity;

/// Property [hasAngularVelocity]
///
/// hasAngularVelocity: boolean
external _i1.JSBoolean hasAngularVelocity;

/// Property [linearVelocity]
///
/// readonly linearVelocity: Vector3
external Vector3 get linearVelocity;
/// Property [angularVelocity]
///
/// readonly angularVelocity: Vector3
external Vector3 get angularVelocity;
}
/// Class [XRGripSpace]
extension type XRGripSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [hasLinearVelocity]
///
/// hasLinearVelocity: boolean
external _i1.JSBoolean hasLinearVelocity;

/// Property [hasAngularVelocity]
///
/// hasAngularVelocity: boolean
external _i1.JSBoolean hasAngularVelocity;

/// Property [linearVelocity]
///
/// readonly linearVelocity: Vector3
external Vector3 get linearVelocity;
/// Property [angularVelocity]
///
/// readonly angularVelocity: Vector3
external Vector3 get angularVelocity;
}
/// Class [WebXRController]
extension type WebXRController.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebXRController();

/// Method [getHandSpace]
external XRHandSpace getHandSpace();
/// Method [getTargetRaySpace]
external XRTargetRaySpace getTargetRaySpace();
/// Method [getGripSpace]
external XRGripSpace getGripSpace();
/// Method [dispatchEvent]
///
/// Parameters:
/// - event: WebXRController$DispatchEvent$Event$TypeLiteral
external _i1.JSAny dispatchEvent(WebXRController$DispatchEvent$Event$TypeLiteral event);
/// Method [connect]
///
/// Parameters:
/// - inputSource: XRInputSource
external _i1.JSAny connect(_i3.XRInputSource inputSource);
/// Method [disconnect]
///
/// Parameters:
/// - inputSource: XRInputSource
external _i1.JSAny disconnect(_i3.XRInputSource inputSource);
/// Method [update]
///
/// Parameters:
/// - inputSource: XRInputSource
/// - frame: XRFrame
/// - referenceSpace: XRReferenceSpace
external _i1.JSAny update(_i3.XRInputSource inputSource, _i4.XRFrame frame, _i3.XRReferenceSpace referenceSpace, );
}
/// Interface [WebXRSpaceEventMap$Select$TypeLiteral]
extension type WebXRSpaceEventMap$Select$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Selectstart$TypeLiteral]
extension type WebXRSpaceEventMap$Selectstart$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Selectend$TypeLiteral]
extension type WebXRSpaceEventMap$Selectend$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeeze$TypeLiteral]
extension type WebXRSpaceEventMap$Squeeze$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeezestart$TypeLiteral]
extension type WebXRSpaceEventMap$Squeezestart$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeezeend$TypeLiteral]
extension type WebXRSpaceEventMap$Squeezeend$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Connected$TypeLiteral]
extension type WebXRSpaceEventMap$Connected$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Disconnected$TypeLiteral]
extension type WebXRSpaceEventMap$Disconnected$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Pinchend$TypeLiteral]
extension type WebXRSpaceEventMap$Pinchend$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [handedness]
///
/// handedness: XRHandedness
external _i3.XRHandedness handedness;

/// Property [target]
///
/// target: WebXRController
external WebXRController target;

}
/// Interface [WebXRSpaceEventMap$Pinchstart$TypeLiteral]
extension type WebXRSpaceEventMap$Pinchstart$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [handedness]
///
/// handedness: XRHandedness
external _i3.XRHandedness handedness;

/// Property [target]
///
/// target: WebXRController
external WebXRController target;

}
/// Interface [WebXRSpaceEventMap$Move$TypeLiteral]
extension type WebXRSpaceEventMap$Move$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [WebXRController$DispatchEvent$Event$TypeLiteral]
extension type WebXRController$DispatchEvent$Event$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: XRControllerEventType
external XRControllerEventType type;

/// Property [data]
///
/// data?: XRInputSource
external _i3.XRInputSource? data;

}
/// Interface [FogJSON]
extension type FogJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [color]
///
/// color: number
external _i1.JSNumber color;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

}
/// Class [Fog]
extension type Fog.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - near: number
/// - far: number
external Fog(ColorRepresentation color, [_i1.JSNumber near, _i1.JSNumber far, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [color]
///
/// color: Color
external Color color;

/// Property [near]
///
/// near: number
external _i1.JSNumber near;

/// Property [far]
///
/// far: number
external _i1.JSNumber far;

/// Property [isFog]
///
/// readonly isFog: boolean
external _i1.JSBoolean get isFog;
/// Method [clone]
external Fog clone();
/// Method [toJSON]
external FogJSON toJSON();
}
/// Interface [FogExp2JSON]
extension type FogExp2JSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [color]
///
/// color: number
external _i1.JSNumber color;

/// Property [density]
///
/// density: number
external _i1.JSNumber density;

}
/// Class [FogExp2]
extension type FogExp2.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - color: ColorRepresentation
/// - density: number
external FogExp2(ColorRepresentation color, [_i1.JSNumber density, ]);

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [color]
///
/// color: Color
external Color color;

/// Property [density]
///
/// density: number
external _i1.JSNumber density;

/// Property [isFogExptwo]
///
/// readonly isFogExptwo: boolean
@_i1.JS('isFogExp2') external _i1.JSBoolean get isFogExptwo;
/// Method [clone]
external FogExp2 clone();
/// Method [toJSON]
external FogExp2JSON toJSON();
}
/// Interface [SceneJSONObject]
extension type SceneJSONObject.$(_i1.JSObject _) implements Object3DJSONObject {
/// Property [fog]
///
/// fog?: FogJSON | FogExp2JSON
external _i1.JSAny? fog;

/// Property [backgroundBlurriness]
///
/// backgroundBlurriness?: number
external _i1.JSNumber? backgroundBlurriness;

/// Property [backgroundIntensity]
///
/// backgroundIntensity?: number
external _i1.JSNumber? backgroundIntensity;

/// Property [backgroundRotation]
///
/// backgroundRotation: EulerTuple
external EulerTuple backgroundRotation;

/// Property [environmentIntensity]
///
/// environmentIntensity?: number
external _i1.JSNumber? environmentIntensity;

/// Property [environmentRotation]
///
/// environmentRotation: EulerTuple
external EulerTuple environmentRotation;

}
/// Interface [SceneJSON]
extension type SceneJSON.$(_i1.JSObject _) implements Object3DJSON {
/// Property [object]
///
/// object: SceneJSONObject
external SceneJSONObject object;

}
/// Class [Scene]
extension type Scene.$(_i1.JSObject _) implements _i1.JSObject,Object3D<Object3DEventMap> {
/// Property [background]
///
/// background: (Color | Texture) | null
external _i1.JSAny background;

/// Property [environment]
///
/// environment: Texture | null
external Texture<_i1.JSAny> environment;

/// Property [fog]
///
/// fog: (Fog | FogExp2) | null
external _i1.JSAny fog;

/// Property [backgroundBlurriness]
///
/// backgroundBlurriness: number
external _i1.JSNumber backgroundBlurriness;

/// Property [backgroundIntensity]
///
/// backgroundIntensity: number
external _i1.JSNumber backgroundIntensity;

/// Property [backgroundRotation]
///
/// backgroundRotation: Euler
external Euler backgroundRotation;

/// Property [environmentIntensity]
///
/// environmentIntensity: number
external _i1.JSNumber environmentIntensity;

/// Property [environmentRotation]
///
/// environmentRotation: Euler
external Euler environmentRotation;

/// Property [overrideMaterial]
///
/// overrideMaterial: Material | null
external Material overrideMaterial;

/// Property [isScene]
///
/// readonly isScene: boolean
external _i1.JSBoolean get isScene;
/// Method [copy]
///
/// Parameters:
/// - source: Scene
/// - recursive: boolean
external _i1.JSAny copy(Scene source, [_i1.JSBoolean recursive, ]);
/// Method [toJSON]
///
/// Parameters:
/// - meta: JSONMeta
external SceneJSON toJSON([JSONMeta meta]);
}
/// Class [CanvasTexture]
extension type CanvasTexture<TCanvas extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Texture<TCanvas> {
/// Constructor
///
/// Parameters:
/// - canvas: TCanvas
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
external CanvasTexture([TCanvas canvas, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, ]);

/// Property [isCanvasTexture]
///
/// readonly isCanvasTexture: true
external _i1.JSBoolean get isCanvasTexture;
}
/// Class [CompressedArrayTexture]
extension type CompressedArrayTexture.$(_i1.JSObject _) implements _i1.JSObject,CompressedTexture<CompressedArrayTextureImageData> {
/// Constructor
///
/// Parameters:
/// - mipmaps: CompressedTextureMipmap[]
/// - width: number
/// - height: number
/// - depth: number
/// - format: CompressedPixelFormat
/// - type: TextureDataType
external CompressedArrayTexture(_i1.JSArray<CompressedTextureMipmap> mipmaps, _i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, CompressedPixelFormat format, [TextureDataType type, ]);

/// Property [wrapR]
///
/// wrapR: Wrapping
external Wrapping wrapR;

/// Property [layerUpdates]
///
/// layerUpdates: Set
external _i2.Set<_i1.JSNumber> layerUpdates;

/// Property [isCompressedArrayTexture]
///
/// readonly isCompressedArrayTexture: true
external _i1.JSBoolean get isCompressedArrayTexture;
/// Method [addLayerUpdate]
///
/// Parameters:
/// - layerIndex: number
external void addLayerUpdate(_i1.JSNumber layerIndex);
/// Method [clearLayerUpdates]
external void clearLayerUpdates();
}
/// Interface [CompressedArrayTextureImageData]
extension type CompressedArrayTextureImageData.$(_i1.JSObject _) implements CompressedTextureImageData {
/// Property [depth]
///
/// depth: number
external _i1.JSNumber depth;

}
/// Class [CompressedCubeTexture]
extension type CompressedCubeTexture.$(_i1.JSObject _) implements _i1.JSObject,CompressedTexture<_i1.JSArray<CompressedTextureImageData>> {
/// Constructor
///
/// Parameters:
/// - images: CompressedTextureImageData[]
/// - format: CompressedPixelFormat
/// - type: TextureDataType
external CompressedCubeTexture(_i1.JSArray<CompressedTextureImageData> images, [CompressedPixelFormat format, TextureDataType type, ]);

/// Property [isCompressedCubeTexture]
///
/// readonly isCompressedCubeTexture: true
external _i1.JSBoolean get isCompressedCubeTexture;
/// Property [isCubeTexture]
///
/// readonly isCubeTexture: true
external _i1.JSBoolean get isCubeTexture;
}
/// Interface [CompressedTextureMipmap]
extension type CompressedTextureMipmap.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: TypedArray
external TypedArray data;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Class [CompressedTexture]
extension type CompressedTexture<TImageData extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Texture<TImageData> {
/// Constructor
///
/// Parameters:
/// - mipmaps: CompressedTextureMipmap[]
/// - width: number
/// - height: number
/// - format: CompressedPixelFormat
/// - type: TextureDataType
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - anisotropy: number
/// - colorSpace: string
external CompressedTexture(_i1.JSArray<CompressedTextureMipmap> mipmaps, _i1.JSNumber width, _i1.JSNumber height, [CompressedPixelFormat format, TextureDataType type, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, _i1.JSNumber anisotropy, _i1.JSString colorSpace, ]);

/// Property [mipmaps]
///
/// mipmaps: CompressedTextureMipmap[]
external _i1.JSArray<CompressedTextureMipmap> mipmaps;

/// Property [format]
///
/// format: CompressedPixelFormat
external CompressedPixelFormat format;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [isCompressedTexture]
///
/// readonly isCompressedTexture: true
external _i1.JSBoolean get isCompressedTexture;
}
/// Interface [CompressedTextureImageData]
extension type CompressedTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Class [CubeTexture]
extension type CubeTexture<TImage extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Texture<_i1.JSArray<TImage>> {
/// Constructor
///
/// Parameters:
/// - images: TImage[]
/// - mapping: CubeTextureMapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
/// - colorSpace: string
external CubeTexture([_i1.JSArray<TImage> images, CubeTextureMapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, _i1.JSString colorSpace, ]);

/// Property [mapping]
///
/// mapping: CubeTextureMapping
external CubeTextureMapping mapping;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [isCubeTexture]
///
/// readonly isCubeTexture: true
external _i1.JSBoolean get isCubeTexture;
/// Get Accessor [images]
///
/// images
external _i1.JSArray<TImage> get images;
/// Get Accessor [images]
///
/// images
external set images();
}
/// Class [Data3DTexture]
extension type Data3DTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<Data3DTextureImageData> {
/// Constructor
///
/// Parameters:
/// - data: TypedArray | null
/// - width: number
/// - height: number
/// - depth: number
external Data3DTexture([TypedArray? data, _i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, ]);

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [wrapR]
///
/// wrapR: Wrapping
external Wrapping wrapR;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [unpackAlignment]
///
/// unpackAlignment: number
external _i1.JSNumber unpackAlignment;

/// Property [isDatathreeDTexture]
///
/// readonly isDatathreeDTexture: true
@_i1.JS('isData3DTexture') external _i1.JSBoolean get isDatathreeDTexture;
}
/// Interface [Data3DTextureImageData]
extension type Data3DTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: TypedArray | null
external TypedArray data;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [depth]
///
/// depth: number
external _i1.JSNumber depth;

}
/// Class [DataArrayTexture]
extension type DataArrayTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<DataArrayTextureImageData> {
/// Constructor
///
/// Parameters:
/// - data: TypedArray | null
/// - width: number
/// - height: number
/// - depth: number
external DataArrayTexture([TypedArray? data, _i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber depth, ]);

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [wrapR]
///
/// wrapR: boolean
external _i1.JSBoolean wrapR;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [unpackAlignment]
///
/// unpackAlignment: number
external _i1.JSNumber unpackAlignment;

/// Property [layerUpdates]
///
/// layerUpdates: Set
external _i2.Set<_i1.JSNumber> layerUpdates;

/// Property [isDataArrayTexture]
///
/// readonly isDataArrayTexture: true
external _i1.JSBoolean get isDataArrayTexture;
/// Method [addLayerUpdate]
///
/// Parameters:
/// - layerIndex: number
external void addLayerUpdate(_i1.JSNumber layerIndex);
/// Method [clearLayerUpdates]
external void clearLayerUpdates();
}
/// Interface [DataArrayTextureImageData]
extension type DataArrayTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: TypedArray | null
external TypedArray data;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [depth]
///
/// depth: number
external _i1.JSNumber depth;

}
/// Class [DataTexture]
extension type DataTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<DataTextureImageData> {
/// Constructor
///
/// Parameters:
/// - data: TypedArray | null
/// - width: number
/// - height: number
/// - format: PixelFormat
/// - type: TextureDataType
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - anisotropy: number
/// - colorSpace: string
external DataTexture([TypedArray? data, _i1.JSNumber width, _i1.JSNumber height, PixelFormat format, TextureDataType type, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, _i1.JSNumber anisotropy, _i1.JSString colorSpace, ]);

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [unpackAlignment]
///
/// unpackAlignment: number
external _i1.JSNumber unpackAlignment;

/// Property [isDataTexture]
///
/// readonly isDataTexture: true
external _i1.JSBoolean get isDataTexture;
}
/// Interface [DataTextureImageData]
extension type DataTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: TypedArray | null
external TypedArray data;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Class [DepthTexture]
extension type DepthTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<DepthTextureImageData> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
/// - type: TextureDataType
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - anisotropy: number
/// - format: DepthTexturePixelFormat
/// - depth: number
external DepthTexture(_i1.JSNumber width, _i1.JSNumber height, [TextureDataType type, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, _i1.JSNumber anisotropy, DepthTexturePixelFormat format, _i1.JSNumber depth, ]);

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [format]
///
/// format: DepthTexturePixelFormat
external DepthTexturePixelFormat format;

/// Property [type]
///
/// type: TextureDataType
external TextureDataType type;

/// Property [compareFunction]
///
/// compareFunction: TextureComparisonFunction | null
external TextureComparisonFunction compareFunction;

/// Property [isDepthTexture]
///
/// readonly isDepthTexture: true
external _i1.JSBoolean get isDepthTexture;
}
/// Interface [DepthTextureImageData]
extension type DepthTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [depth]
///
/// depth: number
external _i1.JSNumber depth;

}
/// Class [ExternalTexture]
extension type ExternalTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<_i1.JSAny> {
/// Constructor
///
/// Parameters:
/// - sourceTexture: WebGLTexture | GPUTexture | null
external ExternalTexture([_i1.JSAny? sourceTexture]);

/// Property [sourceTexture]
///
/// sourceTexture: WebGLTexture | GPUTexture | null
external _i1.JSAny sourceTexture;

/// Property [isExternalTexture]
///
/// readonly isExternalTexture: true
external _i1.JSBoolean get isExternalTexture;
}
/// Class [FramebufferTexture]
extension type FramebufferTexture.$(_i1.JSObject _) implements _i1.JSObject,Texture<FramebufferTextureImageData> {
/// Constructor
///
/// Parameters:
/// - width: number
/// - height: number
external FramebufferTexture(_i1.JSNumber width, _i1.JSNumber height, );

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [isFramebufferTexture]
///
/// readonly isFramebufferTexture: true
external _i1.JSBoolean get isFramebufferTexture;
}
/// Interface [FramebufferTextureImageData]
extension type FramebufferTextureImageData.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

}
/// Typedef [SerializedImage]
///
/// string | SerializedImage$TypeLiteral
typedef SerializedImage = _i1.JSAny;
/// Class [SourceJSON]
extension type SourceJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [url]
///
/// url: SerializedImage | SerializedImage[]
external _i1.JSAny url;

}
/// Class [Source]
extension type Source<TData extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - data: TData
external Source(TData data);

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [data]
///
/// data: TData
external TData data;

/// Property [dataReady]
///
/// dataReady: boolean
external _i1.JSBoolean dataReady;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [isSource]
///
/// readonly isSource: true
external _i1.JSBoolean get isSource;
/// Property [id]
///
/// readonly id: number
external _i1.JSNumber get id;
/// Method [getSize]
///
/// Parameters:
/// - target: Vector3
external Vector3 getSize(Vector3 target);
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Method [toJSON]
///
/// Parameters:
/// - meta: string | Source$ToJSON$Meta$TypeLiteral
external SourceJSON toJSON([_i1.JSAny meta]);
}
/// Interface [SerializedImage$TypeLiteral]
extension type SerializedImage$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: number[]
external _i1.JSArray<_i1.JSNumber> data;

/// Property [width]
///
/// width: number
external _i1.JSNumber width;

/// Property [height]
///
/// height: number
external _i1.JSNumber height;

/// Property [type]
///
/// type: string
external _i1.JSString type;

}
/// Interface [Source$ToJSON$Meta$TypeLiteral]
extension type Source$ToJSON$Meta$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [TextureParameters]
extension type TextureParameters.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [mapping]
///
/// mapping?: AnyMapping | undefined
external AnyMapping? mapping;

/// Property [wrapS]
///
/// wrapS?: Wrapping | undefined
external Wrapping? wrapS;

/// Property [wrapT]
///
/// wrapT?: Wrapping | undefined
external Wrapping? wrapT;

/// Property [wrapR]
///
/// wrapR?: Wrapping | undefined
external Wrapping? wrapR;

/// Property [format]
///
/// format?: PixelFormat | undefined
external PixelFormat? format;

/// Property [internalFormat]
///
/// internalFormat?: PixelFormatGPU | null | undefined
external PixelFormatGPU? internalFormat;

/// Property [type]
///
/// type?: TextureDataType | undefined
external TextureDataType? type;

/// Property [colorSpace]
///
/// colorSpace?: ColorSpace | undefined
external ColorSpace? colorSpace;

/// Property [magFilter]
///
/// magFilter?: MagnificationTextureFilter | undefined
external MagnificationTextureFilter? magFilter;

/// Property [minFilter]
///
/// minFilter?: MinificationTextureFilter | undefined
external MinificationTextureFilter? minFilter;

/// Property [anisotropy]
///
/// anisotropy?: number | undefined
external _i1.JSNumber? anisotropy;

/// Property [flipY]
///
/// flipY?: boolean | undefined
external _i1.JSBoolean? flipY;

/// Property [generateMipmaps]
///
/// generateMipmaps?: boolean | undefined
external _i1.JSBoolean? generateMipmaps;

}
/// Interface [TextureJSON]
extension type TextureJSON.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metadata]
///
/// metadata: TextureJSON$Metadata$TypeLiteral
external TextureJSON$Metadata$TypeLiteral metadata;

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [image]
///
/// image: string
external _i1.JSString image;

/// Property [mapping]
///
/// mapping: AnyMapping
external AnyMapping mapping;

/// Property [channel]
///
/// channel: number
external _i1.JSNumber channel;

/// Property [repeat]
///
/// repeat: [, ]
external _i1.JSArray<_i1.JSAny> repeat;

/// Property [offset]
///
/// offset: [, ]
external _i1.JSArray<_i1.JSAny> offset;

/// Property [center]
///
/// center: [, ]
external _i1.JSArray<_i1.JSAny> center;

/// Property [rotation]
///
/// rotation: number
external _i1.JSNumber rotation;

/// Property [wrap]
///
/// wrap: [, ]
external _i1.JSArray<_i1.JSAny> wrap;

/// Property [format]
///
/// format: AnyPixelFormat
external AnyPixelFormat format;

/// Property [internalFormat]
///
/// internalFormat: PixelFormatGPU | null
external PixelFormatGPU internalFormat;

/// Property [type]
///
/// type: TextureDataType
external TextureDataType type;

/// Property [colorSpace]
///
/// colorSpace: string
external _i1.JSString colorSpace;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [anisotropy]
///
/// anisotropy: number
external _i1.JSNumber anisotropy;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [premultiplyAlpha]
///
/// premultiplyAlpha: boolean
external _i1.JSBoolean premultiplyAlpha;

/// Property [unpackAlignment]
///
/// unpackAlignment: number
external _i1.JSNumber unpackAlignment;

/// Property [userData]
///
/// userData?: Record
external _i2.Record<_i1.JSString,_i1.JSAny>? userData;

}
/// Interface [OffscreenCanvas]
extension type OffscreenCanvas.$(_i1.JSObject _) implements _i3.EventTarget {
}
/// Class [Texture]
extension type Texture<TImage extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<Texture$TypeLiteral> {
/// Constructor
///
/// Parameters:
/// - image: TImage
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
/// - colorSpace: ColorSpace
external Texture.$1([TImage image, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, ColorSpace colorSpace, ]);

/// Constructor
///
/// Parameters:
/// - image: TImage
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
external Texture.$2(TImage image, Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, );

/// Property [uuid]
///
/// uuid: string
external _i1.JSString uuid;

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [source]
///
/// source: Source
external Source<TImage> source;

/// Property [mipmaps]
///
/// mipmaps: CompressedTextureMipmap[] | CubeTexture[] | HTMLCanvasElement[]
external _i1.JSArray<_i3.HTMLCanvasElement> mipmaps;

/// Property [mapping]
///
/// mapping: AnyMapping
external AnyMapping mapping;

/// Property [channel]
///
/// channel: number
external _i1.JSNumber channel;

/// Property [wrapS]
///
/// wrapS: Wrapping
external Wrapping wrapS;

/// Property [wrapT]
///
/// wrapT: Wrapping
external Wrapping wrapT;

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [anisotropy]
///
/// anisotropy: number
external _i1.JSNumber anisotropy;

/// Property [format]
///
/// format: AnyPixelFormat
external AnyPixelFormat format;

/// Property [type]
///
/// type: TextureDataType
external TextureDataType type;

/// Property [internalFormat]
///
/// internalFormat: PixelFormatGPU | null
external PixelFormatGPU internalFormat;

/// Property [matrix]
///
/// matrix: Matrix3
external Matrix3 matrix;

/// Property [matrixAutoUpdate]
///
/// matrixAutoUpdate: boolean
external _i1.JSBoolean matrixAutoUpdate;

/// Property [offset]
///
/// offset: Vector2
external Vector2 offset;

/// Property [repeat]
///
/// repeat: Vector2
external Vector2 repeat;

/// Property [center]
///
/// center: Vector2
external Vector2 center;

/// Property [rotation]
///
/// rotation: number
external _i1.JSNumber rotation;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [premultiplyAlpha]
///
/// premultiplyAlpha: boolean
external _i1.JSBoolean premultiplyAlpha;

/// Property [flipY]
///
/// flipY: boolean
external _i1.JSBoolean flipY;

/// Property [unpackAlignment]
///
/// unpackAlignment: number
external _i1.JSNumber unpackAlignment;

/// Property [colorSpace]
///
/// colorSpace: string
external _i1.JSString colorSpace;

/// Property [isRenderTargetTexture]
///
/// isRenderTargetTexture: boolean
external _i1.JSBoolean isRenderTargetTexture;

/// Property [isArrayTexture]
///
/// isArrayTexture: boolean
external _i1.JSBoolean isArrayTexture;

/// Property [userData]
///
/// userData: Record
external _i2.Record<_i1.JSString,_i1.JSAny> userData;

/// Property [updateRanges]
///
/// updateRanges: Array
external _i2.Array<Texture$UpdateRanges$TypeLiteral> updateRanges;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [pmremVersion]
///
/// pmremVersion: number
external _i1.JSNumber pmremVersion;

/// Property [DEFAULT_ANISOTROPY]
///
/// static DEFAULT_ANISOTROPY: number
external _i1.JSNumber DEFAULT_ANISOTROPY;

/// Property [DEFAULT_IMAGE]
///
/// static DEFAULT_IMAGE: null
external Null DEFAULT_IMAGE;

/// Property [DEFAULT_MAPPING]
///
/// static DEFAULT_MAPPING: Mapping
external Mapping DEFAULT_MAPPING;

/// Property [renderTarget]
///
/// renderTarget: RenderTarget | null
external RenderTarget<Texture<_i1.JSAny>> renderTarget;

/// Property [onUpdate]
///
/// onUpdate: ((texture: Texture) => void) | null
external _i1.JSFunction onUpdate;

/// Property [isTexture]
///
/// readonly isTexture: true
external _i1.JSBoolean get isTexture;
/// Property [id]
///
/// readonly id: number
external _i1.JSNumber get id;
/// Get Accessor [width]
///
/// width
external _i1.JSNumber get width;
/// Get Accessor [height]
///
/// height
external _i1.JSNumber get height;
/// Get Accessor [depth]
///
/// depth
external _i1.JSNumber get depth;
/// Get Accessor [image]
///
/// image
external TImage get image;
/// Get Accessor [image]
///
/// image
external set image();
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Get Accessor [needsPMREMUpdate]
///
/// needsPMREMUpdate
external set needsPMREMUpdate();
/// Method [transformUv]
///
/// Parameters:
/// - uv: Vector2
external Vector2 transformUv(Vector2 uv);
/// Method [updateMatrix]
external void updateMatrix();
/// Method [addUpdateRange]
///
/// Parameters:
/// - start: number
/// - count: number
external void addUpdateRange(_i1.JSNumber start, _i1.JSNumber count, );
/// Method [clearUpdateRanges]
external void clearUpdateRanges();
/// Method [clone]
external _i1.JSAny clone();
/// Method [copy]
///
/// Parameters:
/// - source: Texture
external _i1.JSAny copy(Texture<TImage> source);
/// Method [setValues]
///
/// Parameters:
/// - values: TextureParameters
external void setValues(TextureParameters values);
/// Method [toJSON]
///
/// Parameters:
/// - meta: string | Texture$ToJSON$Meta$TypeLiteral
external TextureJSON toJSON([_i1.JSAny meta]);
/// Method [dispose]
external void dispose();
}
/// Interface [TextureJSON$Metadata$TypeLiteral]
extension type TextureJSON$Metadata$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [type]
///
/// type: string
external _i1.JSString type;

/// Property [generator]
///
/// generator: string
external _i1.JSString generator;

}
/// Interface [Texture$Dispose$TypeLiteral]
extension type Texture$Dispose$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [Texture$TypeLiteral]
extension type Texture$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [dispose]
///
/// dispose: Texture$Dispose$TypeLiteral
external Texture$Dispose$TypeLiteral dispose;

}
/// Interface [Texture$UpdateRanges$TypeLiteral]
extension type Texture$UpdateRanges$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [start]
///
/// start: number
external _i1.JSNumber start;

/// Property [count]
///
/// count: number
external _i1.JSNumber count;

}
/// Interface [Texture$ToJSON$Meta$TypeLiteral]
extension type Texture$ToJSON$Meta$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [VideoFrameTexture]
extension type VideoFrameTexture.$(_i1.JSObject _) implements _i1.JSObject,VideoTexture<_i1.JSAny> {
/// Constructor
///
/// Parameters:
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
external VideoFrameTexture([Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, ]);

/// Method [setFrame]
///
/// Parameters:
/// - frame: 
external void setFrame(_i1.JSAny frame);
}
/// Interface [VideoFrameTexture$TypeLiteral]
extension type VideoFrameTexture$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Class [VideoTexture]
extension type VideoTexture<TVideo extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject,Texture<TVideo> {
/// Constructor
///
/// Parameters:
/// - video: TVideo
/// - mapping: Mapping
/// - wrapS: Wrapping
/// - wrapT: Wrapping
/// - magFilter: MagnificationTextureFilter
/// - minFilter: MinificationTextureFilter
/// - format: PixelFormat
/// - type: TextureDataType
/// - anisotropy: number
external VideoTexture(TVideo video, [Mapping mapping, Wrapping wrapS, Wrapping wrapT, MagnificationTextureFilter magFilter, MinificationTextureFilter minFilter, PixelFormat format, TextureDataType type, _i1.JSNumber anisotropy, ]);

/// Property [magFilter]
///
/// magFilter: MagnificationTextureFilter
external MagnificationTextureFilter magFilter;

/// Property [minFilter]
///
/// minFilter: MinificationTextureFilter
external MinificationTextureFilter minFilter;

/// Property [generateMipmaps]
///
/// generateMipmaps: boolean
external _i1.JSBoolean generateMipmaps;

/// Property [isVideoTexture]
///
/// readonly isVideoTexture: true
external _i1.JSBoolean get isVideoTexture;
/// Get Accessor [needsUpdate]
///
/// needsUpdate
external set needsUpdate();
/// Method [update]
external void update();
}
/// Method [isTypedArray]
///
/// Parameters:
/// - object: 
@_i1.JS('isTypedArray') external _i1.JSBoolean isTypedArray(_i1.JSAny object);/// Method [createCanvasElement]
@_i1.JS('createCanvasElement') external _i3.HTMLCanvasElement createCanvasElement();/// Method [setConsoleFunction]
///
/// Parameters:
/// - fn: (type: "log" | "warn" | "error", message: string, ...params: []) => void
@_i1.JS('setConsoleFunction') external void setConsoleFunction(_i1.JSFunction fn);/// Method [getConsoleFunction]
@_i1.JS('getConsoleFunction') external _i1.JSFunction getConsoleFunction();/// Method [log]
///
/// Parameters:
/// - ...params: []
@_i1.JS('log') external void log(_i1.JSArray<_i1.JSAny> params);/// Method [warn]
///
/// Parameters:
/// - ...params: []
@_i1.JS('warn') external void warn(_i1.JSArray<_i1.JSAny> params);/// Method [error]
///
/// Parameters:
/// - ...params: []
@_i1.JS('error') external void error(_i1.JSArray<_i1.JSAny> params);/// Method [warnOnce]
///
/// Parameters:
/// - ...params: []
@_i1.JS('warnOnce') external void warnOnce(_i1.JSArray<_i1.JSAny> params);/// Method [probeAsync]
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - sync: WebGLSync
/// - interval: number
@_i1.JS('probeAsync') external _i1.JSPromise probeAsync(_i3.WebGLRenderingContext gl, _i3.WebGLSync sync, _i1.JSNumber interval, );/// Variable [ReversedDepthFuncs]
///
/// ReversedDepthFuncs: 
external _i1.JSObject ReversedDepthFuncs;/// Interface [PMREMGeneratorOptions]
extension type PMREMGeneratorOptions.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [size]
///
/// size?: number | undefined
external _i1.JSNumber? size;

/// Property [position]
///
/// position?: Vector3 | undefined
external Vector3? position;

}
/// Class [PMREMGenerator]
extension type PMREMGenerator.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - renderer: WebGLRenderer
external PMREMGenerator(WebGLRenderer renderer);

/// Method [fromScene]
///
/// Parameters:
/// - scene: Scene
/// - sigma: number
/// - near: number
/// - far: number
/// - options: PMREMGeneratorOptions
external WebGLRenderTarget<Texture<_i1.JSAny>> fromScene(Scene scene, [_i1.JSNumber sigma, _i1.JSNumber near, _i1.JSNumber far, PMREMGeneratorOptions options, ]);
/// Method [fromEquirectangular]
///
/// Parameters:
/// - equirectangular: Texture
/// - renderTarget: WebGLRenderTarget | null
external WebGLRenderTarget<Texture<_i1.JSAny>> fromEquirectangular(Texture<_i1.JSAny> equirectangular, [WebGLRenderTarget<Texture<_i1.JSAny>>? renderTarget, ]);
/// Method [fromCubemap]
///
/// Parameters:
/// - cubemap: CubeTexture
/// - renderTarget: WebGLRenderTarget | null
external WebGLRenderTarget<Texture<_i1.JSAny>> fromCubemap(CubeTexture<_i1.JSAny> cubemap, [WebGLRenderTarget<Texture<_i1.JSAny>>? renderTarget, ]);
/// Method [compileCubemapShader]
external void compileCubemapShader();
/// Method [compileEquirectangularShader]
external void compileEquirectangularShader();
/// Method [dispose]
external void dispose();
}
/// Variable [ShaderChunk]
///
/// ShaderChunk: ShaderChunk$TypeLiteral
external ShaderChunk$TypeLiteral ShaderChunk;/// Interface [ShaderChunk$TypeLiteral]
extension type ShaderChunk$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [alphahash_fragment]
///
/// alphahash_fragment: string
external _i1.JSString alphahash_fragment;

/// Property [alphahash_pars_fragment]
///
/// alphahash_pars_fragment: string
external _i1.JSString alphahash_pars_fragment;

/// Property [alphamap_fragment]
///
/// alphamap_fragment: string
external _i1.JSString alphamap_fragment;

/// Property [alphamap_pars_fragment]
///
/// alphamap_pars_fragment: string
external _i1.JSString alphamap_pars_fragment;

/// Property [alphatest_fragment]
///
/// alphatest_fragment: string
external _i1.JSString alphatest_fragment;

/// Property [alphatest_pars_fragment]
///
/// alphatest_pars_fragment: string
external _i1.JSString alphatest_pars_fragment;

/// Property [aomap_fragment]
///
/// aomap_fragment: string
external _i1.JSString aomap_fragment;

/// Property [aomap_pars_fragment]
///
/// aomap_pars_fragment: string
external _i1.JSString aomap_pars_fragment;

/// Property [batching_pars_vertex]
///
/// batching_pars_vertex: string
external _i1.JSString batching_pars_vertex;

/// Property [begin_vertex]
///
/// begin_vertex: string
external _i1.JSString begin_vertex;

/// Property [beginnormal_vertex]
///
/// beginnormal_vertex: string
external _i1.JSString beginnormal_vertex;

/// Property [bsdfs]
///
/// bsdfs: string
external _i1.JSString bsdfs;

/// Property [iridescence_fragment]
///
/// iridescence_fragment: string
external _i1.JSString iridescence_fragment;

/// Property [bumpmap_pars_fragment]
///
/// bumpmap_pars_fragment: string
external _i1.JSString bumpmap_pars_fragment;

/// Property [clipping_planes_fragment]
///
/// clipping_planes_fragment: string
external _i1.JSString clipping_planes_fragment;

/// Property [clipping_planes_pars_fragment]
///
/// clipping_planes_pars_fragment: string
external _i1.JSString clipping_planes_pars_fragment;

/// Property [clipping_planes_pars_vertex]
///
/// clipping_planes_pars_vertex: string
external _i1.JSString clipping_planes_pars_vertex;

/// Property [clipping_planes_vertex]
///
/// clipping_planes_vertex: string
external _i1.JSString clipping_planes_vertex;

/// Property [color_fragment]
///
/// color_fragment: string
external _i1.JSString color_fragment;

/// Property [color_pars_fragment]
///
/// color_pars_fragment: string
external _i1.JSString color_pars_fragment;

/// Property [color_pars_vertex]
///
/// color_pars_vertex: string
external _i1.JSString color_pars_vertex;

/// Property [color_vertex]
///
/// color_vertex: string
external _i1.JSString color_vertex;

/// Property [common]
///
/// common: string
external _i1.JSString common;

/// Property [cube_uv_reflection_fragment]
///
/// cube_uv_reflection_fragment: string
external _i1.JSString cube_uv_reflection_fragment;

/// Property [defaultnormal_vertex]
///
/// defaultnormal_vertex: string
external _i1.JSString defaultnormal_vertex;

/// Property [displacementmap_pars_vertex]
///
/// displacementmap_pars_vertex: string
external _i1.JSString displacementmap_pars_vertex;

/// Property [displacementmap_vertex]
///
/// displacementmap_vertex: string
external _i1.JSString displacementmap_vertex;

/// Property [emissivemap_fragment]
///
/// emissivemap_fragment: string
external _i1.JSString emissivemap_fragment;

/// Property [emissivemap_pars_fragment]
///
/// emissivemap_pars_fragment: string
external _i1.JSString emissivemap_pars_fragment;

/// Property [colorspace_fragment]
///
/// colorspace_fragment: string
external _i1.JSString colorspace_fragment;

/// Property [colorspace_pars_fragment]
///
/// colorspace_pars_fragment: string
external _i1.JSString colorspace_pars_fragment;

/// Property [envmap_fragment]
///
/// envmap_fragment: string
external _i1.JSString envmap_fragment;

/// Property [envmap_common_pars_fragment]
///
/// envmap_common_pars_fragment: string
external _i1.JSString envmap_common_pars_fragment;

/// Property [envmap_pars_fragment]
///
/// envmap_pars_fragment: string
external _i1.JSString envmap_pars_fragment;

/// Property [envmap_pars_vertex]
///
/// envmap_pars_vertex: string
external _i1.JSString envmap_pars_vertex;

/// Property [envmap_physical_pars_fragment]
///
/// envmap_physical_pars_fragment: string
external _i1.JSString envmap_physical_pars_fragment;

/// Property [envmap_vertex]
///
/// envmap_vertex: string
external _i1.JSString envmap_vertex;

/// Property [fog_vertex]
///
/// fog_vertex: string
external _i1.JSString fog_vertex;

/// Property [fog_pars_vertex]
///
/// fog_pars_vertex: string
external _i1.JSString fog_pars_vertex;

/// Property [fog_fragment]
///
/// fog_fragment: string
external _i1.JSString fog_fragment;

/// Property [fog_pars_fragment]
///
/// fog_pars_fragment: string
external _i1.JSString fog_pars_fragment;

/// Property [gradientmap_pars_fragment]
///
/// gradientmap_pars_fragment: string
external _i1.JSString gradientmap_pars_fragment;

/// Property [lightmap_pars_fragment]
///
/// lightmap_pars_fragment: string
external _i1.JSString lightmap_pars_fragment;

/// Property [lights_lambert_fragment]
///
/// lights_lambert_fragment: string
external _i1.JSString lights_lambert_fragment;

/// Property [lights_lambert_pars_fragment]
///
/// lights_lambert_pars_fragment: string
external _i1.JSString lights_lambert_pars_fragment;

/// Property [lights_pars_begin]
///
/// lights_pars_begin: string
external _i1.JSString lights_pars_begin;

/// Property [lights_toon_fragment]
///
/// lights_toon_fragment: string
external _i1.JSString lights_toon_fragment;

/// Property [lights_toon_pars_fragment]
///
/// lights_toon_pars_fragment: string
external _i1.JSString lights_toon_pars_fragment;

/// Property [lights_phong_fragment]
///
/// lights_phong_fragment: string
external _i1.JSString lights_phong_fragment;

/// Property [lights_phong_pars_fragment]
///
/// lights_phong_pars_fragment: string
external _i1.JSString lights_phong_pars_fragment;

/// Property [lights_physical_fragment]
///
/// lights_physical_fragment: string
external _i1.JSString lights_physical_fragment;

/// Property [lights_physical_pars_fragment]
///
/// lights_physical_pars_fragment: string
external _i1.JSString lights_physical_pars_fragment;

/// Property [lights_fragment_begin]
///
/// lights_fragment_begin: string
external _i1.JSString lights_fragment_begin;

/// Property [lights_fragment_maps]
///
/// lights_fragment_maps: string
external _i1.JSString lights_fragment_maps;

/// Property [lights_fragment_end]
///
/// lights_fragment_end: string
external _i1.JSString lights_fragment_end;

/// Property [logdepthbuf_fragment]
///
/// logdepthbuf_fragment: string
external _i1.JSString logdepthbuf_fragment;

/// Property [logdepthbuf_pars_fragment]
///
/// logdepthbuf_pars_fragment: string
external _i1.JSString logdepthbuf_pars_fragment;

/// Property [logdepthbuf_pars_vertex]
///
/// logdepthbuf_pars_vertex: string
external _i1.JSString logdepthbuf_pars_vertex;

/// Property [logdepthbuf_vertex]
///
/// logdepthbuf_vertex: string
external _i1.JSString logdepthbuf_vertex;

/// Property [map_fragment]
///
/// map_fragment: string
external _i1.JSString map_fragment;

/// Property [map_pars_fragment]
///
/// map_pars_fragment: string
external _i1.JSString map_pars_fragment;

/// Property [map_particle_fragment]
///
/// map_particle_fragment: string
external _i1.JSString map_particle_fragment;

/// Property [map_particle_pars_fragment]
///
/// map_particle_pars_fragment: string
external _i1.JSString map_particle_pars_fragment;

/// Property [metalnessmap_fragment]
///
/// metalnessmap_fragment: string
external _i1.JSString metalnessmap_fragment;

/// Property [metalnessmap_pars_fragment]
///
/// metalnessmap_pars_fragment: string
external _i1.JSString metalnessmap_pars_fragment;

/// Property [morphcolor_vertex]
///
/// morphcolor_vertex: string
external _i1.JSString morphcolor_vertex;

/// Property [morphnormal_vertex]
///
/// morphnormal_vertex: string
external _i1.JSString morphnormal_vertex;

/// Property [morphtarget_pars_vertex]
///
/// morphtarget_pars_vertex: string
external _i1.JSString morphtarget_pars_vertex;

/// Property [morphtarget_vertex]
///
/// morphtarget_vertex: string
external _i1.JSString morphtarget_vertex;

/// Property [normal_fragment_begin]
///
/// normal_fragment_begin: string
external _i1.JSString normal_fragment_begin;

/// Property [normal_fragment_maps]
///
/// normal_fragment_maps: string
external _i1.JSString normal_fragment_maps;

/// Property [normal_pars_fragment]
///
/// normal_pars_fragment: string
external _i1.JSString normal_pars_fragment;

/// Property [normal_pars_vertex]
///
/// normal_pars_vertex: string
external _i1.JSString normal_pars_vertex;

/// Property [normal_vertex]
///
/// normal_vertex: string
external _i1.JSString normal_vertex;

/// Property [normalmap_pars_fragment]
///
/// normalmap_pars_fragment: string
external _i1.JSString normalmap_pars_fragment;

/// Property [clearcoat_normal_fragment_begin]
///
/// clearcoat_normal_fragment_begin: string
external _i1.JSString clearcoat_normal_fragment_begin;

/// Property [clearcoat_normal_fragment_maps]
///
/// clearcoat_normal_fragment_maps: string
external _i1.JSString clearcoat_normal_fragment_maps;

/// Property [clearcoat_pars_fragment]
///
/// clearcoat_pars_fragment: string
external _i1.JSString clearcoat_pars_fragment;

/// Property [iridescence_pars_fragment]
///
/// iridescence_pars_fragment: string
external _i1.JSString iridescence_pars_fragment;

/// Property [opaque_fragment]
///
/// opaque_fragment: string
external _i1.JSString opaque_fragment;

/// Property [packing]
///
/// packing: string
external _i1.JSString packing;

/// Property [premultiplied_alpha_fragment]
///
/// premultiplied_alpha_fragment: string
external _i1.JSString premultiplied_alpha_fragment;

/// Property [project_vertex]
///
/// project_vertex: string
external _i1.JSString project_vertex;

/// Property [dithering_fragment]
///
/// dithering_fragment: string
external _i1.JSString dithering_fragment;

/// Property [dithering_pars_fragment]
///
/// dithering_pars_fragment: string
external _i1.JSString dithering_pars_fragment;

/// Property [roughnessmap_fragment]
///
/// roughnessmap_fragment: string
external _i1.JSString roughnessmap_fragment;

/// Property [roughnessmap_pars_fragment]
///
/// roughnessmap_pars_fragment: string
external _i1.JSString roughnessmap_pars_fragment;

/// Property [shadowmap_pars_fragment]
///
/// shadowmap_pars_fragment: string
external _i1.JSString shadowmap_pars_fragment;

/// Property [shadowmap_pars_vertex]
///
/// shadowmap_pars_vertex: string
external _i1.JSString shadowmap_pars_vertex;

/// Property [shadowmap_vertex]
///
/// shadowmap_vertex: string
external _i1.JSString shadowmap_vertex;

/// Property [shadowmask_pars_fragment]
///
/// shadowmask_pars_fragment: string
external _i1.JSString shadowmask_pars_fragment;

/// Property [skinbase_vertex]
///
/// skinbase_vertex: string
external _i1.JSString skinbase_vertex;

/// Property [skinning_pars_vertex]
///
/// skinning_pars_vertex: string
external _i1.JSString skinning_pars_vertex;

/// Property [skinning_vertex]
///
/// skinning_vertex: string
external _i1.JSString skinning_vertex;

/// Property [skinnormal_vertex]
///
/// skinnormal_vertex: string
external _i1.JSString skinnormal_vertex;

/// Property [specularmap_fragment]
///
/// specularmap_fragment: string
external _i1.JSString specularmap_fragment;

/// Property [specularmap_pars_fragment]
///
/// specularmap_pars_fragment: string
external _i1.JSString specularmap_pars_fragment;

/// Property [tonemapping_fragment]
///
/// tonemapping_fragment: string
external _i1.JSString tonemapping_fragment;

/// Property [tonemapping_pars_fragment]
///
/// tonemapping_pars_fragment: string
external _i1.JSString tonemapping_pars_fragment;

/// Property [transmission_fragment]
///
/// transmission_fragment: string
external _i1.JSString transmission_fragment;

/// Property [transmission_pars_fragment]
///
/// transmission_pars_fragment: string
external _i1.JSString transmission_pars_fragment;

/// Property [uv_pars_fragment]
///
/// uv_pars_fragment: string
external _i1.JSString uv_pars_fragment;

/// Property [uv_pars_vertex]
///
/// uv_pars_vertex: string
external _i1.JSString uv_pars_vertex;

/// Property [uv_vertex]
///
/// uv_vertex: string
external _i1.JSString uv_vertex;

/// Property [worldpos_vertex]
///
/// worldpos_vertex: string
external _i1.JSString worldpos_vertex;

/// Property [background_vert]
///
/// background_vert: string
external _i1.JSString background_vert;

/// Property [background_frag]
///
/// background_frag: string
external _i1.JSString background_frag;

/// Property [backgroundCube_vert]
///
/// backgroundCube_vert: string
external _i1.JSString backgroundCube_vert;

/// Property [backgroundCube_frag]
///
/// backgroundCube_frag: string
external _i1.JSString backgroundCube_frag;

/// Property [cube_vert]
///
/// cube_vert: string
external _i1.JSString cube_vert;

/// Property [cube_frag]
///
/// cube_frag: string
external _i1.JSString cube_frag;

/// Property [depth_vert]
///
/// depth_vert: string
external _i1.JSString depth_vert;

/// Property [depth_frag]
///
/// depth_frag: string
external _i1.JSString depth_frag;

/// Property [distanceRGBA_vert]
///
/// distanceRGBA_vert: string
external _i1.JSString distanceRGBA_vert;

/// Property [distanceRGBA_frag]
///
/// distanceRGBA_frag: string
external _i1.JSString distanceRGBA_frag;

/// Property [equirect_vert]
///
/// equirect_vert: string
external _i1.JSString equirect_vert;

/// Property [equirect_frag]
///
/// equirect_frag: string
external _i1.JSString equirect_frag;

/// Property [linedashed_vert]
///
/// linedashed_vert: string
external _i1.JSString linedashed_vert;

/// Property [linedashed_frag]
///
/// linedashed_frag: string
external _i1.JSString linedashed_frag;

/// Property [meshbasic_vert]
///
/// meshbasic_vert: string
external _i1.JSString meshbasic_vert;

/// Property [meshbasic_frag]
///
/// meshbasic_frag: string
external _i1.JSString meshbasic_frag;

/// Property [meshlambert_vert]
///
/// meshlambert_vert: string
external _i1.JSString meshlambert_vert;

/// Property [meshlambert_frag]
///
/// meshlambert_frag: string
external _i1.JSString meshlambert_frag;

/// Property [meshmatcap_vert]
///
/// meshmatcap_vert: string
external _i1.JSString meshmatcap_vert;

/// Property [meshmatcap_frag]
///
/// meshmatcap_frag: string
external _i1.JSString meshmatcap_frag;

/// Property [meshnormal_vert]
///
/// meshnormal_vert: string
external _i1.JSString meshnormal_vert;

/// Property [meshnormal_frag]
///
/// meshnormal_frag: string
external _i1.JSString meshnormal_frag;

/// Property [meshphong_vert]
///
/// meshphong_vert: string
external _i1.JSString meshphong_vert;

/// Property [meshphong_frag]
///
/// meshphong_frag: string
external _i1.JSString meshphong_frag;

/// Property [meshphysical_vert]
///
/// meshphysical_vert: string
external _i1.JSString meshphysical_vert;

/// Property [meshphysical_frag]
///
/// meshphysical_frag: string
external _i1.JSString meshphysical_frag;

/// Property [meshtoon_vert]
///
/// meshtoon_vert: string
external _i1.JSString meshtoon_vert;

/// Property [meshtoon_frag]
///
/// meshtoon_frag: string
external _i1.JSString meshtoon_frag;

/// Property [points_vert]
///
/// points_vert: string
external _i1.JSString points_vert;

/// Property [points_frag]
///
/// points_frag: string
external _i1.JSString points_frag;

/// Property [shadow_vert]
///
/// shadow_vert: string
external _i1.JSString shadow_vert;

/// Property [shadow_frag]
///
/// shadow_frag: string
external _i1.JSString shadow_frag;

/// Property [sprite_vert]
///
/// sprite_vert: string
external _i1.JSString sprite_vert;

/// Property [sprite_frag]
///
/// sprite_frag: string
external _i1.JSString sprite_frag;

}
/// Interface [ShaderLibShader]
extension type ShaderLibShader.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [uniforms]
///
/// uniforms: ShaderLibShader$Uniforms$TypeLiteral
external ShaderLibShader$Uniforms$TypeLiteral uniforms;

/// Property [vertexShader]
///
/// vertexShader: string
external _i1.JSString vertexShader;

/// Property [fragmentShader]
///
/// fragmentShader: string
external _i1.JSString fragmentShader;

}
/// Variable [ShaderLib]
///
/// ShaderLib: ShaderLib$TypeLiteral
external ShaderLib$TypeLiteral ShaderLib;/// Interface [ShaderLibShader$Uniforms$TypeLiteral]
extension type ShaderLibShader$Uniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [ShaderLib$TypeLiteral]
extension type ShaderLib$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [basic]
///
/// basic: ShaderLibShader
external ShaderLibShader basic;

/// Property [lambert]
///
/// lambert: ShaderLibShader
external ShaderLibShader lambert;

/// Property [phong]
///
/// phong: ShaderLibShader
external ShaderLibShader phong;

/// Property [standard]
///
/// standard: ShaderLibShader
external ShaderLibShader standard;

/// Property [matcap]
///
/// matcap: ShaderLibShader
external ShaderLibShader matcap;

/// Property [points]
///
/// points: ShaderLibShader
external ShaderLibShader points;

/// Property [dashed]
///
/// dashed: ShaderLibShader
external ShaderLibShader dashed;

/// Property [depth]
///
/// depth: ShaderLibShader
external ShaderLibShader depth;

/// Property [normal]
///
/// normal: ShaderLibShader
external ShaderLibShader normal;

/// Property [sprite]
///
/// sprite: ShaderLibShader
external ShaderLibShader sprite;

/// Property [background]
///
/// background: ShaderLibShader
external ShaderLibShader background;

/// Property [cube]
///
/// cube: ShaderLibShader
external ShaderLibShader cube;

/// Property [equirect]
///
/// equirect: ShaderLibShader
external ShaderLibShader equirect;

/// Property [distance]
///
/// distance: ShaderLibShader
external ShaderLibShader distance;

/// Property [shadow]
///
/// shadow: ShaderLibShader
external ShaderLibShader shadow;

/// Property [physical]
///
/// physical: ShaderLibShader
external ShaderLibShader physical;

external void operator []=(_i1.JSString name, ShaderLibShader value, );
external ShaderLibShader operator [](_i1.JSString name);
}
/// Interface [IUniform]
extension type IUniform<TValue extends _i1.JSAny>.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: TValue
external TValue value;

}
/// Variable [UniformsLib]
///
/// UniformsLib: UniformsLib$TypeLiteral
external UniformsLib$TypeLiteral UniformsLib;/// Interface [UniformsLib$Common$TypeLiteral]
extension type UniformsLib$Common$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [diffuse]
///
/// diffuse: IUniform
external IUniform<Color> diffuse;

/// Property [opacity]
///
/// opacity: IUniform
external IUniform<_i1.JSNumber> opacity;

/// Property [map]
///
/// map: IUniform
external IUniform<_i1.JSAny> map;

/// Property [mapTransform]
///
/// mapTransform: IUniform
external IUniform<Matrix3> mapTransform;

/// Property [alphaMap]
///
/// alphaMap: IUniform
external IUniform<_i1.JSAny> alphaMap;

/// Property [alphaMapTransform]
///
/// alphaMapTransform: IUniform
external IUniform<Matrix3> alphaMapTransform;

/// Property [alphaTest]
///
/// alphaTest: IUniform
external IUniform<_i1.JSNumber> alphaTest;

}
/// Interface [UniformsLib$Specularmap$TypeLiteral]
extension type UniformsLib$Specularmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [specularMap]
///
/// specularMap: IUniform
external IUniform<_i1.JSAny> specularMap;

/// Property [specularMapTransform]
///
/// specularMapTransform: IUniform
external IUniform<Matrix3> specularMapTransform;

}
/// Interface [UniformsLib$Envmap$TypeLiteral]
extension type UniformsLib$Envmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [envMap]
///
/// envMap: IUniform
external IUniform<_i1.JSAny> envMap;

/// Property [envMapRotation]
///
/// envMapRotation: IUniform
external IUniform<Matrix3> envMapRotation;

/// Property [flipEnvMap]
///
/// flipEnvMap: IUniform
external IUniform<_i1.JSNumber> flipEnvMap;

/// Property [reflectivity]
///
/// reflectivity: IUniform
external IUniform<_i1.JSNumber> reflectivity;

/// Property [ior]
///
/// ior: IUniform
external IUniform<_i1.JSNumber> ior;

/// Property [refractRatio]
///
/// refractRatio: IUniform
external IUniform<_i1.JSNumber> refractRatio;

}
/// Interface [UniformsLib$Aomap$TypeLiteral]
extension type UniformsLib$Aomap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [aoMap]
///
/// aoMap: IUniform
external IUniform<_i1.JSAny> aoMap;

/// Property [aoMapIntensity]
///
/// aoMapIntensity: IUniform
external IUniform<_i1.JSNumber> aoMapIntensity;

/// Property [aoMapTransform]
///
/// aoMapTransform: IUniform
external IUniform<Matrix3> aoMapTransform;

}
/// Interface [UniformsLib$Lightmap$TypeLiteral]
extension type UniformsLib$Lightmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [lightMap]
///
/// lightMap: IUniform
external IUniform<_i1.JSNumber> lightMap;

/// Property [lightMapIntensity]
///
/// lightMapIntensity: IUniform
external IUniform<_i1.JSNumber> lightMapIntensity;

/// Property [lightMapTransform]
///
/// lightMapTransform: IUniform
external IUniform<Matrix3> lightMapTransform;

}
/// Interface [UniformsLib$Bumpmap$TypeLiteral]
extension type UniformsLib$Bumpmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [bumpMap]
///
/// bumpMap: IUniform
external IUniform<_i1.JSAny> bumpMap;

/// Property [bumpMapTransform]
///
/// bumpMapTransform: IUniform
external IUniform<Matrix3> bumpMapTransform;

/// Property [bumpScale]
///
/// bumpScale: IUniform
external IUniform<_i1.JSNumber> bumpScale;

}
/// Interface [UniformsLib$Normalmap$TypeLiteral]
extension type UniformsLib$Normalmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [normalMap]
///
/// normalMap: IUniform
external IUniform<_i1.JSAny> normalMap;

/// Property [normalMapTransform]
///
/// normalMapTransform: IUniform
external IUniform<Matrix3> normalMapTransform;

/// Property [normalScale]
///
/// normalScale: IUniform
external IUniform<Vector2> normalScale;

}
/// Interface [UniformsLib$Displacementmap$TypeLiteral]
extension type UniformsLib$Displacementmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [displacementMap]
///
/// displacementMap: IUniform
external IUniform<_i1.JSAny> displacementMap;

/// Property [displacementMapTransform]
///
/// displacementMapTransform: IUniform
external IUniform<Matrix3> displacementMapTransform;

/// Property [displacementScale]
///
/// displacementScale: IUniform
external IUniform<_i1.JSNumber> displacementScale;

/// Property [displacementBias]
///
/// displacementBias: IUniform
external IUniform<_i1.JSNumber> displacementBias;

}
/// Interface [UniformsLib$Emissivemap$TypeLiteral]
extension type UniformsLib$Emissivemap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [emissiveMap]
///
/// emissiveMap: IUniform
external IUniform<_i1.JSAny> emissiveMap;

/// Property [emissiveMapTransform]
///
/// emissiveMapTransform: IUniform
external IUniform<Matrix3> emissiveMapTransform;

}
/// Interface [UniformsLib$Metalnessmap$TypeLiteral]
extension type UniformsLib$Metalnessmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [metalnessMap]
///
/// metalnessMap: IUniform
external IUniform<_i1.JSAny> metalnessMap;

/// Property [metalnessMapTransform]
///
/// metalnessMapTransform: IUniform
external IUniform<Matrix3> metalnessMapTransform;

}
/// Interface [UniformsLib$Roughnessmap$TypeLiteral]
extension type UniformsLib$Roughnessmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [roughnessMap]
///
/// roughnessMap: IUniform
external IUniform<_i1.JSAny> roughnessMap;

/// Property [roughnessMapTransform]
///
/// roughnessMapTransform: IUniform
external IUniform<Matrix3> roughnessMapTransform;

}
/// Interface [UniformsLib$Gradientmap$TypeLiteral]
extension type UniformsLib$Gradientmap$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [gradientMap]
///
/// gradientMap: IUniform
external IUniform<_i1.JSAny> gradientMap;

}
/// Interface [UniformsLib$Fog$TypeLiteral]
extension type UniformsLib$Fog$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [fogDensity]
///
/// fogDensity: IUniform
external IUniform<_i1.JSNumber> fogDensity;

/// Property [fogNear]
///
/// fogNear: IUniform
external IUniform<_i1.JSNumber> fogNear;

/// Property [fogFar]
///
/// fogFar: IUniform
external IUniform<_i1.JSNumber> fogFar;

/// Property [fogColor]
///
/// fogColor: IUniform
external IUniform<Color> fogColor;

}
/// Interface [UniformsLib$Lights$DirectionalLights$Properties$Direction$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLights$Properties$Direction$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLights$Properties$Color$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLights$Properties$Color$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLights$Properties$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLights$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [direction]
///
/// direction: UniformsLib$Lights$DirectionalLights$Properties$Direction$TypeLiteral
external UniformsLib$Lights$DirectionalLights$Properties$Direction$TypeLiteral direction;

/// Property [color]
///
/// color: UniformsLib$Lights$DirectionalLights$Properties$Color$TypeLiteral
external UniformsLib$Lights$DirectionalLights$Properties$Color$TypeLiteral color;

}
/// Interface [UniformsLib$Lights$DirectionalLights$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$DirectionalLights$Properties$TypeLiteral
external UniformsLib$Lights$DirectionalLights$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowBias$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowNormalBias$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowNormalBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowRadius$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowRadius$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowMapSize$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowMapSize$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$Properties$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shadowIntensity]
///
/// shadowIntensity: number
external _i1.JSNumber shadowIntensity;

/// Property [shadowBias]
///
/// shadowBias: UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowBias$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowBias$TypeLiteral shadowBias;

/// Property [shadowNormalBias]
///
/// shadowNormalBias: UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowNormalBias$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowNormalBias$TypeLiteral shadowNormalBias;

/// Property [shadowRadius]
///
/// shadowRadius: UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowRadius$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowRadius$TypeLiteral shadowRadius;

/// Property [shadowMapSize]
///
/// shadowMapSize: UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowMapSize$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$Properties$ShadowMapSize$TypeLiteral shadowMapSize;

}
/// Interface [UniformsLib$Lights$DirectionalLightShadows$TypeLiteral]
extension type UniformsLib$Lights$DirectionalLightShadows$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$DirectionalLightShadows$Properties$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$SpotLights$Properties$Color$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$Color$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$Position$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$Position$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$Direction$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$Direction$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$Distance$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$Distance$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$ConeCos$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$ConeCos$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$PenumbraCos$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$PenumbraCos$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$Decay$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$Decay$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLights$Properties$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [color]
///
/// color: UniformsLib$Lights$SpotLights$Properties$Color$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$Color$TypeLiteral color;

/// Property [position]
///
/// position: UniformsLib$Lights$SpotLights$Properties$Position$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$Position$TypeLiteral position;

/// Property [direction]
///
/// direction: UniformsLib$Lights$SpotLights$Properties$Direction$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$Direction$TypeLiteral direction;

/// Property [distance]
///
/// distance: UniformsLib$Lights$SpotLights$Properties$Distance$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$Distance$TypeLiteral distance;

/// Property [coneCos]
///
/// coneCos: UniformsLib$Lights$SpotLights$Properties$ConeCos$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$ConeCos$TypeLiteral coneCos;

/// Property [penumbraCos]
///
/// penumbraCos: UniformsLib$Lights$SpotLights$Properties$PenumbraCos$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$PenumbraCos$TypeLiteral penumbraCos;

/// Property [decay]
///
/// decay: UniformsLib$Lights$SpotLights$Properties$Decay$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$Decay$TypeLiteral decay;

}
/// Interface [UniformsLib$Lights$SpotLights$TypeLiteral]
extension type UniformsLib$Lights$SpotLights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$SpotLights$Properties$TypeLiteral
external UniformsLib$Lights$SpotLights$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$SpotLightShadows$Properties$ShadowBias$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$Properties$ShadowBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLightShadows$Properties$ShadowNormalBias$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$Properties$ShadowNormalBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLightShadows$Properties$ShadowRadius$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$Properties$ShadowRadius$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLightShadows$Properties$ShadowMapSize$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$Properties$ShadowMapSize$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$SpotLightShadows$Properties$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shadowIntensity]
///
/// shadowIntensity: number
external _i1.JSNumber shadowIntensity;

/// Property [shadowBias]
///
/// shadowBias: UniformsLib$Lights$SpotLightShadows$Properties$ShadowBias$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$Properties$ShadowBias$TypeLiteral shadowBias;

/// Property [shadowNormalBias]
///
/// shadowNormalBias: UniformsLib$Lights$SpotLightShadows$Properties$ShadowNormalBias$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$Properties$ShadowNormalBias$TypeLiteral shadowNormalBias;

/// Property [shadowRadius]
///
/// shadowRadius: UniformsLib$Lights$SpotLightShadows$Properties$ShadowRadius$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$Properties$ShadowRadius$TypeLiteral shadowRadius;

/// Property [shadowMapSize]
///
/// shadowMapSize: UniformsLib$Lights$SpotLightShadows$Properties$ShadowMapSize$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$Properties$ShadowMapSize$TypeLiteral shadowMapSize;

}
/// Interface [UniformsLib$Lights$SpotLightShadows$TypeLiteral]
extension type UniformsLib$Lights$SpotLightShadows$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$SpotLightShadows$Properties$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$PointLights$Properties$Color$TypeLiteral]
extension type UniformsLib$Lights$PointLights$Properties$Color$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLights$Properties$Position$TypeLiteral]
extension type UniformsLib$Lights$PointLights$Properties$Position$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLights$Properties$Decay$TypeLiteral]
extension type UniformsLib$Lights$PointLights$Properties$Decay$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLights$Properties$Distance$TypeLiteral]
extension type UniformsLib$Lights$PointLights$Properties$Distance$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLights$Properties$TypeLiteral]
extension type UniformsLib$Lights$PointLights$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [color]
///
/// color: UniformsLib$Lights$PointLights$Properties$Color$TypeLiteral
external UniformsLib$Lights$PointLights$Properties$Color$TypeLiteral color;

/// Property [position]
///
/// position: UniformsLib$Lights$PointLights$Properties$Position$TypeLiteral
external UniformsLib$Lights$PointLights$Properties$Position$TypeLiteral position;

/// Property [decay]
///
/// decay: UniformsLib$Lights$PointLights$Properties$Decay$TypeLiteral
external UniformsLib$Lights$PointLights$Properties$Decay$TypeLiteral decay;

/// Property [distance]
///
/// distance: UniformsLib$Lights$PointLights$Properties$Distance$TypeLiteral
external UniformsLib$Lights$PointLights$Properties$Distance$TypeLiteral distance;

}
/// Interface [UniformsLib$Lights$PointLights$TypeLiteral]
extension type UniformsLib$Lights$PointLights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$PointLights$Properties$TypeLiteral
external UniformsLib$Lights$PointLights$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowBias$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowNormalBias$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowNormalBias$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowRadius$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowRadius$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowMapSize$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowMapSize$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraNear$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraNear$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraFar$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraFar$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$PointLightShadows$Properties$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shadowIntensity]
///
/// shadowIntensity: number
external _i1.JSNumber shadowIntensity;

/// Property [shadowBias]
///
/// shadowBias: UniformsLib$Lights$PointLightShadows$Properties$ShadowBias$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowBias$TypeLiteral shadowBias;

/// Property [shadowNormalBias]
///
/// shadowNormalBias: UniformsLib$Lights$PointLightShadows$Properties$ShadowNormalBias$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowNormalBias$TypeLiteral shadowNormalBias;

/// Property [shadowRadius]
///
/// shadowRadius: UniformsLib$Lights$PointLightShadows$Properties$ShadowRadius$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowRadius$TypeLiteral shadowRadius;

/// Property [shadowMapSize]
///
/// shadowMapSize: UniformsLib$Lights$PointLightShadows$Properties$ShadowMapSize$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowMapSize$TypeLiteral shadowMapSize;

/// Property [shadowCameraNear]
///
/// shadowCameraNear: UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraNear$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraNear$TypeLiteral shadowCameraNear;

/// Property [shadowCameraFar]
///
/// shadowCameraFar: UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraFar$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$ShadowCameraFar$TypeLiteral shadowCameraFar;

}
/// Interface [UniformsLib$Lights$PointLightShadows$TypeLiteral]
extension type UniformsLib$Lights$PointLightShadows$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$PointLightShadows$Properties$TypeLiteral
external UniformsLib$Lights$PointLightShadows$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$HemisphereLights$Properties$Direction$TypeLiteral]
extension type UniformsLib$Lights$HemisphereLights$Properties$Direction$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$HemisphereLights$Properties$Skycolor$TypeLiteral]
extension type UniformsLib$Lights$HemisphereLights$Properties$Skycolor$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$HemisphereLights$Properties$GroundColor$TypeLiteral]
extension type UniformsLib$Lights$HemisphereLights$Properties$GroundColor$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$HemisphereLights$Properties$TypeLiteral]
extension type UniformsLib$Lights$HemisphereLights$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [direction]
///
/// direction: UniformsLib$Lights$HemisphereLights$Properties$Direction$TypeLiteral
external UniformsLib$Lights$HemisphereLights$Properties$Direction$TypeLiteral direction;

/// Property [skycolor]
///
/// skycolor: UniformsLib$Lights$HemisphereLights$Properties$Skycolor$TypeLiteral
external UniformsLib$Lights$HemisphereLights$Properties$Skycolor$TypeLiteral skycolor;

/// Property [groundColor]
///
/// groundColor: UniformsLib$Lights$HemisphereLights$Properties$GroundColor$TypeLiteral
external UniformsLib$Lights$HemisphereLights$Properties$GroundColor$TypeLiteral groundColor;

}
/// Interface [UniformsLib$Lights$HemisphereLights$TypeLiteral]
extension type UniformsLib$Lights$HemisphereLights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$HemisphereLights$Properties$TypeLiteral
external UniformsLib$Lights$HemisphereLights$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$RectAreaLights$Properties$Color$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$Properties$Color$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$RectAreaLights$Properties$Position$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$Properties$Position$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$RectAreaLights$Properties$Width$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$Properties$Width$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$RectAreaLights$Properties$Height$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$Properties$Height$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [UniformsLib$Lights$RectAreaLights$Properties$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$Properties$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [color]
///
/// color: UniformsLib$Lights$RectAreaLights$Properties$Color$TypeLiteral
external UniformsLib$Lights$RectAreaLights$Properties$Color$TypeLiteral color;

/// Property [position]
///
/// position: UniformsLib$Lights$RectAreaLights$Properties$Position$TypeLiteral
external UniformsLib$Lights$RectAreaLights$Properties$Position$TypeLiteral position;

/// Property [width]
///
/// width: UniformsLib$Lights$RectAreaLights$Properties$Width$TypeLiteral
external UniformsLib$Lights$RectAreaLights$Properties$Width$TypeLiteral width;

/// Property [height]
///
/// height: UniformsLib$Lights$RectAreaLights$Properties$Height$TypeLiteral
external UniformsLib$Lights$RectAreaLights$Properties$Height$TypeLiteral height;

}
/// Interface [UniformsLib$Lights$RectAreaLights$TypeLiteral]
extension type UniformsLib$Lights$RectAreaLights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: []
external _i1.JSArray<_i1.JSAny> value;

/// Property [properties]
///
/// properties: UniformsLib$Lights$RectAreaLights$Properties$TypeLiteral
external UniformsLib$Lights$RectAreaLights$Properties$TypeLiteral properties;

}
/// Interface [UniformsLib$Lights$TypeLiteral]
extension type UniformsLib$Lights$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [ambientLightColor]
///
/// ambientLightColor: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> ambientLightColor;

/// Property [lightProbe]
///
/// lightProbe: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> lightProbe;

/// Property [directionalLights]
///
/// directionalLights: UniformsLib$Lights$DirectionalLights$TypeLiteral
external UniformsLib$Lights$DirectionalLights$TypeLiteral directionalLights;

/// Property [directionalLightShadows]
///
/// directionalLightShadows: UniformsLib$Lights$DirectionalLightShadows$TypeLiteral
external UniformsLib$Lights$DirectionalLightShadows$TypeLiteral directionalLightShadows;

/// Property [directionalShadowMatrix]
///
/// directionalShadowMatrix: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> directionalShadowMatrix;

/// Property [spotLights]
///
/// spotLights: UniformsLib$Lights$SpotLights$TypeLiteral
external UniformsLib$Lights$SpotLights$TypeLiteral spotLights;

/// Property [spotLightShadows]
///
/// spotLightShadows: UniformsLib$Lights$SpotLightShadows$TypeLiteral
external UniformsLib$Lights$SpotLightShadows$TypeLiteral spotLightShadows;

/// Property [spotLightMap]
///
/// spotLightMap: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> spotLightMap;

/// Property [spotLightMatrix]
///
/// spotLightMatrix: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> spotLightMatrix;

/// Property [pointLights]
///
/// pointLights: UniformsLib$Lights$PointLights$TypeLiteral
external UniformsLib$Lights$PointLights$TypeLiteral pointLights;

/// Property [pointLightShadows]
///
/// pointLightShadows: UniformsLib$Lights$PointLightShadows$TypeLiteral
external UniformsLib$Lights$PointLightShadows$TypeLiteral pointLightShadows;

/// Property [pointShadowMatrix]
///
/// pointShadowMatrix: IUniform
external IUniform<_i1.JSArray<_i1.JSAny>> pointShadowMatrix;

/// Property [hemisphereLights]
///
/// hemisphereLights: UniformsLib$Lights$HemisphereLights$TypeLiteral
external UniformsLib$Lights$HemisphereLights$TypeLiteral hemisphereLights;

/// Property [rectAreaLights]
///
/// rectAreaLights: UniformsLib$Lights$RectAreaLights$TypeLiteral
external UniformsLib$Lights$RectAreaLights$TypeLiteral rectAreaLights;

/// Property [ltc_one]
///
/// ltc_one: IUniform
@_i1.JS('ltc_1') external IUniform<_i1.JSAny> ltc_one;

/// Property [ltc_two]
///
/// ltc_two: IUniform
@_i1.JS('ltc_2') external IUniform<_i1.JSAny> ltc_two;

}
/// Interface [UniformsLib$Points$TypeLiteral]
extension type UniformsLib$Points$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [diffuse]
///
/// diffuse: IUniform
external IUniform<Color> diffuse;

/// Property [opacity]
///
/// opacity: IUniform
external IUniform<_i1.JSNumber> opacity;

/// Property [size]
///
/// size: IUniform
external IUniform<_i1.JSNumber> size;

/// Property [scale]
///
/// scale: IUniform
external IUniform<_i1.JSNumber> scale;

/// Property [map]
///
/// map: IUniform
external IUniform<_i1.JSAny> map;

/// Property [alphaMap]
///
/// alphaMap: IUniform
external IUniform<_i1.JSAny> alphaMap;

/// Property [alphaTest]
///
/// alphaTest: IUniform
external IUniform<_i1.JSNumber> alphaTest;

/// Property [uvTransform]
///
/// uvTransform: IUniform
external IUniform<Matrix3> uvTransform;

}
/// Interface [UniformsLib$Sprite$TypeLiteral]
extension type UniformsLib$Sprite$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [diffuse]
///
/// diffuse: IUniform
external IUniform<Color> diffuse;

/// Property [opacity]
///
/// opacity: IUniform
external IUniform<_i1.JSNumber> opacity;

/// Property [center]
///
/// center: IUniform
external IUniform<Vector2> center;

/// Property [rotation]
///
/// rotation: IUniform
external IUniform<_i1.JSNumber> rotation;

/// Property [map]
///
/// map: IUniform
external IUniform<_i1.JSAny> map;

/// Property [mapTransform]
///
/// mapTransform: IUniform
external IUniform<Matrix3> mapTransform;

/// Property [alphaMap]
///
/// alphaMap: IUniform
external IUniform<_i1.JSAny> alphaMap;

/// Property [alphaTest]
///
/// alphaTest: IUniform
external IUniform<_i1.JSNumber> alphaTest;

}
/// Interface [UniformsLib$TypeLiteral]
extension type UniformsLib$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [common]
///
/// common: UniformsLib$Common$TypeLiteral
external UniformsLib$Common$TypeLiteral common;

/// Property [specularmap]
///
/// specularmap: UniformsLib$Specularmap$TypeLiteral
external UniformsLib$Specularmap$TypeLiteral specularmap;

/// Property [envmap]
///
/// envmap: UniformsLib$Envmap$TypeLiteral
external UniformsLib$Envmap$TypeLiteral envmap;

/// Property [aomap]
///
/// aomap: UniformsLib$Aomap$TypeLiteral
external UniformsLib$Aomap$TypeLiteral aomap;

/// Property [lightmap]
///
/// lightmap: UniformsLib$Lightmap$TypeLiteral
external UniformsLib$Lightmap$TypeLiteral lightmap;

/// Property [bumpmap]
///
/// bumpmap: UniformsLib$Bumpmap$TypeLiteral
external UniformsLib$Bumpmap$TypeLiteral bumpmap;

/// Property [normalmap]
///
/// normalmap: UniformsLib$Normalmap$TypeLiteral
external UniformsLib$Normalmap$TypeLiteral normalmap;

/// Property [displacementmap]
///
/// displacementmap: UniformsLib$Displacementmap$TypeLiteral
external UniformsLib$Displacementmap$TypeLiteral displacementmap;

/// Property [emissivemap]
///
/// emissivemap: UniformsLib$Emissivemap$TypeLiteral
external UniformsLib$Emissivemap$TypeLiteral emissivemap;

/// Property [metalnessmap]
///
/// metalnessmap: UniformsLib$Metalnessmap$TypeLiteral
external UniformsLib$Metalnessmap$TypeLiteral metalnessmap;

/// Property [roughnessmap]
///
/// roughnessmap: UniformsLib$Roughnessmap$TypeLiteral
external UniformsLib$Roughnessmap$TypeLiteral roughnessmap;

/// Property [gradientmap]
///
/// gradientmap: UniformsLib$Gradientmap$TypeLiteral
external UniformsLib$Gradientmap$TypeLiteral gradientmap;

/// Property [fog]
///
/// fog: UniformsLib$Fog$TypeLiteral
external UniformsLib$Fog$TypeLiteral fog;

/// Property [lights]
///
/// lights: UniformsLib$Lights$TypeLiteral
external UniformsLib$Lights$TypeLiteral lights;

/// Property [points]
///
/// points: UniformsLib$Points$TypeLiteral
external UniformsLib$Points$TypeLiteral points;

/// Property [sprite]
///
/// sprite: UniformsLib$Sprite$TypeLiteral
external UniformsLib$Sprite$TypeLiteral sprite;

}
/// Method [cloneUniforms]
///
/// Type Parameters:
/// - T extends CloneUniforms$TypeLiteral
///
/// Parameters:
/// - uniformsSrc: T
@_i1.JS('cloneUniforms') external T cloneUniforms<T extends CloneUniforms$TypeLiteral>(T uniformsSrc);/// Method [mergeUniforms]
///
/// Parameters:
/// - uniforms: Array
@_i1.JS('mergeUniforms') external MergeUniforms$TypeLiteral mergeUniforms(_i2.Array<MergeUniforms$Uniforms$TypeLiteral> uniforms);/// Method [cloneUniformsGroups]
///
/// Parameters:
/// - src: UniformsGroup[]
@_i1.JS('cloneUniformsGroups') external _i1.JSArray<UniformsGroup> cloneUniformsGroups(_i1.JSArray<UniformsGroup> src);/// Variable [UniformsUtils]
///
/// UniformsUtils: UniformsUtils$TypeLiteral
external UniformsUtils$TypeLiteral UniformsUtils;/// Interface [CloneUniforms$TypeLiteral]
extension type CloneUniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [MergeUniforms$Uniforms$TypeLiteral]
extension type MergeUniforms$Uniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [MergeUniforms$TypeLiteral]
extension type MergeUniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [UniformsUtils$TypeLiteral]
extension type UniformsUtils$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [clone]
///
/// clone: typeof cloneUniforms
external _i1.JSString clone;

/// Property [merge]
///
/// merge: typeof mergeUniforms
external _i1.JSString merge;

}
/// Interface [WebGLAttribute]
extension type WebGLAttribute.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [buffer]
///
/// buffer: WebGLBuffer
external _i3.WebGLBuffer buffer;

/// Property [type]
///
/// type: number
external _i1.JSNumber type;

/// Property [bytesPerElement]
///
/// bytesPerElement: number
external _i1.JSNumber bytesPerElement;

/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [size]
///
/// size: number
external _i1.JSNumber size;

}
/// Class [WebGLAttributes]
extension type WebGLAttributes.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext | WebGL2RenderingContext
external WebGLAttributes(_i1.JSAny gl);

/// Method [get]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute | GLBufferAttribute
external WebGLAttribute? get(_i1.JSAny attribute);
/// Method [remove]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute | GLBufferAttribute
external void remove(_i1.JSAny attribute);
/// Method [update]
///
/// Parameters:
/// - attribute: BufferAttribute | InterleavedBufferAttribute | GLBufferAttribute
/// - bufferType: number
external void update(_i1.JSAny attribute, _i1.JSNumber bufferType, );
}
/// Class [WebGLBindingStates]
extension type WebGLBindingStates.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - attributes: WebGLAttributes
external WebGLBindingStates(_i3.WebGLRenderingContext gl, WebGLAttributes attributes, );

/// Method [setup]
///
/// Parameters:
/// - object: Object3D
/// - material: Material
/// - program: WebGLProgram
/// - geometry: BufferGeometry
/// - index: BufferAttribute
external void setup(Object3D<Object3DEventMap> object, Material material, _i3.WebGLProgram program, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, BufferAttribute index, );
/// Method [reset]
external void reset();
/// Method [resetDefaultState]
external void resetDefaultState();
/// Method [dispose]
external void dispose();
/// Method [releaseStatesOfGeometry]
external void releaseStatesOfGeometry();
/// Method [releaseStatesOfProgram]
external void releaseStatesOfProgram();
/// Method [initAttributes]
external void initAttributes();
/// Method [enableAttribute]
///
/// Parameters:
/// - attribute: number
external void enableAttribute(_i1.JSNumber attribute);
/// Method [disableUnusedAttributes]
external void disableUnusedAttributes();
}
/// Class [WebGLBufferRenderer]
extension type WebGLBufferRenderer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - extensions: WebGLExtensions
/// - info: WebGLInfo
external WebGLBufferRenderer(_i3.WebGLRenderingContext gl, WebGLExtensions extensions, WebGLInfo info, );

/// Property [setMode]
///
/// setMode: (value: any) => void
external _i1.JSFunction setMode;

/// Property [render]
///
/// render: (start: any, count: number) => void
external _i1.JSFunction render;

/// Property [renderInstances]
///
/// renderInstances: (start: any, count: number, primcount: number) => void
external _i1.JSFunction renderInstances;

/// Property [renderMultiDraw]
///
/// renderMultiDraw: (starts: Int32Array, counts: Int32Array, drawCount: number) => void
external _i1.JSFunction renderMultiDraw;

/// Property [renderMultiDrawInstances]
///
/// renderMultiDrawInstances: (starts: Int32Array, counts: Int32Array, drawCount: number, primcount: Int32Array) => void
external _i1.JSFunction renderMultiDrawInstances;

}
/// Interface [WebGLCapabilitiesParameters]
extension type WebGLCapabilitiesParameters.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [precision]
///
/// precision?: string | undefined
external _i1.JSString? precision;

/// Property [logarithmicDepthBuffer]
///
/// logarithmicDepthBuffer?: boolean | undefined
external _i1.JSBoolean? logarithmicDepthBuffer;

/// Property [reversedDepthBuffer]
///
/// reversedDepthBuffer?: boolean | undefined
external _i1.JSBoolean? reversedDepthBuffer;

}
/// Class [WebGLCapabilities]
extension type WebGLCapabilities.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - extensions: any
/// - parameters: WebGLCapabilitiesParameters
external WebGLCapabilities(_i3.WebGLRenderingContext gl, _i1.JSAny extensions, WebGLCapabilitiesParameters parameters, );

/// Property [getMaxAnisotropy]
///
/// getMaxAnisotropy: () => number
external _i1.JSFunction getMaxAnisotropy;

/// Property [getMaxPrecision]
///
/// getMaxPrecision: (precision: string) => string
external _i1.JSFunction getMaxPrecision;

/// Property [textureFormatReadable]
///
/// textureFormatReadable: (textureFormat: PixelFormat) => boolean
external _i1.JSFunction textureFormatReadable;

/// Property [textureTypeReadable]
///
/// textureTypeReadable: (textureType: TextureDataType) => boolean
external _i1.JSFunction textureTypeReadable;

/// Property [precision]
///
/// precision: string
external _i1.JSString precision;

/// Property [logarithmicDepthBuffer]
///
/// logarithmicDepthBuffer: boolean
external _i1.JSBoolean logarithmicDepthBuffer;

/// Property [reversedDepthBuffer]
///
/// reversedDepthBuffer: boolean
external _i1.JSBoolean reversedDepthBuffer;

/// Property [maxTextures]
///
/// maxTextures: number
external _i1.JSNumber maxTextures;

/// Property [maxVertexTextures]
///
/// maxVertexTextures: number
external _i1.JSNumber maxVertexTextures;

/// Property [maxTextureSize]
///
/// maxTextureSize: number
external _i1.JSNumber maxTextureSize;

/// Property [maxCubemapSize]
///
/// maxCubemapSize: number
external _i1.JSNumber maxCubemapSize;

/// Property [maxAttributes]
///
/// maxAttributes: number
external _i1.JSNumber maxAttributes;

/// Property [maxVertexUniforms]
///
/// maxVertexUniforms: number
external _i1.JSNumber maxVertexUniforms;

/// Property [maxVaryings]
///
/// maxVaryings: number
external _i1.JSNumber maxVaryings;

/// Property [maxFragmentUniforms]
///
/// maxFragmentUniforms: number
external _i1.JSNumber maxFragmentUniforms;

/// Property [maxSamples]
///
/// maxSamples: number
external _i1.JSNumber maxSamples;

/// Property [samples]
///
/// samples: number
external _i1.JSNumber samples;

/// Property [isWebGLtwo]
///
/// readonly isWebGLtwo: boolean
@_i1.JS('isWebGL2') external _i1.JSBoolean get isWebGLtwo;
}
/// Class [WebGLClipping]
extension type WebGLClipping.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - properties: WebGLProperties
external WebGLClipping(WebGLProperties properties);

/// Property [uniform]
///
/// uniform: WebGLClipping$Uniform$TypeLiteral
external WebGLClipping$Uniform$TypeLiteral uniform;

/// Property [numPlanes]
///
/// numPlanes: number
external _i1.JSNumber numPlanes;

/// Property [numIntersection]
///
/// numIntersection: number
external _i1.JSNumber numIntersection;

/// Method [init]
///
/// Parameters:
/// - planes: any[]
/// - enableLocalClipping: boolean
external _i1.JSBoolean init(_i1.JSArray<_i1.JSAny> planes, _i1.JSBoolean enableLocalClipping, );
/// Method [beginShadows]
external void beginShadows();
/// Method [endShadows]
external void endShadows();
/// Method [setGlobalState]
///
/// Parameters:
/// - planes: Plane[]
/// - camera: Camera
external void setGlobalState(_i1.JSArray<Plane> planes, Camera camera, );
/// Method [setState]
///
/// Parameters:
/// - material: Material
/// - camera: Camera
/// - useCache: boolean
external void setState(Material material, Camera camera, _i1.JSBoolean useCache, );
}
/// Interface [WebGLClipping$Uniform$TypeLiteral]
extension type WebGLClipping$Uniform$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [value]
///
/// value: any
external _i1.JSAny value;

/// Property [needsUpdate]
///
/// needsUpdate: boolean
external _i1.JSBoolean needsUpdate;

}
/// Class [WebGLEnvironments]
extension type WebGLEnvironments.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [get]
///
/// Parameters:
/// - texture: Texture
external Texture<_i1.JSAny>? get(Texture<_i1.JSAny> texture);
/// Method [dispose]
external void dispose();
}
/// Class [WebGLExtensions]
extension type WebGLExtensions.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
external WebGLExtensions(_i3.WebGLRenderingContext gl);

/// Method [has]
///
/// Parameters:
/// - name: string
external _i1.JSBoolean has(_i1.JSString name);
/// Method [init]
external void init();
/// Method [get]
///
/// Parameters:
/// - name: string
external _i1.JSAny get(_i1.JSString name);
}
/// Class [WebGLGeometries]
extension type WebGLGeometries.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - attributes: WebGLAttributes
/// - info: WebGLInfo
external WebGLGeometries(_i3.WebGLRenderingContext gl, WebGLAttributes attributes, WebGLInfo info, );

/// Method [get]
///
/// Parameters:
/// - object: Object3D
/// - geometry: BufferGeometry
external BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> get(Object3D<Object3DEventMap> object, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, );
/// Method [update]
///
/// Parameters:
/// - geometry: BufferGeometry
external void update(BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry);
/// Method [getWireframeAttribute]
///
/// Parameters:
/// - geometry: BufferGeometry
external BufferAttribute getWireframeAttribute(BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry);
}
/// Class [WebGLIndexedBufferRenderer]
extension type WebGLIndexedBufferRenderer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - extensions: WebGLExtensions
/// - info: WebGLInfo
external WebGLIndexedBufferRenderer(_i3.WebGLRenderingContext gl, WebGLExtensions extensions, WebGLInfo info, );

/// Property [setMode]
///
/// setMode: (value: number) => void
external _i1.JSFunction setMode;

/// Property [setIndex]
///
/// setIndex: (value: WebGLAttribute) => void
external _i1.JSFunction setIndex;

/// Property [render]
///
/// render: (start: number, count: number) => void
external _i1.JSFunction render;

/// Property [renderInstances]
///
/// renderInstances: (start: number, count: number, primcount: number) => void
external _i1.JSFunction renderInstances;

/// Property [renderMultiDraw]
///
/// renderMultiDraw: (starts: Int32Array, counts: Int32Array, drawCount: number) => void
external _i1.JSFunction renderMultiDraw;

/// Property [renderMultiDrawInstances]
///
/// renderMultiDrawInstances: (starts: Int32Array, counts: Int32Array, drawCount: number, primcount: Int32Array) => void
external _i1.JSFunction renderMultiDrawInstances;

}
/// Class [WebGLInfo]
extension type WebGLInfo.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
external WebGLInfo(_i3.WebGLRenderingContext gl);

/// Property [autoReset]
///
/// autoReset: boolean
external _i1.JSBoolean autoReset;

/// Property [memory]
///
/// memory: WebGLInfo$Memory$TypeLiteral
external WebGLInfo$Memory$TypeLiteral memory;

/// Property [programs]
///
/// programs: WebGLProgram[] | null
external _i1.JSArray<_i3.WebGLProgram> programs;

/// Property [render]
///
/// render: WebGLInfo$Render$TypeLiteral
external WebGLInfo$Render$TypeLiteral render;

/// Method [update]
///
/// Parameters:
/// - count: number
/// - mode: number
/// - instanceCount: number
external void update(_i1.JSNumber count, _i1.JSNumber mode, _i1.JSNumber instanceCount, );
/// Method [reset]
external void reset();
}
/// Interface [WebGLInfo$Memory$TypeLiteral]
extension type WebGLInfo$Memory$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [geometries]
///
/// geometries: number
external _i1.JSNumber geometries;

/// Property [textures]
///
/// textures: number
external _i1.JSNumber textures;

}
/// Interface [WebGLInfo$Render$TypeLiteral]
extension type WebGLInfo$Render$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [calls]
///
/// calls: number
external _i1.JSNumber calls;

/// Property [frame]
///
/// frame: number
external _i1.JSNumber frame;

/// Property [lines]
///
/// lines: number
external _i1.JSNumber lines;

/// Property [points]
///
/// points: number
external _i1.JSNumber points;

/// Property [triangles]
///
/// triangles: number
external _i1.JSNumber triangles;

}
/// Interface [WebGLLightsState]
extension type WebGLLightsState.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [version]
///
/// version: number
external _i1.JSNumber version;

/// Property [hash]
///
/// hash: WebGLLightsState$Hash$TypeLiteral
external WebGLLightsState$Hash$TypeLiteral hash;

/// Property [ambient]
///
/// ambient: number[]
external _i1.JSArray<_i1.JSNumber> ambient;

/// Property [probe]
///
/// probe: []
external _i1.JSArray<_i1.JSAny> probe;

/// Property [directional]
///
/// directional: []
external _i1.JSArray<_i1.JSAny> directional;

/// Property [directionalShadow]
///
/// directionalShadow: []
external _i1.JSArray<_i1.JSAny> directionalShadow;

/// Property [directionalShadowMap]
///
/// directionalShadowMap: []
external _i1.JSArray<_i1.JSAny> directionalShadowMap;

/// Property [directionalShadowMatrix]
///
/// directionalShadowMatrix: []
external _i1.JSArray<_i1.JSAny> directionalShadowMatrix;

/// Property [spot]
///
/// spot: []
external _i1.JSArray<_i1.JSAny> spot;

/// Property [spotShadow]
///
/// spotShadow: []
external _i1.JSArray<_i1.JSAny> spotShadow;

/// Property [spotShadowMap]
///
/// spotShadowMap: []
external _i1.JSArray<_i1.JSAny> spotShadowMap;

/// Property [spotShadowMatrix]
///
/// spotShadowMatrix: []
external _i1.JSArray<_i1.JSAny> spotShadowMatrix;

/// Property [rectArea]
///
/// rectArea: []
external _i1.JSArray<_i1.JSAny> rectArea;

/// Property [point]
///
/// point: []
external _i1.JSArray<_i1.JSAny> point;

/// Property [pointShadow]
///
/// pointShadow: []
external _i1.JSArray<_i1.JSAny> pointShadow;

/// Property [pointShadowMap]
///
/// pointShadowMap: []
external _i1.JSArray<_i1.JSAny> pointShadowMap;

/// Property [pointShadowMatrix]
///
/// pointShadowMatrix: []
external _i1.JSArray<_i1.JSAny> pointShadowMatrix;

/// Property [hemi]
///
/// hemi: []
external _i1.JSArray<_i1.JSAny> hemi;

/// Property [numSpotLightShadowsWithMaps]
///
/// numSpotLightShadowsWithMaps: number
external _i1.JSNumber numSpotLightShadowsWithMaps;

/// Property [numLightProbes]
///
/// numLightProbes: number
external _i1.JSNumber numLightProbes;

}
/// Class [WebGLLights]
extension type WebGLLights.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - extensions: WebGLExtensions
external WebGLLights(WebGLExtensions extensions);

/// Property [state]
///
/// state: WebGLLightsState
external WebGLLightsState state;

/// Method [setup]
///
/// Parameters:
/// - lights: Light[]
external void setup(_i1.JSArray<Light> lights);
/// Method [setupView]
///
/// Parameters:
/// - lights: Light[]
/// - camera: Camera
external void setupView(_i1.JSArray<Light> lights, Camera camera, );
}
/// Interface [WebGLLightsState$Hash$TypeLiteral]
extension type WebGLLightsState$Hash$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [directionalLength]
///
/// directionalLength: number
external _i1.JSNumber directionalLength;

/// Property [pointLength]
///
/// pointLength: number
external _i1.JSNumber pointLength;

/// Property [spotLength]
///
/// spotLength: number
external _i1.JSNumber spotLength;

/// Property [rectAreaLength]
///
/// rectAreaLength: number
external _i1.JSNumber rectAreaLength;

/// Property [hemiLength]
///
/// hemiLength: number
external _i1.JSNumber hemiLength;

/// Property [numDirectionalShadows]
///
/// numDirectionalShadows: number
external _i1.JSNumber numDirectionalShadows;

/// Property [numPointShadows]
///
/// numPointShadows: number
external _i1.JSNumber numPointShadows;

/// Property [numSpotShadows]
///
/// numSpotShadows: number
external _i1.JSNumber numSpotShadows;

/// Property [numSpotMaps]
///
/// numSpotMaps: number
external _i1.JSNumber numSpotMaps;

/// Property [numLightProbes]
///
/// numLightProbes: number
external _i1.JSNumber numLightProbes;

}
/// Class [WebGLObjects]
extension type WebGLObjects.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - geometries: WebGLGeometries
/// - attributes: WebGLAttributes
/// - bindingStates: WebGLBindingStates
/// - info: WebGLInfo
external WebGLObjects(_i3.WebGLRenderingContext gl, WebGLGeometries geometries, WebGLAttributes attributes, WebGLBindingStates bindingStates, WebGLInfo info, );

/// Method [update]
///
/// Parameters:
/// - object: Object3D
external BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> update(Object3D<Object3DEventMap> object);
/// Method [dispose]
external void dispose();
}
/// Class [WebGLProgram]
extension type WebGLProgram.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - cacheKey: string
/// - parameters: object
external WebGLProgram(WebGLRenderer renderer, _i1.JSString cacheKey, _i1.JSObject parameters, );

/// Property [name]
///
/// name: string
external _i1.JSString name;

/// Property [id]
///
/// id: number
external _i1.JSNumber id;

/// Property [cacheKey]
///
/// cacheKey: string
external _i1.JSString cacheKey;

/// Property [usedTimes]
///
/// usedTimes: number
external _i1.JSNumber usedTimes;

/// Property [program]
///
/// program: 
external _i1.JSAny program;

/// Property [vertexShader]
///
/// vertexShader: WebGLShader
external _i3.WebGLShader vertexShader;

/// Property [fragmentShader]
///
/// fragmentShader: WebGLShader
external _i3.WebGLShader fragmentShader;

/// Method [getUniforms]
external WebGLUniforms getUniforms();
/// Method [getAttributes]
external _i1.JSAny getAttributes();
/// Method [destroy]
external void destroy();
}
/// Interface [WebGLProgramParameters]
extension type WebGLProgramParameters.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [shaderID]
///
/// shaderID: string
external _i1.JSString shaderID;

/// Property [shaderType]
///
/// shaderType: string
external _i1.JSString shaderType;

/// Property [shaderName]
///
/// shaderName: string
external _i1.JSString shaderName;

/// Property [vertexShader]
///
/// vertexShader: string
external _i1.JSString vertexShader;

/// Property [fragmentShader]
///
/// fragmentShader: string
external _i1.JSString fragmentShader;

/// Property [defines]
///
/// defines: WebGLProgramParameters$Defines$TypeLiteral | undefined
external WebGLProgramParameters$Defines$TypeLiteral defines;

/// Property [customVertexShaderID]
///
/// customVertexShaderID: string | undefined
external _i1.JSString customVertexShaderID;

/// Property [customFragmentShaderID]
///
/// customFragmentShaderID: string | undefined
external _i1.JSString customFragmentShaderID;

/// Property [isRawShaderMaterial]
///
/// isRawShaderMaterial: boolean
external _i1.JSBoolean isRawShaderMaterial;

/// Property [glslVersion]
///
/// glslVersion: GLSLVersion | null | undefined
external GLSLVersion glslVersion;

/// Property [precision]
///
/// precision: "lowp" | "mediump" | "highp"
external _i1.JSString precision;

/// Property [batching]
///
/// batching: boolean
external _i1.JSBoolean batching;

/// Property [batchingColor]
///
/// batchingColor: boolean
external _i1.JSBoolean batchingColor;

/// Property [instancing]
///
/// instancing: boolean
external _i1.JSBoolean instancing;

/// Property [instancingColor]
///
/// instancingColor: boolean
external _i1.JSBoolean instancingColor;

/// Property [instancingMorph]
///
/// instancingMorph: boolean
external _i1.JSBoolean instancingMorph;

/// Property [outputColorSpace]
///
/// outputColorSpace: string
external _i1.JSString outputColorSpace;

/// Property [alphaToCoverage]
///
/// alphaToCoverage: boolean
external _i1.JSBoolean alphaToCoverage;

/// Property [map]
///
/// map: boolean
external _i1.JSBoolean map;

/// Property [matcap]
///
/// matcap: boolean
external _i1.JSBoolean matcap;

/// Property [envMap]
///
/// envMap: boolean
external _i1.JSBoolean envMap;

/// Property [envMapMode]
///
/// envMapMode: Mapping | false
external _i1.JSAny envMapMode;

/// Property [envMapCubeUVHeight]
///
/// envMapCubeUVHeight: number | null
external _i1.JSNumber envMapCubeUVHeight;

/// Property [aoMap]
///
/// aoMap: boolean
external _i1.JSBoolean aoMap;

/// Property [lightMap]
///
/// lightMap: boolean
external _i1.JSBoolean lightMap;

/// Property [bumpMap]
///
/// bumpMap: boolean
external _i1.JSBoolean bumpMap;

/// Property [normalMap]
///
/// normalMap: boolean
external _i1.JSBoolean normalMap;

/// Property [displacementMap]
///
/// displacementMap: boolean
external _i1.JSBoolean displacementMap;

/// Property [emissiveMap]
///
/// emissiveMap: boolean
external _i1.JSBoolean emissiveMap;

/// Property [normalMapObjectSpace]
///
/// normalMapObjectSpace: boolean
external _i1.JSBoolean normalMapObjectSpace;

/// Property [normalMapTangentSpace]
///
/// normalMapTangentSpace: boolean
external _i1.JSBoolean normalMapTangentSpace;

/// Property [metalnessMap]
///
/// metalnessMap: boolean
external _i1.JSBoolean metalnessMap;

/// Property [roughnessMap]
///
/// roughnessMap: boolean
external _i1.JSBoolean roughnessMap;

/// Property [anisotropy]
///
/// anisotropy: boolean
external _i1.JSBoolean anisotropy;

/// Property [anisotropyMap]
///
/// anisotropyMap: boolean
external _i1.JSBoolean anisotropyMap;

/// Property [clearcoat]
///
/// clearcoat: boolean
external _i1.JSBoolean clearcoat;

/// Property [clearcoatMap]
///
/// clearcoatMap: boolean
external _i1.JSBoolean clearcoatMap;

/// Property [clearcoatNormalMap]
///
/// clearcoatNormalMap: boolean
external _i1.JSBoolean clearcoatNormalMap;

/// Property [clearcoatRoughnessMap]
///
/// clearcoatRoughnessMap: boolean
external _i1.JSBoolean clearcoatRoughnessMap;

/// Property [dispersion]
///
/// dispersion: boolean
external _i1.JSBoolean dispersion;

/// Property [iridescence]
///
/// iridescence: boolean
external _i1.JSBoolean iridescence;

/// Property [iridescenceMap]
///
/// iridescenceMap: boolean
external _i1.JSBoolean iridescenceMap;

/// Property [iridescenceThicknessMap]
///
/// iridescenceThicknessMap: boolean
external _i1.JSBoolean iridescenceThicknessMap;

/// Property [sheen]
///
/// sheen: boolean
external _i1.JSBoolean sheen;

/// Property [sheenColorMap]
///
/// sheenColorMap: boolean
external _i1.JSBoolean sheenColorMap;

/// Property [sheenRoughnessMap]
///
/// sheenRoughnessMap: boolean
external _i1.JSBoolean sheenRoughnessMap;

/// Property [specularMap]
///
/// specularMap: boolean
external _i1.JSBoolean specularMap;

/// Property [specularColorMap]
///
/// specularColorMap: boolean
external _i1.JSBoolean specularColorMap;

/// Property [specularIntensityMap]
///
/// specularIntensityMap: boolean
external _i1.JSBoolean specularIntensityMap;

/// Property [transmission]
///
/// transmission: boolean
external _i1.JSBoolean transmission;

/// Property [transmissionMap]
///
/// transmissionMap: boolean
external _i1.JSBoolean transmissionMap;

/// Property [thicknessMap]
///
/// thicknessMap: boolean
external _i1.JSBoolean thicknessMap;

/// Property [gradientMap]
///
/// gradientMap: boolean
external _i1.JSBoolean gradientMap;

/// Property [opaque]
///
/// opaque: boolean
external _i1.JSBoolean opaque;

/// Property [alphaMap]
///
/// alphaMap: boolean
external _i1.JSBoolean alphaMap;

/// Property [alphaTest]
///
/// alphaTest: boolean
external _i1.JSBoolean alphaTest;

/// Property [alphaHash]
///
/// alphaHash: boolean
external _i1.JSBoolean alphaHash;

/// Property [combine]
///
/// combine: Combine | undefined
external Combine combine;

/// Property [mapUv]
///
/// mapUv: string | false
external _i1.JSAny mapUv;

/// Property [aoMapUv]
///
/// aoMapUv: string | false
external _i1.JSAny aoMapUv;

/// Property [lightMapUv]
///
/// lightMapUv: string | false
external _i1.JSAny lightMapUv;

/// Property [bumpMapUv]
///
/// bumpMapUv: string | false
external _i1.JSAny bumpMapUv;

/// Property [normalMapUv]
///
/// normalMapUv: string | false
external _i1.JSAny normalMapUv;

/// Property [displacementMapUv]
///
/// displacementMapUv: string | false
external _i1.JSAny displacementMapUv;

/// Property [emissiveMapUv]
///
/// emissiveMapUv: string | false
external _i1.JSAny emissiveMapUv;

/// Property [metalnessMapUv]
///
/// metalnessMapUv: string | false
external _i1.JSAny metalnessMapUv;

/// Property [roughnessMapUv]
///
/// roughnessMapUv: string | false
external _i1.JSAny roughnessMapUv;

/// Property [anisotropyMapUv]
///
/// anisotropyMapUv: string | false
external _i1.JSAny anisotropyMapUv;

/// Property [clearcoatMapUv]
///
/// clearcoatMapUv: string | false
external _i1.JSAny clearcoatMapUv;

/// Property [clearcoatNormalMapUv]
///
/// clearcoatNormalMapUv: string | false
external _i1.JSAny clearcoatNormalMapUv;

/// Property [clearcoatRoughnessMapUv]
///
/// clearcoatRoughnessMapUv: string | false
external _i1.JSAny clearcoatRoughnessMapUv;

/// Property [iridescenceMapUv]
///
/// iridescenceMapUv: string | false
external _i1.JSAny iridescenceMapUv;

/// Property [iridescenceThicknessMapUv]
///
/// iridescenceThicknessMapUv: string | false
external _i1.JSAny iridescenceThicknessMapUv;

/// Property [sheenColorMapUv]
///
/// sheenColorMapUv: string | false
external _i1.JSAny sheenColorMapUv;

/// Property [sheenRoughnessMapUv]
///
/// sheenRoughnessMapUv: string | false
external _i1.JSAny sheenRoughnessMapUv;

/// Property [specularMapUv]
///
/// specularMapUv: string | false
external _i1.JSAny specularMapUv;

/// Property [specularColorMapUv]
///
/// specularColorMapUv: string | false
external _i1.JSAny specularColorMapUv;

/// Property [specularIntensityMapUv]
///
/// specularIntensityMapUv: string | false
external _i1.JSAny specularIntensityMapUv;

/// Property [transmissionMapUv]
///
/// transmissionMapUv: string | false
external _i1.JSAny transmissionMapUv;

/// Property [thicknessMapUv]
///
/// thicknessMapUv: string | false
external _i1.JSAny thicknessMapUv;

/// Property [alphaMapUv]
///
/// alphaMapUv: string | false
external _i1.JSAny alphaMapUv;

/// Property [vertexTangents]
///
/// vertexTangents: boolean
external _i1.JSBoolean vertexTangents;

/// Property [vertexColors]
///
/// vertexColors: boolean
external _i1.JSBoolean vertexColors;

/// Property [vertexAlphas]
///
/// vertexAlphas: boolean
external _i1.JSBoolean vertexAlphas;

/// Property [vertexUvones]
///
/// vertexUvones: boolean
@_i1.JS('vertexUv1s') external _i1.JSBoolean vertexUvones;

/// Property [vertexUvtwos]
///
/// vertexUvtwos: boolean
@_i1.JS('vertexUv2s') external _i1.JSBoolean vertexUvtwos;

/// Property [vertexUvthrees]
///
/// vertexUvthrees: boolean
@_i1.JS('vertexUv3s') external _i1.JSBoolean vertexUvthrees;

/// Property [pointsUvs]
///
/// pointsUvs: boolean
external _i1.JSBoolean pointsUvs;

/// Property [fog]
///
/// fog: boolean
external _i1.JSBoolean fog;

/// Property [useFog]
///
/// useFog: boolean
external _i1.JSBoolean useFog;

/// Property [fogExptwo]
///
/// fogExptwo: boolean
@_i1.JS('fogExp2') external _i1.JSBoolean fogExptwo;

/// Property [flatShading]
///
/// flatShading: boolean
external _i1.JSBoolean flatShading;

/// Property [sizeAttenuation]
///
/// sizeAttenuation: boolean
external _i1.JSBoolean sizeAttenuation;

/// Property [logarithmicDepthBuffer]
///
/// logarithmicDepthBuffer: boolean
external _i1.JSBoolean logarithmicDepthBuffer;

/// Property [reverseDepthBuffer]
///
/// reverseDepthBuffer: boolean
external _i1.JSBoolean reverseDepthBuffer;

/// Property [skinning]
///
/// skinning: boolean
external _i1.JSBoolean skinning;

/// Property [morphTargets]
///
/// morphTargets: boolean
external _i1.JSBoolean morphTargets;

/// Property [morphNormals]
///
/// morphNormals: boolean
external _i1.JSBoolean morphNormals;

/// Property [morphColors]
///
/// morphColors: boolean
external _i1.JSBoolean morphColors;

/// Property [morphTargetsCount]
///
/// morphTargetsCount: number
external _i1.JSNumber morphTargetsCount;

/// Property [morphTextureStride]
///
/// morphTextureStride: number
external _i1.JSNumber morphTextureStride;

/// Property [numDirLights]
///
/// numDirLights: number
external _i1.JSNumber numDirLights;

/// Property [numPointLights]
///
/// numPointLights: number
external _i1.JSNumber numPointLights;

/// Property [numSpotLights]
///
/// numSpotLights: number
external _i1.JSNumber numSpotLights;

/// Property [numSpotLightMaps]
///
/// numSpotLightMaps: number
external _i1.JSNumber numSpotLightMaps;

/// Property [numRectAreaLights]
///
/// numRectAreaLights: number
external _i1.JSNumber numRectAreaLights;

/// Property [numHemiLights]
///
/// numHemiLights: number
external _i1.JSNumber numHemiLights;

/// Property [numDirLightShadows]
///
/// numDirLightShadows: number
external _i1.JSNumber numDirLightShadows;

/// Property [numPointLightShadows]
///
/// numPointLightShadows: number
external _i1.JSNumber numPointLightShadows;

/// Property [numSpotLightShadows]
///
/// numSpotLightShadows: number
external _i1.JSNumber numSpotLightShadows;

/// Property [numSpotLightShadowsWithMaps]
///
/// numSpotLightShadowsWithMaps: number
external _i1.JSNumber numSpotLightShadowsWithMaps;

/// Property [numLightProbes]
///
/// numLightProbes: number
external _i1.JSNumber numLightProbes;

/// Property [numClippingPlanes]
///
/// numClippingPlanes: number
external _i1.JSNumber numClippingPlanes;

/// Property [numClipIntersection]
///
/// numClipIntersection: number
external _i1.JSNumber numClipIntersection;

/// Property [dithering]
///
/// dithering: boolean
external _i1.JSBoolean dithering;

/// Property [shadowMapEnabled]
///
/// shadowMapEnabled: boolean
external _i1.JSBoolean shadowMapEnabled;

/// Property [shadowMapType]
///
/// shadowMapType: ShadowMapType
external ShadowMapType shadowMapType;

/// Property [toneMapping]
///
/// toneMapping: ToneMapping
external ToneMapping toneMapping;

/// Property [decodeVideoTexture]
///
/// decodeVideoTexture: boolean
external _i1.JSBoolean decodeVideoTexture;

/// Property [decodeVideoTextureEmissive]
///
/// decodeVideoTextureEmissive: boolean
external _i1.JSBoolean decodeVideoTextureEmissive;

/// Property [premultipliedAlpha]
///
/// premultipliedAlpha: boolean
external _i1.JSBoolean premultipliedAlpha;

/// Property [doubleSided]
///
/// doubleSided: boolean
external _i1.JSBoolean doubleSided;

/// Property [flipSided]
///
/// flipSided: boolean
external _i1.JSBoolean flipSided;

/// Property [useDepthPacking]
///
/// useDepthPacking: boolean
external _i1.JSBoolean useDepthPacking;

/// Property [depthPacking]
///
/// depthPacking: DepthPackingStrategies | 0
external _i1.JSAny depthPacking;

/// Property [indexzeroAttributeName]
///
/// indexzeroAttributeName: string | undefined
@_i1.JS('index0AttributeName') external _i1.JSString indexzeroAttributeName;

/// Property [extensionClipCullDistance]
///
/// extensionClipCullDistance: boolean
external _i1.JSBoolean extensionClipCullDistance;

/// Property [extensionMultiDraw]
///
/// extensionMultiDraw: boolean
external _i1.JSBoolean extensionMultiDraw;

/// Property [rendererExtensionParallelShaderCompile]
///
/// rendererExtensionParallelShaderCompile: boolean
external _i1.JSBoolean rendererExtensionParallelShaderCompile;

/// Property [customProgramCacheKey]
///
/// customProgramCacheKey: string
external _i1.JSString customProgramCacheKey;

}
/// Interface [WebGLProgramParametersWithUniforms]
extension type WebGLProgramParametersWithUniforms.$(_i1.JSObject _) implements WebGLProgramParameters {
/// Property [uniforms]
///
/// uniforms: WebGLProgramParametersWithUniforms$Uniforms$TypeLiteral
external WebGLProgramParametersWithUniforms$Uniforms$TypeLiteral uniforms;

}
/// Class [WebGLPrograms]
extension type WebGLPrograms.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - environments: WebGLEnvironments
/// - extensions: WebGLExtensions
/// - capabilities: WebGLCapabilities
/// - bindingStates: WebGLBindingStates
/// - clipping: WebGLClipping
external WebGLPrograms(WebGLRenderer renderer, WebGLEnvironments environments, WebGLExtensions extensions, WebGLCapabilities capabilities, WebGLBindingStates bindingStates, WebGLClipping clipping, );

/// Property [programs]
///
/// programs: WebGLProgram[]
external _i1.JSArray<_i3.WebGLProgram> programs;

/// Method [getParameters]
///
/// Parameters:
/// - material: Material
/// - lights: WebGLLightsState
/// - shadows: Light[]
/// - scene: Scene
/// - object: Object3D
external WebGLProgramParameters getParameters(Material material, WebGLLightsState lights, _i1.JSArray<Light> shadows, Scene scene, Object3D<Object3DEventMap> object, );
/// Method [getProgramCacheKey]
///
/// Parameters:
/// - parameters: WebGLProgramParameters
external _i1.JSString getProgramCacheKey(WebGLProgramParameters parameters);
/// Method [getUniforms]
///
/// Parameters:
/// - material: Material
external WebGLPrograms$GetUniforms$TypeLiteral getUniforms(Material material);
/// Method [acquireProgram]
///
/// Parameters:
/// - parameters: WebGLProgramParametersWithUniforms
/// - cacheKey: string
external _i3.WebGLProgram acquireProgram(WebGLProgramParametersWithUniforms parameters, _i1.JSString cacheKey, );
/// Method [releaseProgram]
///
/// Parameters:
/// - program: WebGLProgram
external void releaseProgram(_i3.WebGLProgram program);
}
/// Interface [WebGLProgramParameters$Defines$TypeLiteral]
extension type WebGLProgramParameters$Defines$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString define, _i1.JSAny value, );
external _i1.JSAny operator [](_i1.JSString define);
}
/// Interface [WebGLProgramParametersWithUniforms$Uniforms$TypeLiteral]
extension type WebGLProgramParametersWithUniforms$Uniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Interface [WebGLPrograms$GetUniforms$TypeLiteral]
extension type WebGLPrograms$GetUniforms$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
external void operator []=(_i1.JSString uniform, IUniform<_i1.JSAny> value, );
external IUniform<_i1.JSAny> operator [](_i1.JSString uniform);
}
/// Class [WebGLProperties]
extension type WebGLProperties.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebGLProperties();

/// Property [has]
///
/// has: (object: ) => boolean
external _i1.JSFunction has;

/// Property [get]
///
/// get: (object: ) => 
external _i1.JSFunction get;

/// Property [remove]
///
/// remove: (object: ) => void
external _i1.JSFunction remove;

/// Property [update]
///
/// update: (object: , key: , value: ) => 
external _i1.JSFunction update;

/// Property [dispose]
///
/// dispose: () => void
external _i1.JSFunction dispose;

}
/// Interface [RenderItem]
extension type RenderItem.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [id]
///
/// id: number
external _i1.JSNumber id;

/// Property [object]
///
/// object: Object3D
external Object3D<Object3DEventMap> object;

/// Property [geometry]
///
/// geometry: BufferGeometry | null
external BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry;

/// Property [material]
///
/// material: Material
external Material material;

/// Property [materialVariant]
///
/// materialVariant: number
external _i1.JSNumber materialVariant;

/// Property [groupOrder]
///
/// groupOrder: number
external _i1.JSNumber groupOrder;

/// Property [renderOrder]
///
/// renderOrder: number
external _i1.JSNumber renderOrder;

/// Property [z]
///
/// z: number
external _i1.JSNumber z;

/// Property [group]
///
/// group: Group | null
external Group<Object3DEventMap> group;

}
/// Class [WebGLRenderList]
extension type WebGLRenderList.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - properties: WebGLProperties
external WebGLRenderList(WebGLProperties properties);

/// Property [opaque]
///
/// opaque: RenderItem[]
external _i1.JSArray<RenderItem> opaque;

/// Property [transparent]
///
/// transparent: RenderItem[]
external _i1.JSArray<RenderItem> transparent;

/// Property [transmissive]
///
/// transmissive: RenderItem[]
external _i1.JSArray<RenderItem> transmissive;

/// Method [init]
external void init();
/// Method [push]
///
/// Parameters:
/// - object: Object3D
/// - geometry: BufferGeometry | null
/// - material: Material
/// - groupOrder: number
/// - z: number
/// - group: Group | null
external void push(Object3D<Object3DEventMap> object, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>? geometry, Material material, _i1.JSNumber groupOrder, _i1.JSNumber z, Group<Object3DEventMap>? group, );
/// Method [unshift]
///
/// Parameters:
/// - object: Object3D
/// - geometry: BufferGeometry | null
/// - material: Material
/// - groupOrder: number
/// - z: number
/// - group: Group | null
external void unshift(Object3D<Object3DEventMap> object, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>? geometry, Material material, _i1.JSNumber groupOrder, _i1.JSNumber z, Group<Object3DEventMap>? group, );
/// Method [sort]
///
/// Parameters:
/// - opaqueSort: (a: any, b: any) => number
/// - transparentSort: (a: any, b: any) => number
external void sort(_i1.JSFunction opaqueSort, _i1.JSFunction transparentSort, );
/// Method [finish]
external void finish();
}
/// Class [WebGLRenderLists]
extension type WebGLRenderLists.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - properties: WebGLProperties
external WebGLRenderLists(WebGLProperties properties);

/// Method [dispose]
external void dispose();
/// Method [get]
///
/// Parameters:
/// - scene: Scene
/// - renderCallDepth: number
external WebGLRenderList get(Scene scene, _i1.JSNumber renderCallDepth, );
}
/// Method [WebGLShader]
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - type: string
/// - string: string
@_i1.JS('WebGLShader') external _i3.WebGLShader WebGLShader(_i3.WebGLRenderingContext gl, _i1.JSString type, _i1.JSString string, );/// Class [WebGLShadowMap]
extension type WebGLShadowMap.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - _renderer: WebGLRenderer
/// - _objects: WebGLObjects
/// - _capabilities: WebGLCapabilities
external WebGLShadowMap(WebGLRenderer _renderer, WebGLObjects _objects, WebGLCapabilities _capabilities, );

/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [autoUpdate]
///
/// autoUpdate: boolean
external _i1.JSBoolean autoUpdate;

/// Property [needsUpdate]
///
/// needsUpdate: boolean
external _i1.JSBoolean needsUpdate;

/// Property [type]
///
/// type: ShadowMapType
external ShadowMapType type;

/// Method [render]
///
/// Parameters:
/// - shadowsArray: Light[]
/// - scene: Scene
/// - camera: Camera
external void render(_i1.JSArray<Light> shadowsArray, Scene scene, Camera camera, );
}
/// Class [WebGLColorBuffer]
extension type WebGLColorBuffer.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [setMask]
///
/// Parameters:
/// - colorMask: boolean
external void setMask(_i1.JSBoolean colorMask);
/// Method [setLocked]
///
/// Parameters:
/// - lock: boolean
external void setLocked(_i1.JSBoolean lock);
/// Method [setClear]
///
/// Parameters:
/// - r: number
/// - g: number
/// - b: number
/// - a: number
/// - premultipliedAlpha: boolean
external void setClear(_i1.JSNumber r, _i1.JSNumber g, _i1.JSNumber b, _i1.JSNumber a, _i1.JSBoolean premultipliedAlpha, );
/// Method [reset]
external void reset();
}
/// Class [WebGLDepthBuffer]
extension type WebGLDepthBuffer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebGLDepthBuffer();

/// Method [setReversed]
///
/// Parameters:
/// - value: boolean
external void setReversed(_i1.JSBoolean value);
/// Method [getReversed]
external _i1.JSBoolean getReversed();
/// Method [setTest]
///
/// Parameters:
/// - depthTest: boolean
external void setTest(_i1.JSBoolean depthTest);
/// Method [setMask]
///
/// Parameters:
/// - depthMask: boolean
external void setMask(_i1.JSBoolean depthMask);
/// Method [setFunc]
///
/// Parameters:
/// - depthFunc: DepthModes
external void setFunc(DepthModes depthFunc);
/// Method [setLocked]
///
/// Parameters:
/// - lock: boolean
external void setLocked(_i1.JSBoolean lock);
/// Method [setClear]
///
/// Parameters:
/// - depth: number
external void setClear(_i1.JSNumber depth);
/// Method [reset]
external void reset();
}
/// Class [WebGLStencilBuffer]
extension type WebGLStencilBuffer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebGLStencilBuffer();

/// Method [setTest]
///
/// Parameters:
/// - stencilTest: boolean
external void setTest(_i1.JSBoolean stencilTest);
/// Method [setMask]
///
/// Parameters:
/// - stencilMask: number
external void setMask(_i1.JSNumber stencilMask);
/// Method [setFunc]
///
/// Parameters:
/// - stencilFunc: number
/// - stencilRef: number
/// - stencilMask: number
external void setFunc(_i1.JSNumber stencilFunc, _i1.JSNumber stencilRef, _i1.JSNumber stencilMask, );
/// Method [setOp]
///
/// Parameters:
/// - stencilFail: number
/// - stencilZFail: number
/// - stencilZPass: number
external void setOp(_i1.JSNumber stencilFail, _i1.JSNumber stencilZFail, _i1.JSNumber stencilZPass, );
/// Method [setLocked]
///
/// Parameters:
/// - lock: boolean
external void setLocked(_i1.JSBoolean lock);
/// Method [setClear]
///
/// Parameters:
/// - stencil: number
external void setClear(_i1.JSNumber stencil);
/// Method [reset]
external void reset();
}
/// Class [WebGLState]
extension type WebGLState.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - extensions: WebGLExtensions
external WebGLState(_i3.WebGLRenderingContext gl, WebGLExtensions extensions, );

/// Property [buffers]
///
/// buffers: WebGLState$Buffers$TypeLiteral
external WebGLState$Buffers$TypeLiteral buffers;

/// Method [enable]
///
/// Parameters:
/// - id: number
external void enable(_i1.JSNumber id);
/// Method [disable]
///
/// Parameters:
/// - id: number
external void disable(_i1.JSNumber id);
/// Method [bindFramebuffer]
///
/// Parameters:
/// - target: number
/// - framebuffer: WebGLFramebuffer | null
external void bindFramebuffer(_i1.JSNumber target, _i3.WebGLFramebuffer? framebuffer, );
/// Method [drawBuffers]
///
/// Parameters:
/// - renderTarget: WebGLRenderTarget | null
/// - framebuffer: WebGLFramebuffer | null
external void drawBuffers(WebGLRenderTarget<Texture<_i1.JSAny>>? renderTarget, _i3.WebGLFramebuffer? framebuffer, );
/// Method [useProgram]
///
/// Parameters:
/// - program: WebGLProgram
external _i1.JSBoolean useProgram(_i3.WebGLProgram program);
/// Method [setBlending]
///
/// Parameters:
/// - blending: Blending
/// - blendEquation: BlendingEquation
/// - blendSrc: BlendingSrcFactor
/// - blendDst: BlendingDstFactor
/// - blendEquationAlpha: BlendingEquation
/// - blendSrcAlpha: BlendingSrcFactor
/// - blendDstAlpha: BlendingDstFactor
/// - premultiplyAlpha: boolean
external void setBlending(Blending blending, [BlendingEquation blendEquation, BlendingSrcFactor blendSrc, BlendingDstFactor blendDst, BlendingEquation blendEquationAlpha, BlendingSrcFactor blendSrcAlpha, BlendingDstFactor blendDstAlpha, _i1.JSBoolean premultiplyAlpha, ]);
/// Method [setMaterial]
///
/// Parameters:
/// - material: Material
/// - frontFaceCW: boolean
/// - hardwareClippingPlanes: number
external void setMaterial(Material material, _i1.JSBoolean frontFaceCW, _i1.JSNumber hardwareClippingPlanes, );
/// Method [setFlipSided]
///
/// Parameters:
/// - flipSided: boolean
external void setFlipSided(_i1.JSBoolean flipSided);
/// Method [setCullFace]
///
/// Parameters:
/// - cullFace: CullFace
external void setCullFace(CullFace cullFace);
/// Method [setLineWidth]
///
/// Parameters:
/// - width: number
external void setLineWidth(_i1.JSNumber width);
/// Method [setPolygonOffset]
///
/// Parameters:
/// - polygonoffset: boolean
/// - factor: number
/// - units: number
external void setPolygonOffset(_i1.JSBoolean polygonoffset, [_i1.JSNumber factor, _i1.JSNumber units, ]);
/// Method [setScissorTest]
///
/// Parameters:
/// - scissorTest: boolean
external void setScissorTest(_i1.JSBoolean scissorTest);
/// Method [activeTexture]
///
/// Parameters:
/// - webglSlot: number
external void activeTexture(_i1.JSNumber webglSlot);
/// Method [bindTexture]
///
/// Parameters:
/// - webglType: number
/// - webglTexture: WebGLTexture
/// - webglSlot: number
external void bindTexture(_i1.JSNumber webglType, _i3.WebGLTexture webglTexture, [_i1.JSNumber webglSlot, ]);
/// Method [unbindTexture]
external void unbindTexture();
/// Method [compressedTexImage2D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - imageSize: GLsizei
/// - offset: GLintptr
@_i1.JS('compressedTexImage2D') external void compressedTexImage2D$1(_i3.GLenum target, _i3.GLint level, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.GLsizei imageSize, _i3.GLintptr offset, );
/// Method [compressedTexImage2D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - srcData: ArrayBufferView
/// - srcOffset: number
/// - srcLengthOverride: GLuint
@_i1.JS('compressedTexImage2D') external void compressedTexImage2D$2(_i3.GLenum target, _i3.GLint level, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.ArrayBufferView srcData, [_i1.JSNumber srcOffset, _i3.GLuint srcLengthOverride, ]);
/// Method [compressedTexImage3D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - imageSize: GLsizei
/// - offset: GLintptr
@_i1.JS('compressedTexImage3D') external void compressedTexImage3D$1(_i3.GLenum target, _i3.GLint level, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.GLsizei imageSize, _i3.GLintptr offset, );
/// Method [compressedTexImage3D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - srcData: ArrayBufferView
/// - srcOffset: number
/// - srcLengthOverride: GLuint
@_i1.JS('compressedTexImage3D') external void compressedTexImage3D$2(_i3.GLenum target, _i3.GLint level, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.ArrayBufferView srcData, [_i1.JSNumber srcOffset, _i3.GLuint srcLengthOverride, ]);
/// Method [texSubImage2D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - pixels: ArrayBufferView | null
@_i1.JS('texSubImage2D') external void texSubImage2D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView? pixels, );
/// Method [texSubImage2D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texSubImage2D') external void texSubImage2D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texSubImage2D$3]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - pboOffset: GLintptr
@_i1.JS('texSubImage2D') external void texSubImage2D$3(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.GLenum type, _i3.GLintptr pboOffset, );
/// Method [texSubImage2D$4]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texSubImage2D') external void texSubImage2D$4(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texSubImage2D$5]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - srcData: ArrayBufferView
/// - srcOffset: number
@_i1.JS('texSubImage2D') external void texSubImage2D$5(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView srcData, _i1.JSNumber srcOffset, );
/// Method [texSubImage3D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - zoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - pboOffset: GLintptr
@_i1.JS('texSubImage3D') external void texSubImage3D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLint zoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLenum format, _i3.GLenum type, _i3.GLintptr pboOffset, );
/// Method [texSubImage3D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - zoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texSubImage3D') external void texSubImage3D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLint zoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texSubImage3D$3]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - zoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - format: GLenum
/// - type: GLenum
/// - srcData: ArrayBufferView | null
/// - srcOffset: number
@_i1.JS('texSubImage3D') external void texSubImage3D$3(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLint zoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView? srcData, [_i1.JSNumber srcOffset, ]);
/// Method [compressedTexSubImage2D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - imageSize: GLsizei
/// - offset: GLintptr
@_i1.JS('compressedTexSubImage2D') external void compressedTexSubImage2D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.GLsizei imageSize, _i3.GLintptr offset, );
/// Method [compressedTexSubImage2D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - format: GLenum
/// - srcData: ArrayBufferView
/// - srcOffset: number
/// - srcLengthOverride: GLuint
@_i1.JS('compressedTexSubImage2D') external void compressedTexSubImage2D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLenum format, _i3.ArrayBufferView srcData, [_i1.JSNumber srcOffset, _i3.GLuint srcLengthOverride, ]);
/// Method [compressedTexSubImage3D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - zoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - format: GLenum
/// - imageSize: GLsizei
/// - offset: GLintptr
@_i1.JS('compressedTexSubImage3D') external void compressedTexSubImage3D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLint zoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLenum format, _i3.GLsizei imageSize, _i3.GLintptr offset, );
/// Method [compressedTexSubImage3D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - xoffset: GLint
/// - yoffset: GLint
/// - zoffset: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - format: GLenum
/// - srcData: ArrayBufferView
/// - srcOffset: number
/// - srcLengthOverride: GLuint
@_i1.JS('compressedTexSubImage3D') external void compressedTexSubImage3D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint xoffset, _i3.GLint yoffset, _i3.GLint zoffset, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLenum format, _i3.ArrayBufferView srcData, [_i1.JSNumber srcOffset, _i3.GLuint srcLengthOverride, ]);
/// Method [texStorage2D]
///
/// Parameters:
/// - target: GLenum
/// - levels: GLsizei
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
external void texStorage2D(_i3.GLenum target, _i3.GLsizei levels, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, );
/// Method [texStorage3D]
///
/// Parameters:
/// - target: GLenum
/// - levels: GLsizei
/// - internalformat: GLenum
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
external void texStorage3D(_i3.GLenum target, _i3.GLsizei levels, _i3.GLenum internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, );
/// Method [texImage2D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - pixels: ArrayBufferView | null
@_i1.JS('texImage2D') external void texImage2D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView? pixels, );
/// Method [texImage2D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texImage2D') external void texImage2D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texImage2D$3]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - pboOffset: GLintptr
@_i1.JS('texImage2D') external void texImage2D$3(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.GLintptr pboOffset, );
/// Method [texImage2D$4]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texImage2D') external void texImage2D$4(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texImage2D$5]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - srcData: ArrayBufferView
/// - srcOffset: number
@_i1.JS('texImage2D') external void texImage2D$5(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView srcData, _i1.JSNumber srcOffset, );
/// Method [texImage3D$1]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - pboOffset: GLintptr
@_i1.JS('texImage3D') external void texImage3D$1(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.GLintptr pboOffset, );
/// Method [texImage3D$2]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - source: TexImageSource
@_i1.JS('texImage3D') external void texImage3D$2(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.TexImageSource source, );
/// Method [texImage3D$3]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - srcData: ArrayBufferView | null
@_i1.JS('texImage3D') external void texImage3D$3(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView? srcData, );
/// Method [texImage3D$4]
///
/// Parameters:
/// - target: GLenum
/// - level: GLint
/// - internalformat: GLint
/// - width: GLsizei
/// - height: GLsizei
/// - depth: GLsizei
/// - border: GLint
/// - format: GLenum
/// - type: GLenum
/// - srcData: ArrayBufferView
/// - srcOffset: number
@_i1.JS('texImage3D') external void texImage3D$4(_i3.GLenum target, _i3.GLint level, _i3.GLint internalformat, _i3.GLsizei width, _i3.GLsizei height, _i3.GLsizei depth, _i3.GLint border, _i3.GLenum format, _i3.GLenum type, _i3.ArrayBufferView srcData, _i1.JSNumber srcOffset, );
/// Method [scissor]
///
/// Parameters:
/// - scissor: Vector4
external void scissor(Vector4 scissor);
/// Method [viewport]
///
/// Parameters:
/// - viewport: Vector4
external void viewport(Vector4 viewport);
/// Method [reset]
external void reset();
}
/// Interface [WebGLState$Buffers$TypeLiteral]
extension type WebGLState$Buffers$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [color]
///
/// color: WebGLColorBuffer
external WebGLColorBuffer color;

/// Property [depth]
///
/// depth: WebGLDepthBuffer
external WebGLDepthBuffer depth;

/// Property [stencil]
///
/// stencil: WebGLStencilBuffer
external WebGLStencilBuffer stencil;

}
/// Class [WebGLTextures]
extension type WebGLTextures.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - extensions: WebGLExtensions
/// - state: WebGLState
/// - properties: WebGLProperties
/// - capabilities: WebGLCapabilities
/// - utils: WebGLUtils
/// - info: WebGLInfo
external WebGLTextures(_i3.WebGLRenderingContext gl, WebGLExtensions extensions, WebGLState state, WebGLProperties properties, WebGLCapabilities capabilities, WebGLUtils utils, WebGLInfo info, );

/// Method [allocateTextureUnit]
external void allocateTextureUnit();
/// Method [resetTextureUnits]
external void resetTextureUnits();
/// Method [setTexture2D]
///
/// Parameters:
/// - texture: Texture
/// - slot: number
external void setTexture2D(Texture<_i1.JSAny> texture, _i1.JSNumber slot, );
/// Method [setTexture2DArray]
///
/// Parameters:
/// - texture: Texture
/// - slot: number
external void setTexture2DArray(Texture<_i1.JSAny> texture, _i1.JSNumber slot, );
/// Method [setTexture3D]
///
/// Parameters:
/// - texture: Texture
/// - slot: number
external void setTexture3D(Texture<_i1.JSAny> texture, _i1.JSNumber slot, );
/// Method [setTextureCube]
///
/// Parameters:
/// - texture: Texture
/// - slot: number
external void setTextureCube(Texture<_i1.JSAny> texture, _i1.JSNumber slot, );
/// Method [setupRenderTarget]
///
/// Parameters:
/// - renderTarget: RenderTarget
external void setupRenderTarget(RenderTarget<Texture<_i1.JSAny>> renderTarget);
/// Method [updateRenderTargetMipmap]
///
/// Parameters:
/// - renderTarget: RenderTarget
external void updateRenderTargetMipmap(RenderTarget<Texture<_i1.JSAny>> renderTarget);
/// Method [updateMultisampleRenderTarget]
///
/// Parameters:
/// - renderTarget: RenderTarget
external void updateMultisampleRenderTarget(RenderTarget<Texture<_i1.JSAny>> renderTarget);
}
/// Class [WebGLUniforms]
extension type WebGLUniforms.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext
/// - program: WebGLProgram
external WebGLUniforms(_i3.WebGLRenderingContext gl, _i3.WebGLProgram program, );

}
/// Class [WebGLUtils]
extension type WebGLUtils.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - gl: WebGLRenderingContext | WebGL2RenderingContext
/// - extensions: WebGLExtensions
external WebGLUtils(_i1.JSAny gl, WebGLExtensions extensions, );

/// Method [convert]
///
/// Parameters:
/// - p: PixelFormat | CompressedPixelFormat | TextureDataType
/// - colorSpace: string
external _i1.JSNumber? convert(_i1.JSAny p, [_i1.JSString colorSpace, ]);
}
/// Class [WebGLCubeRenderTarget]
extension type WebGLCubeRenderTarget.$(_i1.JSObject _) implements _i1.JSObject,WebGLRenderTarget<Texture<_i1.JSAny>> {
/// Constructor
///
/// Parameters:
/// - size: number
/// - options: RenderTargetOptions
external WebGLCubeRenderTarget([_i1.JSNumber size, RenderTargetOptions options, ]);

/// Property [textures]
///
/// textures: CubeTexture[]
external _i1.JSArray<CubeTexture<_i1.JSAny>> textures;

/// Get Accessor [texture]
///
/// texture
external CubeTexture<_i1.JSAny> get texture;
/// Get Accessor [texture]
///
/// texture
external set texture();
/// Method [fromEquirectangularTexture]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - texture: Texture
external _i1.JSAny fromEquirectangularTexture(WebGLRenderer renderer, Texture<_i1.JSAny> texture, );
/// Method [clear]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - color: boolean
/// - depth: boolean
/// - stencil: boolean
external void clear(WebGLRenderer renderer, _i1.JSBoolean color, _i1.JSBoolean depth, _i1.JSBoolean stencil, );
}
/// Interface [WebGLRendererParameters]
extension type WebGLRendererParameters.$(_i1.JSObject _) implements WebGLCapabilitiesParameters {
/// Property [canvas]
///
/// canvas?: HTMLCanvasElement | OffscreenCanvas | undefined
external _i1.JSAny? canvas;

/// Property [context]
///
/// context?: WebGLRenderingContext | undefined
external _i3.WebGLRenderingContext? context;

/// Property [alpha]
///
/// alpha?: boolean | undefined
external _i1.JSBoolean? alpha;

/// Property [premultipliedAlpha]
///
/// premultipliedAlpha?: boolean | undefined
external _i1.JSBoolean? premultipliedAlpha;

/// Property [antialias]
///
/// antialias?: boolean | undefined
external _i1.JSBoolean? antialias;

/// Property [stencil]
///
/// stencil?: boolean | undefined
external _i1.JSBoolean? stencil;

/// Property [preserveDrawingBuffer]
///
/// preserveDrawingBuffer?: boolean | undefined
external _i1.JSBoolean? preserveDrawingBuffer;

/// Property [powerPreference]
///
/// powerPreference?: WebGLPowerPreference | undefined
external _i3.WebGLPowerPreference? powerPreference;

/// Property [depth]
///
/// depth?: boolean | undefined
external _i1.JSBoolean? depth;

/// Property [failIfMajorPerformanceCaveat]
///
/// failIfMajorPerformanceCaveat?: boolean | undefined
external _i1.JSBoolean? failIfMajorPerformanceCaveat;

/// Property [outputBufferType]
///
/// outputBufferType?: TextureDataType | undefined
external TextureDataType? outputBufferType;

}
/// Interface [WebGLDebug]
extension type WebGLDebug.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [checkShaderErrors]
///
/// checkShaderErrors: boolean
external _i1.JSBoolean checkShaderErrors;

/// Property [onShaderError]
///
/// onShaderError: ((gl: WebGLRenderingContext, program: WebGLProgram, glVertexShader: WebGLShader, glFragmentShader: WebGLShader) => void) | null
external _i1.JSFunction onShaderError;

}
/// Interface [Effect]
extension type Effect.$(_i1.JSObject _) implements _i1.JSObject {
/// Method [setSize]
///
/// Parameters:
/// - width: number
/// - height: number
///
/// Returns:
/// - void
external void setSize(_i1.JSNumber width, _i1.JSNumber height, );
/// Method [render]
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - writeBuffer: WebGLRenderTarget
/// - readBuffer: WebGLRenderTarget
/// - deltaTime: number
/// - maskActive: boolean
///
/// Returns:
/// - void
external void render(WebGLRenderer renderer, WebGLRenderTarget<Texture<_i1.JSAny>> writeBuffer, WebGLRenderTarget<Texture<_i1.JSAny>> readBuffer, _i1.JSNumber deltaTime, _i1.JSBoolean maskActive, );
}
/// Class [WebGLRenderer]
extension type WebGLRenderer.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
///
/// Parameters:
/// - parameters: WebGLRendererParameters
external WebGLRenderer([WebGLRendererParameters parameters]);

/// Property [domElement]
///
/// domElement: HTMLCanvasElement
external _i3.HTMLCanvasElement domElement;

/// Property [autoClear]
///
/// autoClear: boolean
external _i1.JSBoolean autoClear;

/// Property [autoClearColor]
///
/// autoClearColor: boolean
external _i1.JSBoolean autoClearColor;

/// Property [autoClearDepth]
///
/// autoClearDepth: boolean
external _i1.JSBoolean autoClearDepth;

/// Property [autoClearStencil]
///
/// autoClearStencil: boolean
external _i1.JSBoolean autoClearStencil;

/// Property [debug]
///
/// debug: WebGLDebug
external WebGLDebug debug;

/// Property [sortObjects]
///
/// sortObjects: boolean
external _i1.JSBoolean sortObjects;

/// Property [clippingPlanes]
///
/// clippingPlanes: Plane[]
external _i1.JSArray<Plane> clippingPlanes;

/// Property [localClippingEnabled]
///
/// localClippingEnabled: boolean
external _i1.JSBoolean localClippingEnabled;

/// Property [extensions]
///
/// extensions: WebGLExtensions
external WebGLExtensions extensions;

/// Property [toneMapping]
///
/// toneMapping: ToneMapping
external ToneMapping toneMapping;

/// Property [toneMappingExposure]
///
/// toneMappingExposure: number
external _i1.JSNumber toneMappingExposure;

/// Property [transmissionResolutionScale]
///
/// transmissionResolutionScale: number
external _i1.JSNumber transmissionResolutionScale;

/// Property [info]
///
/// info: WebGLInfo
external WebGLInfo info;

/// Property [shadowMap]
///
/// shadowMap: WebGLShadowMap
external WebGLShadowMap shadowMap;

/// Property [capabilities]
///
/// capabilities: WebGLCapabilities
external WebGLCapabilities capabilities;

/// Property [properties]
///
/// properties: WebGLProperties
external WebGLProperties properties;

/// Property [renderLists]
///
/// renderLists: WebGLRenderLists
external WebGLRenderLists renderLists;

/// Property [state]
///
/// state: WebGLState
external WebGLState state;

/// Property [xr]
///
/// xr: WebXRManager
external WebXRManager xr;

/// Property [compile]
///
/// compile: (scene: Object3D, camera: Camera, targetScene: Scene | null) => Set
external _i1.JSFunction compile;

/// Property [compileAsync]
///
/// compileAsync: (scene: Object3D, camera: Camera, targetScene: Scene | null) => Promise
external _i1.JSFunction compileAsync;

/// Get Accessor [outputColorSpace]
///
/// outputColorSpace
external _i1.JSString get outputColorSpace;
/// Get Accessor [outputColorSpace]
///
/// outputColorSpace
external set outputColorSpace();
/// Get Accessor [coordinateSystem]
///
/// coordinateSystem
external _i1.JSString get coordinateSystem;
/// Method [getContext]
external _i1.JSAny getContext();
/// Method [getContextAttributes]
external _i3.WebGLContextAttributes getContextAttributes();
/// Method [forceContextLoss]
external void forceContextLoss();
/// Method [forceContextRestore]
external void forceContextRestore();
/// Method [getPixelRatio]
external _i1.JSNumber getPixelRatio();
/// Method [setPixelRatio]
///
/// Parameters:
/// - value: number
external void setPixelRatio(_i1.JSNumber value);
/// Method [getSize]
///
/// Parameters:
/// - target: Vector2
external Vector2 getSize(Vector2 target);
/// Method [setSize]
///
/// Parameters:
/// - width: number
/// - height: number
/// - updateStyle: boolean
external void setSize(_i1.JSNumber width, _i1.JSNumber height, [_i1.JSBoolean updateStyle, ]);
/// Method [getDrawingBufferSize]
///
/// Parameters:
/// - target: Vector2
external Vector2 getDrawingBufferSize(Vector2 target);
/// Method [setDrawingBufferSize]
///
/// Parameters:
/// - width: number
/// - height: number
/// - pixelRatio: number
external void setDrawingBufferSize(_i1.JSNumber width, _i1.JSNumber height, _i1.JSNumber pixelRatio, );
/// Method [setEffects]
///
/// Parameters:
/// - effects: Effect[] | null
external void setEffects(_i1.JSArray<Effect>? effects);
/// Method [getCurrentViewport]
///
/// Parameters:
/// - target: Vector4
external Vector4 getCurrentViewport(Vector4 target);
/// Method [getViewport]
///
/// Parameters:
/// - target: Vector4
external Vector4 getViewport(Vector4 target);
/// Method [setViewport]
///
/// Parameters:
/// - x: Vector4 | number
/// - y: number
/// - width: number
/// - height: number
external void setViewport(_i1.JSAny x, [_i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, ]);
/// Method [getScissor]
///
/// Parameters:
/// - target: Vector4
external Vector4 getScissor(Vector4 target);
/// Method [setScissor]
///
/// Parameters:
/// - x: Vector4 | number
/// - y: number
/// - width: number
/// - height: number
external void setScissor(_i1.JSAny x, [_i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, ]);
/// Method [getScissorTest]
external _i1.JSBoolean getScissorTest();
/// Method [setScissorTest]
///
/// Parameters:
/// - enable: boolean
external void setScissorTest(_i1.JSBoolean enable);
/// Method [setOpaqueSort]
///
/// Parameters:
/// - method: ((a: any, b: any) => number) | null
external void setOpaqueSort(_i1.JSFunction? method);
/// Method [setTransparentSort]
///
/// Parameters:
/// - method: ((a: any, b: any) => number) | null
external void setTransparentSort(_i1.JSFunction? method);
/// Method [getClearColor]
///
/// Parameters:
/// - target: Color
external Color getClearColor(Color target);
/// Method [setClearColor]
///
/// Parameters:
/// - color: ColorRepresentation
/// - alpha: number
external void setClearColor(ColorRepresentation color, [_i1.JSNumber alpha, ]);
/// Method [getClearAlpha]
external _i1.JSNumber getClearAlpha();
/// Method [setClearAlpha]
///
/// Parameters:
/// - alpha: number
external void setClearAlpha(_i1.JSNumber alpha);
/// Method [clear]
///
/// Parameters:
/// - color: boolean
/// - depth: boolean
/// - stencil: boolean
external void clear([_i1.JSBoolean color, _i1.JSBoolean depth, _i1.JSBoolean stencil, ]);
/// Method [clearColor]
external void clearColor();
/// Method [clearDepth]
external void clearDepth();
/// Method [clearStencil]
external void clearStencil();
/// Method [clearTarget]
///
/// Parameters:
/// - renderTarget: WebGLRenderTarget
/// - color: boolean
/// - depth: boolean
/// - stencil: boolean
external void clearTarget(WebGLRenderTarget<Texture<_i1.JSAny>> renderTarget, _i1.JSBoolean color, _i1.JSBoolean depth, _i1.JSBoolean stencil, );
/// Method [dispose]
external void dispose();
/// Method [renderBufferDirect]
///
/// Parameters:
/// - camera: Camera
/// - scene: Scene
/// - geometry: BufferGeometry
/// - material: Material
/// - object: Object3D
/// - group: GeometryGroup
external void renderBufferDirect(Camera camera, Scene scene, BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap> geometry, Material material, Object3D<Object3DEventMap> object, GeometryGroup group, );
/// Method [setAnimationLoop]
///
/// Parameters:
/// - callback: XRFrameRequestCallback | null
external void setAnimationLoop(_i4.XRFrameRequestCallback? callback);
/// Method [render]
///
/// Parameters:
/// - scene: Object3D
/// - camera: Camera
external void render(Object3D<Object3DEventMap> scene, Camera camera, );
/// Method [getActiveCubeFace]
external _i1.JSNumber getActiveCubeFace();
/// Method [getActiveMipmapLevel]
external _i1.JSNumber getActiveMipmapLevel();
/// Method [getRenderTarget]
external WebGLRenderTarget<Texture<_i1.JSAny>>? getRenderTarget();
/// Method [setRenderTarget]
///
/// Parameters:
/// - renderTarget: WebGLRenderTarget | WebGLRenderTarget | null
/// - activeCubeFace: number
/// - activeMipmapLevel: number
external void setRenderTarget(WebGLRenderTarget<_i1.JSArray<Texture<_i1.JSAny>>>? renderTarget, [_i1.JSNumber activeCubeFace, _i1.JSNumber activeMipmapLevel, ]);
/// Method [readRenderTargetPixels]
///
/// Parameters:
/// - renderTarget: WebGLRenderTarget | WebGLRenderTarget
/// - x: number
/// - y: number
/// - width: number
/// - height: number
/// - buffer: TypedArray
/// - activeCubeFaceIndex: number
/// - textureIndex: number
external void readRenderTargetPixels(WebGLRenderTarget<_i1.JSArray<Texture<_i1.JSAny>>> renderTarget, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, TypedArray buffer, [_i1.JSNumber activeCubeFaceIndex, _i1.JSNumber textureIndex, ]);
/// Method [readRenderTargetPixelsAsync]
///
/// Parameters:
/// - renderTarget: WebGLRenderTarget | WebGLRenderTarget
/// - x: number
/// - y: number
/// - width: number
/// - height: number
/// - buffer: TypedArray
/// - activeCubeFaceIndex: number
/// - textureIndex: number
external _i1.JSPromise<TypedArray> readRenderTargetPixelsAsync(WebGLRenderTarget<_i1.JSArray<Texture<_i1.JSAny>>> renderTarget, _i1.JSNumber x, _i1.JSNumber y, _i1.JSNumber width, _i1.JSNumber height, TypedArray buffer, [_i1.JSNumber activeCubeFaceIndex, _i1.JSNumber textureIndex, ]);
/// Method [copyFramebufferToTexture]
///
/// Parameters:
/// - texture: Texture
/// - position: Vector2 | null
/// - level: number
external void copyFramebufferToTexture(Texture<_i1.JSAny> texture, [Vector2? position, _i1.JSNumber level, ]);
/// Method [copyTextureToTexture]
///
/// Parameters:
/// - srcTexture: Texture
/// - dstTexture: Texture
/// - srcRegion: Box2 | Box3 | null
/// - dstPosition: Vector2 | Vector3 | null
/// - srcLevel: number
/// - dstLevel: number
external void copyTextureToTexture(Texture<_i1.JSAny> srcTexture, Texture<_i1.JSAny> dstTexture, [_i1.JSAny? srcRegion, _i1.JSAny? dstPosition, _i1.JSNumber srcLevel, _i1.JSNumber dstLevel, ]);
/// Method [initRenderTarget]
///
/// Parameters:
/// - target: WebGLRenderTarget
external void initRenderTarget(WebGLRenderTarget<Texture<_i1.JSAny>> target);
/// Method [initTexture]
///
/// Parameters:
/// - texture: Texture
external void initTexture(Texture<_i1.JSAny> texture);
/// Method [resetState]
external void resetState();
}
/// Typedef [XRControllerEventType]
///
/// XRSessionEventType | XRInputSourceEventType | "disconnected" | "connected"
typedef XRControllerEventType = _i1.JSAny;
/// Class [XRJointSpace]
extension type XRJointSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<Object3DEventMap> {
/// Property [jointRadius]
///
/// readonly jointRadius: number | undefined
external _i1.JSNumber get jointRadius;
}
/// Typedef [XRHandJoints]
///
/// Record
typedef XRHandJoints = _i2.Record<_i3.XRHandJoint,_i3.XRJointSpace>;
/// Class [XRHandSpace]
extension type XRHandSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [joints]
///
/// readonly joints: Partial
external _i2.Partial<XRHandJoints> get joints;
/// Property [inputState]
///
/// readonly inputState: XRHandInputState
external XRHandInputState get inputState;
}
/// Class [XRTargetRaySpace]
extension type XRTargetRaySpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [hasLinearVelocity]
///
/// hasLinearVelocity: boolean
external _i1.JSBoolean hasLinearVelocity;

/// Property [hasAngularVelocity]
///
/// hasAngularVelocity: boolean
external _i1.JSBoolean hasAngularVelocity;

/// Property [linearVelocity]
///
/// readonly linearVelocity: Vector3
external Vector3 get linearVelocity;
/// Property [angularVelocity]
///
/// readonly angularVelocity: Vector3
external Vector3 get angularVelocity;
}
/// Class [XRGripSpace]
extension type XRGripSpace.$(_i1.JSObject _) implements _i1.JSObject,Group<WebXRSpaceEventMap> {
/// Property [hasLinearVelocity]
///
/// hasLinearVelocity: boolean
external _i1.JSBoolean hasLinearVelocity;

/// Property [hasAngularVelocity]
///
/// hasAngularVelocity: boolean
external _i1.JSBoolean hasAngularVelocity;

/// Property [linearVelocity]
///
/// readonly linearVelocity: Vector3
external Vector3 get linearVelocity;
/// Property [angularVelocity]
///
/// readonly angularVelocity: Vector3
external Vector3 get angularVelocity;
}
/// Class [WebXRController]
extension type WebXRController.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebXRController();

/// Method [getHandSpace]
external XRHandSpace getHandSpace();
/// Method [getTargetRaySpace]
external XRTargetRaySpace getTargetRaySpace();
/// Method [getGripSpace]
external XRGripSpace getGripSpace();
/// Method [dispatchEvent]
///
/// Parameters:
/// - event: WebXRController$DispatchEvent$Event$TypeLiteral$2
external _i1.JSAny dispatchEvent(WebXRController$DispatchEvent$Event$TypeLiteral$2 event);
/// Method [connect]
///
/// Parameters:
/// - inputSource: XRInputSource
external _i1.JSAny connect(_i3.XRInputSource inputSource);
/// Method [disconnect]
///
/// Parameters:
/// - inputSource: XRInputSource
external _i1.JSAny disconnect(_i3.XRInputSource inputSource);
/// Method [update]
///
/// Parameters:
/// - inputSource: XRInputSource
/// - frame: XRFrame
/// - referenceSpace: XRReferenceSpace
external _i1.JSAny update(_i3.XRInputSource inputSource, _i4.XRFrame frame, _i3.XRReferenceSpace referenceSpace, );
}
/// Interface [WebXRSpaceEventMap$Select$TypeLiteral$2]
extension type WebXRSpaceEventMap$Select$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Selectstart$TypeLiteral$2]
extension type WebXRSpaceEventMap$Selectstart$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Selectend$TypeLiteral$2]
extension type WebXRSpaceEventMap$Selectend$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeeze$TypeLiteral$2]
extension type WebXRSpaceEventMap$Squeeze$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeezestart$TypeLiteral$2]
extension type WebXRSpaceEventMap$Squeezestart$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Squeezeend$TypeLiteral$2]
extension type WebXRSpaceEventMap$Squeezeend$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Connected$TypeLiteral$2]
extension type WebXRSpaceEventMap$Connected$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Disconnected$TypeLiteral$2]
extension type WebXRSpaceEventMap$Disconnected$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRInputSource
external _i3.XRInputSource data;

}
/// Interface [WebXRSpaceEventMap$Pinchend$TypeLiteral$2]
extension type WebXRSpaceEventMap$Pinchend$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [handedness]
///
/// handedness: XRHandedness
external _i3.XRHandedness handedness;

/// Property [target]
///
/// target: WebXRController
external WebXRController target;

}
/// Interface [WebXRSpaceEventMap$Pinchstart$TypeLiteral$2]
extension type WebXRSpaceEventMap$Pinchstart$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [handedness]
///
/// handedness: XRHandedness
external _i3.XRHandedness handedness;

/// Property [target]
///
/// target: WebXRController
external WebXRController target;

}
/// Interface [WebXRSpaceEventMap$Move$TypeLiteral$2]
extension type WebXRSpaceEventMap$Move$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [WebXRController$DispatchEvent$Event$TypeLiteral$2]
extension type WebXRController$DispatchEvent$Event$TypeLiteral$2.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [type]
///
/// type: XRControllerEventType
external XRControllerEventType type;

/// Property [data]
///
/// data?: XRInputSource
external _i3.XRInputSource? data;

}
/// Class [WebXRDepthSensing]
extension type WebXRDepthSensing.$(_i1.JSObject _) implements _i1.JSObject {
/// Constructor
external WebXRDepthSensing();

/// Property [texture]
///
/// texture: ExternalTexture | null
external ExternalTexture texture;

/// Property [mesh]
///
/// mesh: Mesh | null
external Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap> mesh;

/// Property [depthNear]
///
/// depthNear: number
external _i1.JSNumber depthNear;

/// Property [depthFar]
///
/// depthFar: number
external _i1.JSNumber depthFar;

/// Method [init]
///
/// Parameters:
/// - depthData: XRWebGLDepthInformation
/// - renderState: XRRenderState
external void init(_i4.XRWebGLDepthInformation depthData, _i4.XRRenderState renderState, );
/// Method [getMesh]
///
/// Parameters:
/// - cameraXR: WebXRArrayCamera
external Mesh<BufferGeometry<NormalBufferAttributes,BufferGeometryEventMap>,_i1.JSAny,Object3DEventMap>? getMesh(WebXRArrayCamera cameraXR);
/// Method [reset]
external void reset();
/// Method [getDepthTexture]
external ExternalTexture? getDepthTexture();
}
/// Typedef [WebXRCamera]
///
/// 
typedef WebXRCamera = _i1.JSAny;
/// Typedef [WebXRArrayCamera]
///
/// 
typedef WebXRArrayCamera = _i1.JSAny;
/// Interface [WebXRManagerEventMap]
extension type WebXRManagerEventMap.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [sessionstart]
///
/// sessionstart: WebXRManagerEventMap$Sessionstart$TypeLiteral
external WebXRManagerEventMap$Sessionstart$TypeLiteral sessionstart;

/// Property [sessionend]
///
/// sessionend: WebXRManagerEventMap$Sessionend$TypeLiteral
external WebXRManagerEventMap$Sessionend$TypeLiteral sessionend;

/// Property [planeadded]
///
/// planeadded: WebXRManagerEventMap$Planeadded$TypeLiteral
external WebXRManagerEventMap$Planeadded$TypeLiteral planeadded;

/// Property [planeremoved]
///
/// planeremoved: WebXRManagerEventMap$Planeremoved$TypeLiteral
external WebXRManagerEventMap$Planeremoved$TypeLiteral planeremoved;

/// Property [planechanged]
///
/// planechanged: WebXRManagerEventMap$Planechanged$TypeLiteral
external WebXRManagerEventMap$Planechanged$TypeLiteral planechanged;

/// Property [planesdetected]
///
/// planesdetected: WebXRManagerEventMap$Planesdetected$TypeLiteral
external WebXRManagerEventMap$Planesdetected$TypeLiteral planesdetected;

}
/// Class [WebXRManager]
extension type WebXRManager.$(_i1.JSObject _) implements _i1.JSObject,EventDispatcher<WebXRManagerEventMap> {
/// Constructor
///
/// Parameters:
/// - renderer: WebGLRenderer
/// - gl: WebGLRenderingContext
external WebXRManager(WebGLRenderer renderer, _i3.WebGLRenderingContext gl, );

/// Property [cameraAutoUpdate]
///
/// cameraAutoUpdate: boolean
external _i1.JSBoolean cameraAutoUpdate;

/// Property [enabled]
///
/// enabled: boolean
external _i1.JSBoolean enabled;

/// Property [isPresenting]
///
/// isPresenting: boolean
external _i1.JSBoolean isPresenting;

/// Property [getController]
///
/// getController: (index: number) => XRTargetRaySpace
external _i1.JSFunction getController;

/// Property [getControllerGrip]
///
/// getControllerGrip: (index: number) => XRGripSpace
external _i1.JSFunction getControllerGrip;

/// Property [getHand]
///
/// getHand: (index: number) => XRHandSpace
external _i1.JSFunction getHand;

/// Property [setFramebufferScaleFactor]
///
/// setFramebufferScaleFactor: (value: number) => void
external _i1.JSFunction setFramebufferScaleFactor;

/// Property [setReferenceSpaceType]
///
/// setReferenceSpaceType: (value: XRReferenceSpaceType) => void
external _i1.JSFunction setReferenceSpaceType;

/// Property [getReferenceSpace]
///
/// getReferenceSpace: () => XRReferenceSpace | null
external _i1.JSFunction getReferenceSpace;

/// Property [setReferenceSpace]
///
/// setReferenceSpace: (value: XRReferenceSpace) => void
external _i1.JSFunction setReferenceSpace;

/// Property [getBaseLayer]
///
/// getBaseLayer: () => XRWebGLLayer | XRProjectionLayer
external _i1.JSFunction getBaseLayer;

/// Property [getBinding]
///
/// getBinding: () => XRWebGLBinding
external _i1.JSFunction getBinding;

/// Property [getFrame]
///
/// getFrame: () => XRFrame
external _i1.JSFunction getFrame;

/// Property [getSession]
///
/// getSession: () => XRSession | null
external _i1.JSFunction getSession;

/// Property [setSession]
///
/// setSession: (value: XRSession | null) => Promise
external _i1.JSFunction setSession;

/// Property [getEnvironmentBlendMode]
///
/// getEnvironmentBlendMode: () => XREnvironmentBlendMode | undefined
external _i1.JSFunction getEnvironmentBlendMode;

/// Property [getDepthTexture]
///
/// getDepthTexture: () => ExternalTexture | null
external _i1.JSFunction getDepthTexture;

/// Property [updateCamera]
///
/// updateCamera: (camera: PerspectiveCamera) => void
external _i1.JSFunction updateCamera;

/// Property [getCamera]
///
/// getCamera: () => WebXRArrayCamera
external _i1.JSFunction getCamera;

/// Property [getFoveation]
///
/// getFoveation: () => number | undefined
external _i1.JSFunction getFoveation;

/// Property [setFoveation]
///
/// setFoveation: (value: number) => void
external _i1.JSFunction setFoveation;

/// Property [hasDepthSensing]
///
/// hasDepthSensing: () => boolean
external _i1.JSFunction hasDepthSensing;

/// Property [getDepthSensingMesh]
///
/// getDepthSensingMesh: () => Mesh | null
external _i1.JSFunction getDepthSensingMesh;

/// Property [getCameraTexture]
///
/// getCameraTexture: (xrCamera: WebXRCamera) => ExternalTexture | undefined
external _i1.JSFunction getCameraTexture;

/// Property [setAnimationLoop]
///
/// setAnimationLoop: (callback: XRFrameRequestCallback | null) => void
external _i1.JSFunction setAnimationLoop;

/// Property [dispose]
///
/// dispose: () => void
external _i1.JSFunction dispose;

}
/// Interface [WebXRCamera$TypeLiteral]
extension type WebXRCamera$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [viewport]
///
/// viewport: Vector4
external Vector4 viewport;

}
/// Interface [WebXRArrayCamera$TypeLiteral]
extension type WebXRArrayCamera$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [cameras]
///
/// cameras: [WebXRCamera, WebXRCamera]
external _i1.JSArray<_i1.JSAny> cameras;

}
/// Interface [WebXRManagerEventMap$Sessionstart$TypeLiteral]
extension type WebXRManagerEventMap$Sessionstart$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [WebXRManagerEventMap$Sessionend$TypeLiteral]
extension type WebXRManagerEventMap$Sessionend$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
}
/// Interface [WebXRManagerEventMap$Planeadded$TypeLiteral]
extension type WebXRManagerEventMap$Planeadded$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRPlane
external _i4.XRPlane data;

}
/// Interface [WebXRManagerEventMap$Planeremoved$TypeLiteral]
extension type WebXRManagerEventMap$Planeremoved$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRPlane
external _i4.XRPlane data;

}
/// Interface [WebXRManagerEventMap$Planechanged$TypeLiteral]
extension type WebXRManagerEventMap$Planechanged$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRPlane
external _i4.XRPlane data;

}
/// Interface [WebXRManagerEventMap$Planesdetected$TypeLiteral]
extension type WebXRManagerEventMap$Planesdetected$TypeLiteral.$(_i1.JSObject _) implements _i1.JSObject {
/// Property [data]
///
/// data: XRPlaneSet
external _i4.XRPlaneSet data;

}
