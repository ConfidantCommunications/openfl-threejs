package three;

/**
	A class representing a 2x2 {@link https://en.wikipedia.org/wiki/Matrix_(mathematics) matrix}.
**/
@:native("THREE.Matrix2") extern class Matrix2 {
	/**
		Creates a 2x2 {@link https://en.wikipedia.org/wiki/Identity_matrix identity matrix}.
	**/
	@:overload(function(n11:Float, n12:Float, n21:Float, n22:Float):Matrix2 { })
	function new();
	final isMatrix2 : Bool;
	/**
		A {@link https://en.wikipedia.org/wiki/Row-_and_column-major_order column-major} list of matrix values.
	**/
	var elements : Matrix2Tuple;
	/**
		Resets this matrix to the 2x2 identity matrix:
	**/
	function identity():Matrix2;
	/**
		Sets the elements of this matrix based on an array in
		{@link https://en.wikipedia.org/wiki/Row-_and_column-major_order#Column-major_order column-major} format.
	**/
	function fromArray(array:js.lib.ArrayLike<Float>, ?offset:Float):Matrix2;
	/**
		Sets the 2x2 matrix values to the given
		{@link https://en.wikipedia.org/wiki/Row-_and_column-major_order row-major} sequence of values:
		[n11, n12,
		  n21, n22]
	**/
	function set(n11:Float, n12:Float, n21:Float, n22:Float):Matrix2;
	static var prototype : Matrix2;
}