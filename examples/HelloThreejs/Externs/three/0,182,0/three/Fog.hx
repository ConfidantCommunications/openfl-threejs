package three;

/**
	This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
**/
@:native("THREE.Fog") extern class Fog {
	/**
		The color parameter is passed to the {@link THREE.Color | Color} constructor to set the color property
	**/
	function new(color:ColorRepresentation, ?near:Float, ?far:Float);
	/**
		Read-only flag to check if a given object is of type {@link Fog}.
	**/
	final isFog : Bool;
	/**
		Optional name of the object
	**/
	var name : String;
	/**
		Fog color.
	**/
	var color : Color;
	/**
		The minimum distance to start applying fog.
	**/
	var near : Float;
	/**
		The maximum distance at which fog stops being calculated and applied.
	**/
	var far : Float;
	/**
		Returns a new {@link Fog} instance with the same parameters as this one.
	**/
	function clone():Fog;
	/**
		Return {@link Fog} data in JSON format.
	**/
	function toJSON():FogJSON;
	static var prototype : Fog;
}