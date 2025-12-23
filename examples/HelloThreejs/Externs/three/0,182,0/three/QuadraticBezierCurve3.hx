package three;

/**
	Create a smooth **3D** {@link http://en.wikipedia.org/wiki/B%C3%A9zier_curve#mediaviewer/File:B%C3%A9zier_2_big.gif | quadratic bezier curve},
	defined by a start point, end point and a single control point.
**/
@:native("THREE.QuadraticBezierCurve3") extern class QuadraticBezierCurve3 extends Curve<Vector3> {
	/**
		This constructor creates a new {@link QuadraticBezierCurve}.
	**/
	function new(?v0:Vector3, ?v1:Vector3, ?v2:Vector3);
	/**
		Read-only flag to check if a given object is of type {@link QuadraticBezierCurve3}.
	**/
	final isQuadraticBezierCurve3 : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The start point.
	**/
	var v0 : Vector3;
	/**
		The control point.
	**/
	var v1 : Vector3;
	/**
		The end point.
	**/
	var v2 : Vector3;
	/**
		Creates a clone of this instance.
	**/
	function clone():QuadraticBezierCurve3;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector3>):QuadraticBezierCurve3;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):QuadraticBezierCurve3;
	static var prototype : QuadraticBezierCurve3;
}