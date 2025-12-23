package three;

/**
	A 2D {@link Path} representation.
**/
@:native("THREE.Path") extern class Path extends CurvePath<Vector2> {
	/**
		Creates a {@link Path} from the points
	**/
	function new(?points:Array<Vector2>);
	/**
		The current offset of the path. Any new {@link THREE.Curve | Curve} added will start here.
	**/
	var currentPoint : Vector2;
	/**
		Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	**/
	function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool):Path;
	/**
		Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	**/
	function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float):Path;
	/**
		Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	**/
	function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool):Path;
	/**
		This creates a bezier curve from {@link .currentPoint} with (cp1X, cp1Y) and (cp2X, cp2Y) as control points and updates {@link .currentPoint} to x and y.
	**/
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float):Path;
	/**
		Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	**/
	function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float):Path;
	/**
		Connects a {@link THREE.LineCurve | LineCurve} from {@link .currentPoint} to x, y onto the path.
	**/
	function lineTo(x:Float, y:Float):Path;
	/**
		Move the {@link .currentPoint} to x, y.
	**/
	function moveTo(x:Float, y:Float):Path;
	/**
		Creates a quadratic curve from {@link .currentPoint} with cpX and cpY as control point and updates {@link .currentPoint} to x and y.
	**/
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float):Path;
	/**
		Points are added to the {@link CurvePath.curves | curves} array as {@link THREE.LineCurve | LineCurves}.
	**/
	function setFromPoints(vectors:Array<Vector2>):Path;
	/**
		Connects a new {@link THREE.SplineCurve | SplineCurve} onto the path.
	**/
	function splineThru(pts:Array<Vector2>):Path;
	/**
		Returns a JSON object representation of this instance.
	**/
	function toJSON():PathJSON;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:PathJSON):Path;
	/**
		Adds a {@link LineCurve | lineCurve} to close the path.
	**/
	function closePath():Path;
	/**
		Creates a clone of this instance.
	**/
	function clone():Path;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):Path;
	static var prototype : Path;
}