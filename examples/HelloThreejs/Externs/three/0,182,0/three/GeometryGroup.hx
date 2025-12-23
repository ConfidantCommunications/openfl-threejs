package three;

typedef GeometryGroup = {
	/**
		Specifies the first element in this draw call – the first vertex for non-indexed geometry, otherwise the first triangle index.
	**/
	var start : Float;
	/**
		Specifies how many vertices (or indices) are included.
	**/
	var count : Float;
	/**
		Specifies the material array index to use.
	**/
	@:optional
	var materialIndex : Float;
};