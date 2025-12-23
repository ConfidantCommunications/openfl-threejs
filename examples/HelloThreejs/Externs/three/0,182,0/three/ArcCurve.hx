package three;

/**
	Alias for {@link THREE.EllipseCurve | EllipseCurve}.
**/
@:native("THREE.ArcCurve") extern class ArcCurve extends EllipseCurve {
	/**
		This constructor creates a new {@link ArcCurve}.
	**/
	function new(?aX:Float, ?aY:Float, ?aRadius:Float, ?aStartAngle:Float, ?aEndAngle:Float, ?aClockwise:Bool);
	/**
		Read-only flag to check if a given object is of type {@link ArcCurve}.
	**/
	final isArcCurve : Bool;
	/**
		Creates a clone of this instance.
	**/
	function clone():ArcCurve;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):ArcCurve;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):ArcCurve;
	static var prototype : ArcCurve;
}