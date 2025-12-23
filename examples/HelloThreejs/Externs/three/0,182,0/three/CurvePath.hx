package three;

/**
	Curved Path - a curve path is simply a array of connected curves, but retains the api of a curve.
**/
@:native("THREE.CurvePath") extern class CurvePath<TVector> extends Curve<TVector> {
	/**
		The constructor take no parameters.
	**/
	function new();
	/**
		A Read-only _string_ to check if `this` object type.
		
		Returns an array of points representing a sequence of curves
		
		Returns a set of divisions `+1` equi-spaced points using {@link .getPointAt | getPointAt(u)}.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The array of {@link Curve | Curves}.
	**/
	var curves : Array<Curve<TVector>>;
	/**
		Whether or not to automatically close the path.
	**/
	var autoClose : Bool;
	/**
		Add a curve to the {@link .curves} array.
	**/
	function add(curve:Curve<TVector>):Void;
	/**
		Adds a {@link LineCurve | lineCurve} to close the path.
	**/
	function closePath():CurvePath<TVector>;
	/**
		Get list of cumulative curve lengths of the curves in the {@link .curves} array.
	**/
	function getCurveLengths():Array<Float>;
	/**
		Returns a JSON object representation of this instance.
	**/
	function toJSON():CurvePathJSON;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurvePathJSON):CurvePath<TVector>;
	/**
		Creates a clone of this instance.
	**/
	function clone():CurvePath<TVector>;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<TVector>):CurvePath<TVector>;
	static var prototype : CurvePath<Dynamic>;
}