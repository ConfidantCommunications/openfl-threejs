package three;

/**
	A curve representing a **3D** line segment.
**/
@:native("THREE.LineCurve3") extern class LineCurve3 extends Curve<Vector3> {
	/**
		This constructor creates a new {@link LineCurve3}.
	**/
	function new(?v1:Vector3, ?v2:Vector3);
	/**
		Read-only flag to check if a given object is of type {@link LineCurve3}.
	**/
	final isLineCurve3 : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The start point.
	**/
	var v1 : Vector3;
	/**
		The end point.
	**/
	var v2 : Vector3;
	/**
		Creates a clone of this instance.
	**/
	function clone():LineCurve3;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector3>):LineCurve3;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):LineCurve3;
	static var prototype : LineCurve3;
}