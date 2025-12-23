package three;

/**
	A track for Quaternion keyframe values.
**/
@:native("THREE.QuaternionKeyframeTrack") extern class QuaternionKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new Quaternion keyframe track.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<Float>, ?interpolation:InterpolationModes);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():QuaternionKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():QuaternionKeyframeTrack;
	static var prototype : QuaternionKeyframeTrack;
}