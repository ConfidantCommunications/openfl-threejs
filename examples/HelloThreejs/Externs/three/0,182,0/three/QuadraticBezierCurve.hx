package three;

/**
	Create a smooth **2D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:B%C3%A9zier_2_big.gif | quadratic bezier curve},
	defined by a start point, end point and a single control point.
**/
@:native("THREE.QuadraticBezierCurve") extern class QuadraticBezierCurve extends Curve<Vector2> {
	/**
		This constructor creates a new {@link QuadraticBezierCurve}.
	**/
	function new(?v0:Vector2, ?v1:Vector2, ?v2:Vector2);
	/**
		Read-only flag to check if a given object is of type {@link LineCurve3}.
	**/
	final isQuadraticBezierCurve : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The start point.
	**/
	var v0 : Vector2;
	/**
		The control point.
	**/
	var v1 : Vector2;
	/**
		The end point.
	**/
	var v2 : Vector2;
	/**
		Creates a clone of this instance.
	**/
	function clone():QuadraticBezierCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):QuadraticBezierCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):QuadraticBezierCurve;
	static var prototype : QuadraticBezierCurve;
}