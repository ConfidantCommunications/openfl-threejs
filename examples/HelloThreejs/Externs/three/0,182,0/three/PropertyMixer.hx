package three;

/**
	Buffered scene graph property that allows weighted accumulation; used internally.
**/
@:native("THREE.PropertyMixer") extern class PropertyMixer {
	/**
		Constructs a new property mixer.
	**/
	function new(binding:PropertyBinding, typeName:String, valueSize:Float);
	/**
		The property binding.
	**/
	var binding : PropertyBinding;
	/**
		The keyframe track value size.
	**/
	var valueSize : Float;
	/**
		TODO
	**/
	var cumulativeWeight : Float;
	/**
		TODO
	**/
	var cumulativeWeightAdditive : Float;
	/**
		TODO
	**/
	var useCount : Float;
	/**
		TODO
	**/
	var referenceCount : Float;
	/**
		Accumulates data in the `incoming` region into `accu<i>`.
	**/
	function accumulate(accuIndex:Float, weight:Float):Void;
	/**
		Accumulates data in the `incoming` region into `add`.
	**/
	function accumulateAdditive(weight:Float):Void;
	/**
		Applies the state of `accu<i>` to the binding when accus differ.
	**/
	function apply(accuIndex:Float):Void;
	/**
		Remembers the state of the bound property and copy it to both accus.
	**/
	function saveOriginalState():Void;
	/**
		Applies the state previously taken via {@link PropertyMixer#saveOriginalState} to the binding.
	**/
	function restoreOriginalState():Void;
	static var prototype : PropertyMixer;
}