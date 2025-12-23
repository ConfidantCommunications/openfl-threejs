package three;

/**
	Defines an arbitrary 2d {@link Shape} plane using paths with optional holes
**/
@:native("THREE.Shape") extern class Shape extends Path {
	/**
		Creates a {@link Shape} from the points
	**/
	function new(?points:Array<Vector2>);
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		An array of {@link Path | paths} that define the holes in the shape.
	**/
	var holes : Array<Path>;
	/**
		Call {@link THREE.Curve.getPoints | getPoints} on the {@link Shape} and the {@link holes} array
	**/
	function extractPoints(divisions:Float):{
		var shape : Array<Vector2>;
		var holes : Array<Array<Vector2>>;
	};
	/**
		Get an array of {@link Vector2 | Vector2's} that represent the holes in the shape.
	**/
	function getPointsHoles(divisions:Float):Array<Array<Vector2>>;
	/**
		Returns a JSON object representation of this instance.
	**/
	function toJSON():ShapeJSON;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:ShapeJSON):Shape;
	/**
		Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	**/
	function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool):Shape;
	/**
		Adds an absolutely positioned {@link THREE.EllipseCurve | EllipseCurve} to the path.
	**/
	function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float):Shape;
	/**
		Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	**/
	function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool):Shape;
	/**
		This creates a bezier curve from {@link .currentPoint} with (cp1X, cp1Y) and (cp2X, cp2Y) as control points and updates {@link .currentPoint} to x and y.
	**/
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float):Shape;
	/**
		Adds an {@link THREE.EllipseCurve | EllipseCurve} to the path, positioned relative to {@link .currentPoint}.
	**/
	function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, ?aClockwise:Bool, ?aRotation:Float):Shape;
	/**
		Connects a {@link THREE.LineCurve | LineCurve} from {@link .currentPoint} to x, y onto the path.
	**/
	function lineTo(x:Float, y:Float):Shape;
	/**
		Move the {@link .currentPoint} to x, y.
	**/
	function moveTo(x:Float, y:Float):Shape;
	/**
		Creates a quadratic curve from {@link .currentPoint} with cpX and cpY as control point and updates {@link .currentPoint} to x and y.
	**/
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float):Shape;
	/**
		Points are added to the {@link CurvePath.curves | curves} array as {@link THREE.LineCurve | LineCurves}.
	**/
	function setFromPoints(vectors:Array<Vector2>):Shape;
	/**
		Connects a new {@link THREE.SplineCurve | SplineCurve} onto the path.
	**/
	function splineThru(pts:Array<Vector2>):Shape;
	/**
		Adds a {@link LineCurve | lineCurve} to close the path.
	**/
	function closePath():Shape;
	/**
		Creates a clone of this instance.
	**/
	function clone():Shape;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector2>):Shape;
	static var prototype : Shape;
}