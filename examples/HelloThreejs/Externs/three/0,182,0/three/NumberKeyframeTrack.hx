package three;

/**
	A track for numeric keyframe values.
**/
@:native("THREE.NumberKeyframeTrack") extern class NumberKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new number keyframe track.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<Float>, ?interpolation:InterpolationModes);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():NumberKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():NumberKeyframeTrack;
	static var prototype : NumberKeyframeTrack;
}