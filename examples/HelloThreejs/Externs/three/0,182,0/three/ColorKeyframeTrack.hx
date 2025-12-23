package three;

/**
	A track for color keyframe values.
**/
@:native("THREE.ColorKeyframeTrack") extern class ColorKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new color keyframe track.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<Float>, ?interpolation:InterpolationModes);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():ColorKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():ColorKeyframeTrack;
	static var prototype : ColorKeyframeTrack;
}