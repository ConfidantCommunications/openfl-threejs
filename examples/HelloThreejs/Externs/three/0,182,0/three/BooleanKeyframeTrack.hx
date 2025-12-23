package three;

/**
	A track for boolean keyframe values.
**/
@:native("THREE.BooleanKeyframeTrack") extern class BooleanKeyframeTrack extends KeyframeTrack {
	/**
		Constructs a new boolean keyframe track.
		
		This keyframe track type has no `interpolation` parameter because the
		interpolation is always discrete.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<Bool>);
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():BooleanKeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():BooleanKeyframeTrack;
	static var prototype : BooleanKeyframeTrack;
}