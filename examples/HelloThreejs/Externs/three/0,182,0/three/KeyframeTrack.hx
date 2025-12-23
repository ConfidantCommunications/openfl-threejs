package three;

/**
	Represents s a timed sequence of keyframes, which are composed of lists of
	times and related values, and which are used to animate a specific property
	of an object.
**/
@:native("THREE.KeyframeTrack") extern class KeyframeTrack {
	/**
		Constructs a new keyframe track.
	**/
	function new(name:String, times:js.lib.ArrayLike<Float>, values:js.lib.ArrayLike<ts.AnyOf3<String, Float, Bool>>, ?interpolation:InterpolationModes);
	/**
		The track's name can refer to morph targets or bones or
		possibly other values within an animated object. See {@link PropertyBinding#parseTrackName}
		for the forms of strings that can be parsed for property binding.
	**/
	var name : String;
	/**
		The keyframe times.
	**/
	var times : js.lib.Float32Array;
	/**
		The keyframe values.
	**/
	var values : js.lib.Float32Array;
	/**
		Factory method for creating a new discrete interpolant.
	**/
	function InterpolantFactoryMethodDiscrete(?result:TypedArray):DiscreteInterpolant;
	/**
		Factory method for creating a new linear interpolant.
	**/
	function InterpolantFactoryMethodLinear(?result:TypedArray):LinearInterpolant;
	/**
		Factory method for creating a new smooth interpolant.
	**/
	function InterpolantFactoryMethodSmooth(?result:TypedArray):CubicInterpolant;
	/**
		Defines the interpolation factor method for this keyframe track.
	**/
	function setInterpolation(interpolation:InterpolationModes):KeyframeTrack;
	/**
		Returns the current interpolation type.
	**/
	function getInterpolation():InterpolationModes;
	/**
		Returns the value size.
	**/
	function getValueSize():Float;
	/**
		Moves all keyframes either forward or backward in time.
	**/
	function shift(timeOffset:Float):KeyframeTrack;
	/**
		Scale all keyframe times by a factor (useful for frame - seconds conversions).
	**/
	function scale(timeScale:Float):KeyframeTrack;
	/**
		Removes keyframes before and after animation without changing any values within the defined time range.
		
		Note: The method does not shift around keys to the start of the track time, because for interpolated
		keys this will change their values
	**/
	function trim(startTime:Float, endTime:Float):KeyframeTrack;
	/**
		Performs minimal validation on the keyframe track. Returns `true` if the values
		are valid.
	**/
	function validate():Bool;
	/**
		Optimizes this keyframe track by removing equivalent sequential keys (which are
		common in morph target sequences).
	**/
	function optimize():KeyframeTrack;
	/**
		Returns a new keyframe track with copied values from this instance.
	**/
	function clone():KeyframeTrack;
	/**
		The value type name.
	**/
	var ValueTypeName : String;
	/**
		The time buffer type of this keyframe track.
	**/
	var TimeBufferType : ts.AnyOf10<js.lib.ArrayConstructor, js.lib.Int8ArrayConstructor, js.lib.Uint8ArrayConstructor, js.lib.Uint8ClampedArrayConstructor, js.lib.Int16ArrayConstructor, js.lib.Uint16ArrayConstructor, js.lib.Int32ArrayConstructor, js.lib.Uint32ArrayConstructor, js.lib.Float32ArrayConstructor, js.lib.Float64ArrayConstructor>;
	/**
		The value buffer type of this keyframe track.
	**/
	var ValueBufferType : ts.AnyOf10<js.lib.ArrayConstructor, js.lib.Int8ArrayConstructor, js.lib.Uint8ArrayConstructor, js.lib.Uint8ClampedArrayConstructor, js.lib.Int16ArrayConstructor, js.lib.Uint16ArrayConstructor, js.lib.Int32ArrayConstructor, js.lib.Uint32ArrayConstructor, js.lib.Float32ArrayConstructor, js.lib.Float64ArrayConstructor>;
	/**
		The default interpolation type of this keyframe track.
	**/
	var DefaultInterpolation : InterpolationModes;
	static var prototype : KeyframeTrack;
	/**
		Converts the keyframe track to JSON.
	**/
	static function toJSON(track:KeyframeTrack):KeyframeTrackJSON;
}