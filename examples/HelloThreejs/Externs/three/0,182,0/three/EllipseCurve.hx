package three;

/**
	Creates a 2d curve in the shape of an ellipse
**/
@:native("THREE.EllipseCurve") extern class EllipseCurve extends Curve<Vector2> {
	/**
		This constructor creates a new {@link EllipseCurve}.
	**/
	function new(?aX:Float, ?aY:Float, ?xRadius:Float, ?yRadius:Float, ?aStartAngle:Float, ?aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float);
	/**
		Read-only flag to check if a given object is of type {@link EllipseCurve}.
	**/
	final isEllipseCurve : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The X center of the ellipse.
	**/
	var aX : Float;
	/**
		The Y center of the ellipse.
	**/
	var aY : Float;
	/**
		The radius of the ellipse in the x direction.
	**/
	var xRadius : Float;
	/**
		The radius of the ellipse in the y direction.
	**/
	var yRadius : Float;
	/**
		The start angle of the curve in radians starting from the middle right side.
	**/
	var aStartAngle : Float;
	/**
		The end angle of the curve in radians starting from the middle right side.
	**/
	var aEndAngle : Float;
	/**
		Whether the ellipse is drawn clockwise.
	**/
	var aClockwise : Bool;
	/**
		The rotation angle of the ellipse in radians, counterclockwise from the positive X axis (optional).
	**/
	var aRotation : Float;
	/**
		Creates a clone of this instance.
	**/
	function clone():EllipseCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):EllipseCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):EllipseCurve;
	static var prototype : EllipseCurve;
}