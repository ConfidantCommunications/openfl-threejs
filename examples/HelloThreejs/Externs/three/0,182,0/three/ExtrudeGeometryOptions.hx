package three;

typedef ExtrudeGeometryOptions = {
	/**
		Number of points on the curves.
		Expects a `Integer`.
	**/
	@:optional
	var curveSegments : Float;
	/**
		Number of points used for subdividing segments along the depth of the extruded spline.
	**/
	@:optional
	var steps : Float;
	/**
		Depth to extrude the shape.
	**/
	@:optional
	var depth : Float;
	/**
		Turn on bevel. Applying beveling to the shape.
	**/
	@:optional
	var bevelEnabled : Bool;
	/**
		How deep into the original shape the bevel goes.
		Expects a `Float`.
	**/
	@:optional
	var bevelThickness : Float;
	/**
		Distance from the shape outline that the bevel extends
		Expects a `Float`.
	**/
	@:optional
	var bevelSize : Float;
	/**
		Distance from the shape outline that the bevel starts.
		Expects a `Float`.
	**/
	@:optional
	var bevelOffset : Float;
	/**
		Number of bevel layers/segments.
		Expects a `Integer`.
	**/
	@:optional
	var bevelSegments : Float;
	/**
		A 3D spline path along which the shape should be extruded.
	**/
	@:optional
	var extrudePath : Curve<Vector3>;
	/**
		A object that provides UV generator functions.
	**/
	@:optional
	var UVGenerator : UVGenerator;
};