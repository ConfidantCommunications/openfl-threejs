package three;

/**
	A class containing utility functions for shapes.
**/
@:native("THREE.ShapeUtils") extern class ShapeUtils {
	function new();
	static var prototype : ShapeUtils;
	/**
		Calculate area of a ( 2D ) contour polygon.
	**/
	static function area(contour:haxe.ds.ReadOnlyArray<Vector2Like>):Float;
	/**
		Note that this is a linear function so it is necessary to calculate separately for x, y components of a polygon.
	**/
	static function isClockWise(pts:haxe.ds.ReadOnlyArray<Vector2Like>):Bool;
	/**
		Used internally by {@link THREE.ExtrudeGeometry | ExtrudeGeometry} and {@link THREE.ShapeGeometry | ShapeGeometry} to calculate faces in shapes with holes.
	**/
	static function triangulateShape(contour:Array<Vector2Like>, holes:Array<Array<Vector2Like>>):Array<Array<Float>>;
}