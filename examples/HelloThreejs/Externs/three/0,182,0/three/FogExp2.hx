package three;

/**
	This class contains the parameters that define exponential squared fog, which gives a clear view near the camera and a faster than exponentially densening fog farther from the camera.
**/
@:native("THREE.FogExp2") extern class FogExp2 {
	/**
		The color parameter is passed to the {@link THREE.Color | Color} constructor to set the color property
	**/
	function new(color:ColorRepresentation, ?density:Float);
	/**
		Read-only flag to check if a given object is of type {@link FogExp2}.
	**/
	final isFogExp2 : Bool;
	/**
		Optional name of the object
	**/
	var name : String;
	/**
		Fog color.
	**/
	var color : Color;
	/**
		Defines how fast the fog will grow dense.
	**/
	var density : Float;
	/**
		Returns a new {@link FogExp2} instance with the same parameters as this one.
	**/
	function clone():FogExp2;
	/**
		Return {@link FogExp2} data in JSON format.
	**/
	function toJSON():FogExp2JSON;
	static var prototype : FogExp2;
}