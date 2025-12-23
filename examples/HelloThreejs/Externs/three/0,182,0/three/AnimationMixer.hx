package three;

/**
	`AnimationMixer` is a player for animations on a particular object in
	the scene. When multiple objects in the scene are animated independently,
	one `AnimationMixer` may be used for each object.
**/
@:native("THREE.AnimationMixer") extern class AnimationMixer extends EventDispatcher<AnimationMixerEventMap> {
	/**
		Constructs a new animation mixer.
	**/
	function new(root:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>);
	/**
		The global mixer time (in seconds; starting with `0` on the mixer's creation).
	**/
	var time : Float;
	private var _root : ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>;
	private var _actions : Array<AnimationAction>;
	private var _nActiveActions : Float;
	private var _bindings : Array<PropertyMixer>;
	private var _nActiveBindings : Float;
	private var _controlInterpolants : Array<MixerControlInterpolant>;
	private var _nActiveControlInterpolants : Float;
	private var _bindingsByRootAndName : haxe.DynamicAccess<haxe.DynamicAccess<PropertyMixer>>;
	private var _actionsByClip : haxe.DynamicAccess<{
		var knownActions : Array<AnimationAction>;
		var actionByRoot : haxe.DynamicAccess<AnimationAction>;
	}>;
	private var _accuIndex : Float;
	/**
		A scaling factor for the global time.
		
		Note: Setting this member to `0` and later back to `1` is a
		possibility to pause/unpause all actions that are controlled by this
		mixer.
	**/
	var timeScale : Float;
	/**
		The AnimationMixer stats track the actions of the mixer.
	**/
	var stats : AnimationMixerStats;
	/**
		Returns an instance of {@link AnimationAction} for the passed clip.
		
		If an action fitting the clip and root parameters doesn't yet exist, it
		will be created by this method. Calling this method several times with the
		same clip and root parameters always returns the same action.
	**/
	@:overload(function(clip:ts.AnyOf2<String, AnimationClip>, ?optionalRoot:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>, ?blendMode:AnimationBlendMode):Null<AnimationAction> { })
	function clipAction(clip:AnimationClip, ?optionalRoot:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>, ?blendMode:AnimationBlendMode):AnimationAction;
	/**
		Returns an existing animation action for the passed clip.
	**/
	function existingAction(clip:ts.AnyOf2<String, AnimationClip>, ?optionalRoot:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>):Null<AnimationAction>;
	/**
		Deactivates all previously scheduled actions on this mixer.
	**/
	function stopAllAction():AnimationMixer;
	/**
		Advances the global mixer time and updates the animation.
		
		This is usually done in the render loop by passing the delta
		time from {@link Clock} or {@link Timer}.
	**/
	function update(deltaTime:Float):AnimationMixer;
	/**
		Sets the global mixer to a specific time and updates the animation accordingly.
		
		This is useful when you need to jump to an exact time in an animation. The
		input parameter will be scaled by {@link AnimationMixer#timeScale}
	**/
	function setTime(time:Float):AnimationMixer;
	/**
		Returns this mixer's root object.
	**/
	function getRoot():ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>;
	/**
		Deallocates all memory resources for a clip. Before using this method make
		sure to call {@link AnimationAction#stop} for all related actions.
	**/
	function uncacheClip(clip:AnimationClip):Void;
	/**
		Deallocates all memory resources for a root object. Before using this
		method make sure to call {@link AnimationAction#stop} for all related
		actions or alternatively {@link AnimationMixer#stopAllAction} when the
		mixer operates on a single root.
	**/
	function uncacheRoot(root:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>):Void;
	/**
		Deallocates all memory resources for an action. The action is identified by the
		given clip and an optional root object. Before using this method make
		sure to call {@link AnimationAction#stop} to deactivate the action.
	**/
	function uncacheAction(clip:ts.AnyOf2<String, AnimationClip>, ?optionalRoot:ts.AnyOf2<Object3D<Object3DEventMap>, AnimationObjectGroup>):Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, AnimationMixer>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, AnimationMixer>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, AnimationMixer>):Void;
	static var prototype : AnimationMixer;
}