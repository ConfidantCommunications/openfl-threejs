package three;

/**
	A reusable set of keyframe tracks which represent an animation.
**/
@:native("THREE.AnimationClip") extern class AnimationClip {
	/**
		Constructs a new animation clip.
		
		Note: Instead of instantiating an AnimationClip directly with the constructor, you can
		use the static interface of this class for creating clips. In most cases though, animation clips
		will automatically be created by loaders when importing animated 3D assets.
	**/
	function new(?name:String, ?duration:Float, ?tracks:Array<KeyframeTrack>, ?blendMode:AnimationBlendMode);
	/**
		The clip's name.
	**/
	var name : String;
	/**
		An array of keyframe tracks.
	**/
	var tracks : Array<KeyframeTrack>;
	/**
		The clip's duration in seconds.
	**/
	var duration : Float;
	/**
		Defines how the animation is blended/combined when two or more animations
		are simultaneously played.
	**/
	var blendMode : AnimationBlendMode;
	/**
		The UUID of the animation clip.
	**/
	final uuid : String;
	/**
		An object that can be used to store custom data about the animation clip.
		It should not hold references to functions as these will not be cloned.
	**/
	var userData : haxe.DynamicAccess<Any>;
	/**
		Sets the duration of this clip to the duration of its longest keyframe track.
	**/
	function resetDuration():AnimationClip;
	/**
		Trims all tracks to the clip's duration.
	**/
	function trim():AnimationClip;
	/**
		Performs minimal validation on each track in the clip. Returns `true` if all
		tracks are valid.
	**/
	function validate():Bool;
	/**
		Optimizes each track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():AnimationClip;
	/**
		Returns a new animation clip with copied values from this instance.
	**/
	function clone():AnimationClip;
	/**
		Serializes this animation clip into JSON.
	**/
	function toJSON():AnimationClipJSON;
	static var prototype : AnimationClip;
	/**
		Factory method for creating an animation clip from the given JSON.
	**/
	static function parse(json:AnimationClipJSON):AnimationClip;
	/**
		Serializes the given animation clip into JSON.
	**/
	@:native("toJSON")
	static function toJSON_(clip:AnimationClip):AnimationClipJSON;
	/**
		Returns a new animation clip from the passed morph targets array of a
		geometry, taking a name and the number of frames per second.
		
		Note: The fps parameter is required, but the animation speed can be
		overridden via {@link AnimationAction#setDuration}.
	**/
	static function CreateFromMorphTargetSequence(name:String, morphTargetSequence:Array<MorphTarget>, fps:Float, noLoop:Bool):AnimationClip;
	/**
		Searches for an animation clip by name, taking as its first parameter
		either an array of clips, or a mesh or geometry that contains an
		array named "animations" property.
	**/
	static function findByName(objectOrClipArray:ts.AnyOf2<Object3D<Object3DEventMap>, Array<AnimationClip>>, name:String):Null<AnimationClip>;
	/**
		Returns an array of new AnimationClips created from the morph target
		sequences of a geometry, trying to sort morph target names into
		animation-group-based patterns like "Walk_001, Walk_002, Run_001, Run_002...".
		
		See {@link MD2Loader#parse} as an example for how the method should be used.
	**/
	static function CreateClipsFromMorphTargetSequences(morphTargets:Array<MorphTarget>, fps:Float, noLoop:Bool):Array<AnimationClip>;
	/**
		Parses the `animation.hierarchy` format and returns a new animation clip.
	**/
	static function parseAnimation(animation:AnimationClipJSON, bones:Array<Bone<Object3DEventMap>>):Null<AnimationClip>;
}