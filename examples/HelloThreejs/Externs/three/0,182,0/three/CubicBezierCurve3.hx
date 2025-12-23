package three;

/**
	Create a smooth **3D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:Bezier_curve.svg | cubic bezier curve},
	defined by a start point, endpoint and two control points.
**/
@:native("THREE.CubicBezierCurve3") extern class CubicBezierCurve3 extends Curve<Vector3> {
	/**
		This constructor creates a new {@link CubicBezierCurve3}.
	**/
	function new(?v0:Vector3, ?v1:Vector3, ?v2:Vector3, ?v3:Vector3);
	/**
		Read-only flag to check if a given object is of type {@link CubicBezierCurve3}.
	**/
	final isCubicBezierCurve3 : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The starting point.
	**/
	var v0 : Vector3;
	/**
		The first control point.
	**/
	var v1 : Vector3;
	/**
		The second control point.
	**/
	var v2 : Vector3;
	/**
		The ending point.
	**/
	var v3 : Vector3;
	/**
		Creates a clone of this instance.
	**/
	function clone():CubicBezierCurve3;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector3>):CubicBezierCurve3;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):CubicBezierCurve3;
	static var prototype : CubicBezierCurve3;
}