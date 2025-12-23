package three;

/**
	Create a smooth **2D** spline curve from a series of points.
**/
@:native("THREE.SplineCurve") extern class SplineCurve extends Curve<Vector2> {
	/**
		This constructor creates a new {@link SplineCurve}.
	**/
	function new(?points:Array<Vector2>);
	/**
		Read-only flag to check if a given object is of type {@link SplineCurve}.
	**/
	final isSplineCurve : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The array of {@link THREE.Vector2 | Vector2} points that define the curve.
	**/
	var points : Array<Vector2>;
	/**
		Creates a clone of this instance.
	**/
	function clone():SplineCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):SplineCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):SplineCurve;
	static var prototype : SplineCurve;
}