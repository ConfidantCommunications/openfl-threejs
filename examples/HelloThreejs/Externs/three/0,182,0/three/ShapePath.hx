package three;

/**
	This class is used to convert a series of shapes to an array of {@link THREE.Path | Path's},
	for example an SVG shape to a path.
**/
@:native("THREE.ShapePath") extern class ShapePath {
	/**
		Creates a new {@link ShapePath}
	**/
	function new();
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	final type : String;
	/**
		Array of {@link THREE.Path | Path's}s.
	**/
	var subPaths : Array<Path>;
	/**
		The current {@link THREE.Path | Path} that is being generated.
	**/
	final currentPath : Null<Path>;
	/**
		{@link THREE.Color | Color} of the shape, by default set to white _(0xffffff)_.
	**/
	var color : Color;
	/**
		Starts a new {@link THREE.Path | Path} and calls {@link THREE.Path.moveTo | Path.moveTo}( x, y ) on that {@link THREE.Path | Path}
	**/
	function moveTo(x:Float, y:Float):ShapePath;
	/**
		This creates a line from the {@link ShapePath.currentPath | currentPath}'s offset to X and Y and updates the offset to X and Y.
	**/
	function lineTo(x:Float, y:Float):ShapePath;
	/**
		This creates a quadratic curve from the {@link ShapePath.currentPath | currentPath}'s
		offset to _x_ and _y_ with _cpX_ and _cpY_ as control point and updates the {@link ShapePath.currentPath | currentPath}'s offset to _x_ and _y_.
	**/
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float):ShapePath;
	/**
		This creates a bezier curve from the {@link ShapePath.currentPath | currentPath}'s
		offset to _x_ and _y_ with _cp1X_, _cp1Y_ and _cp2X_, _cp2Y_ as control points and
		updates the {@link ShapePath.currentPath | currentPath}'s offset to _x_ and _y_.
	**/
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float):ShapePath;
	/**
		Connects a new {@link THREE.SplineCurve | SplineCurve} onto the {@link ShapePath.currentPath | currentPath}.
	**/
	function splineThru(pts:Array<Vector2>):ShapePath;
	/**
		Converts the {@link ShapePath.subPaths | subPaths} array into an array of Shapes
	**/
	function toShapes(isCCW:Bool):Array<Shape>;
	static var prototype : ShapePath;
}