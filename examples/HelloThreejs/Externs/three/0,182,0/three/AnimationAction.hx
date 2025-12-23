package three;

/**
	An instance of `AnimationAction` schedules the playback of an animation which is
	stored in {@link AnimationClip}.
**/
@:native("THREE.AnimationAction") extern class AnimationAction {
	/**
		Constructs a new animation action.
	**/
	function new(mixer:AnimationMixer, clip:AnimationClip, ?localRoot:Object3D<Object3DEventMap>, ?blendMode:AnimationBlendMode);
	/**
		Defines how the animation is blended/combined when two or more animations
		are simultaneously played.
	**/
	var blendMode : AnimationBlendMode;
	/**
		The loop mode, set via {@link AnimationAction#setLoop}.
	**/
	var loop : AnimationActionLoopStyles;
	/**
		The local time of this action (in seconds, starting with `0`).
		
		The value gets clamped or wrapped to `[0,clip.duration]` (according to the
		loop state).
	**/
	var time : Float;
	/**
		Scaling factor for the {@link AnimationAction#time}. A value of `0` causes the
		animation to pause. Negative values cause the animation to play backwards.
	**/
	var timeScale : Float;
	/**
		The degree of influence of this action (in the interval `[0, 1]`). Values
		between `0` (no impact) and `1` (full impact) can be used to blend between
		several actions.
	**/
	var weight : Float;
	/**
		The number of repetitions of the performed clip over the course of this action.
		Can be set via {@link AnimationAction#setLoop}.
		
		Setting this number has no effect if {@link AnimationAction#loop} is set to
		`THREE:LoopOnce`.
	**/
	var repetitions : Float;
	/**
		If set to `true`, the playback of the action is paused.
	**/
	var paused : Bool;
	/**
		If set to `false`, the action is disabled so it has no impact.
		
		When the action is re-enabled, the animation continues from its current
		time (setting `enabled` to `false` doesn't reset the action).
	**/
	var enabled : Bool;
	/**
		If set to true the animation will automatically be paused on its last frame.
		
		If set to false, {@link AnimationAction#enabled} will automatically be switched
		to `false` when the last loop of the action has finished, so that this action has
		no further impact.
		
		Note: This member has no impact if the action is interrupted (it
		has only an effect if its last loop has really finished).
	**/
	var clampWhenFinished : Bool;
	/**
		Enables smooth interpolation without separate clips for start, loop and end.
	**/
	var zeroSlopeAtStart : Bool;
	/**
		Enables smooth interpolation without separate clips for start, loop and end.
	**/
	var zeroSlopeAtEnd : Bool;
	/**
		Starts the playback of the animation.
	**/
	function play():AnimationAction;
	/**
		Stops the playback of the animation.
	**/
	function stop():AnimationAction;
	/**
		Resets the playback of the animation.
	**/
	function reset():AnimationAction;
	/**
		Returns `true` if the animation is running.
	**/
	function isRunning():Bool;
	/**
		Returns `true` when {@link AnimationAction#play} has been called.
	**/
	function isScheduled():Bool;
	/**
		Defines the time when the animation should start.
	**/
	function startAt(time:Float):AnimationAction;
	/**
		Configures the loop settings for this action.
	**/
	function setLoop(mode:AnimationActionLoopStyles, repetitions:Float):AnimationAction;
	/**
		Sets the effective weight of this action.
		
		An action has no effect and thus an effective weight of zero when the
		action is disabled.
	**/
	function setEffectiveWeight(weight:Float):AnimationAction;
	/**
		Returns the effective weight of this action.
	**/
	function getEffectiveWeight():Float;
	/**
		Fades the animation in by increasing its weight gradually from `0` to `1`,
		within the passed time interval.
	**/
	function fadeIn(duration:Float):AnimationAction;
	/**
		Fades the animation out by decreasing its weight gradually from `1` to `0`,
		within the passed time interval.
	**/
	function fadeOut(duration:Float):AnimationAction;
	/**
		Causes this action to fade in and the given action to fade out,
		within the passed time interval.
	**/
	function crossFadeFrom(fadeOutAction:AnimationAction, duration:Float, ?warp:Bool):AnimationAction;
	/**
		Causes this action to fade out and the given action to fade in,
		within the passed time interval.
	**/
	function crossFadeTo(fadeInAction:AnimationAction, duration:Float, ?warp:Bool):AnimationAction;
	/**
		Stops any fading which is applied to this action.
	**/
	function stopFading():AnimationAction;
	/**
		Sets the effective time scale of this action.
		
		An action has no effect and thus an effective time scale of zero when the
		action is paused.
	**/
	function setEffectiveTimeScale(timeScale:Float):AnimationAction;
	/**
		Returns the effective time scale of this action.
	**/
	function getEffectiveTimeScale():Float;
	/**
		Sets the duration for a single loop of this action.
	**/
	function setDuration(duration:Float):AnimationAction;
	/**
		Synchronizes this action with the passed other action.
	**/
	function syncWith(action:AnimationAction):AnimationAction;
	/**
		Decelerates this animation's speed to `0` within the passed time interval.
	**/
	function halt(duration:Float):AnimationAction;
	/**
		Changes the playback speed, within the passed time interval, by modifying
		{@link AnimationAction#timeScale} gradually from `startTimeScale` to
		`endTimeScale`.
	**/
	function warp(startTimeScale:Float, endTimeScale:Float, duration:Float):AnimationAction;
	/**
		Stops any scheduled warping which is applied to this action.
	**/
	function stopWarping():AnimationAction;
	/**
		Returns the animation mixer of this animation action.
	**/
	function getMixer():AnimationMixer;
	/**
		Returns the animation clip of this animation action.
	**/
	function getClip():AnimationClip;
	/**
		Returns the root object of this animation action.
	**/
	function getRoot():Object3D<Object3DEventMap>;
	function _scheduleFading(duration:Float, weightNow:Float, weightThen:Float):AnimationAction;
	static var prototype : AnimationAction;
}