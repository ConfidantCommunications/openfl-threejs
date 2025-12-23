package three;

/**
	A track for vector keyframe values.
**/
@:native("THREE.VectorKeyframeTrack") extern class VectorKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new vector keyframe track.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<Float>, ?interpolation:InterpolationModes);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():VectorKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():VectorKeyframeTrack;
	static var prototype : VectorKeyframeTrack;
}