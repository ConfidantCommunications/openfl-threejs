package three;

/**
	A curve representing a **2D** line segment.
**/
@:native("THREE.LineCurve") extern class LineCurve extends Curve<Vector2> {
	/**
		This constructor creates a new {@link LineCurve}.
	**/
	function new(?v1:Vector2, ?v2:Vector2);
	/**
		Read-only flag to check if a given object is of type {@link LineCurve}.
	**/
	final isLineCurve : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The start point.
	**/
	var v1 : Vector2;
	/**
		The end point
	**/
	var v2 : Vector2;
	/**
		Creates a clone of this instance.
	**/
	function clone():LineCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):LineCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):LineCurve;
	static var prototype : LineCurve;
}