package three;

/**
	A track for string keyframe values.
**/
@:native("THREE.StringKeyframeTrack") extern class StringKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new string keyframe track.
		
		This keyframe track type has no `interpolation` parameter because the
		interpolation is always discrete.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<String>);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():StringKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():StringKeyframeTrack;
	static var prototype : StringKeyframeTrack;
}