package three;

/**
	Create a smooth **3D** spline curve from a series of points using the {@link https://en.wikipedia.org/wiki/Centripetal_Catmull-Rom_spline | Catmull-Rom} algorithm.
**/
@:native("THREE.CatmullRomCurve3") extern class CatmullRomCurve3 extends Curve<Vector3> {
	/**
		This constructor creates a new {@link CatmullRomCurve3}.
	**/
	function new(?points:Array<Vector3>, ?closed:Bool, ?curveType:CurveType, ?tension:Float);
	/**
		Read-only flag to check if a given object is of type {@link CatmullRomCurve3}.
	**/
	final isCatmullRomCurve3 : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The curve will loop back onto itself when this is true.
	**/
	var closed : Bool;
	/**
		The array of {@link THREE.Vector3 | Vector3} points that define the curve.
	**/
	var points : Array<Vector3>;
	/**
		Possible values are `centripetal`, `chordal` and `catmullrom`.
	**/
	var curveType : CurveType;
	/**
		When {@link .curveType} is `catmullrom`, defines catmullrom's tension.
	**/
	var tension : Float;
	/**
		Creates a clone of this instance.
	**/
	function clone():CatmullRomCurve3;
	/**
		Copies another {@link Curve} object to this instance.
	**/
	function copy(source:Curve<Vector3>):CatmullRomCurve3;
	/**
		Copies the data from the given JSON object to this instance.
	**/
	function fromJSON(json:CurveJSON):CatmullRomCurve3;
	static var prototype : CatmullRomCurve3;
}