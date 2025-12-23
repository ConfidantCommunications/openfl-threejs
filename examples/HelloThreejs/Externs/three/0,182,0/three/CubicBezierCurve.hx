package three;

/**
	Create a smooth **2D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:Bezier_curve.svg | cubic bezier curve},
	defined by a start point, endpoint and two control points.
**/
@:native("THREE.CubicBezierCurve") extern class CubicBezierCurve extends Curve<Vector2> {
	/**
		This constructor creates a new {@link CubicBezierCurve}.
	**/
	function new(?v0:Vector2, ?v1:Vector2, ?v2:Vector2, ?v3:Vector2);
	/**
		Read-only flag to check if a given object is of type {@link CubicBezierCurve}.
	**/
	final isCubicBezierCurve : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The starting point.
	**/
	var v0 : Vector2;
	/**
		The first control point.
	**/
	var v1 : Vector2;
	/**
		The second control point.
	**/
	var v2 : Vector2;
	/**
		The ending point.
	**/
	var v3 : Vector2;
	/**
		Creates a clone of this instance.
	**/
	function clone():CubicBezierCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):CubicBezierCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):CubicBezierCurve;
	static var prototype : CubicBezierCurve;
}