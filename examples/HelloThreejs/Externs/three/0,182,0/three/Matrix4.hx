package three;

/**
	A 4x4 Matrix.
**/
@:native("THREE.Matrix4") extern class Matrix4 {
	/**
		Creates an identity matrix.
	**/
	@:overload(function(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float):Matrix4 { })
	function new();
	final isMatrix4 : Bool;
	/**
		Array with matrix values.
	**/
	var elements : Matrix4Tuple;
	/**
		Sets all fields of this matrix.
	**/
	function set(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float):Matrix4;
	/**
		Resets this matrix to identity.
	**/
	function identity():Matrix4;
	function clone():Matrix4;
	function copy(m:Matrix4):Matrix4;
	function copyPosition(m:Matrix4):Matrix4;
	/**
		Set the upper 3x3 elements of this matrix to the values of the Matrix3 m.
	**/
	function setFromMatrix3(m:Matrix3):Matrix4;
	function extractBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3):Matrix4;
	function makeBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3):Matrix4;
	/**
		Copies the rotation component of the supplied matrix m into this matrix rotation component.
	**/
	function extractRotation(m:Matrix4):Matrix4;
	function makeRotationFromEuler(euler:Euler):Matrix4;
	function makeRotationFromQuaternion(q:Quaternion):Matrix4;
	/**
		Sets the rotation component of the transformation matrix, looking from [eye]{@link Vector3} towards
		[target]{@link Vector3}, and oriented by the up-direction [up]{@link Vector3}.
	**/
	function lookAt(eye:Vector3, target:Vector3, up:Vector3):Matrix4;
	/**
		Multiplies this matrix by m.
	**/
	function multiply(m:Matrix4):Matrix4;
	function premultiply(m:Matrix4):Matrix4;
	/**
		Sets this matrix to a x b.
	**/
	function multiplyMatrices(a:Matrix4, b:Matrix4):Matrix4;
	/**
		Multiplies this matrix by s.
	**/
	function multiplyScalar(s:Float):Matrix4;
	/**
		Computes determinant of this matrix.
		Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
	**/
	function determinant():Float;
	/**
		Transposes this matrix.
	**/
	function transpose():Matrix4;
	/**
		Sets the position component for this matrix from vector v.
	**/
	@:overload(function(x:Float, y:Float, z:Float):Matrix4 { })
	function setPosition(v:Vector3):Matrix4;
	/**
		Inverts this matrix.
	**/
	function invert():Matrix4;
	/**
		Multiplies the columns of this matrix by vector v.
	**/
	function scale(v:Vector3):Matrix4;
	function getMaxScaleOnAxis():Float;
	/**
		Sets this matrix as translation transform.
	**/
	@:overload(function(x:Float, y:Float, z:Float):Matrix4 { })
	function makeTranslation(v:Vector3):Matrix4;
	/**
		Sets this matrix as rotation transform around x axis by theta radians.
	**/
	function makeRotationX(theta:Float):Matrix4;
	/**
		Sets this matrix as rotation transform around y axis by theta radians.
	**/
	function makeRotationY(theta:Float):Matrix4;
	/**
		Sets this matrix as rotation transform around z axis by theta radians.
	**/
	function makeRotationZ(theta:Float):Matrix4;
	/**
		Sets this matrix as rotation transform around axis by angle radians.
		Based on http://www.gamedev.net/reference/articles/article1199.asp.
	**/
	function makeRotationAxis(axis:Vector3, angle:Float):Matrix4;
	/**
		Sets this matrix as scale transform.
	**/
	function makeScale(x:Float, y:Float, z:Float):Matrix4;
	/**
		Sets this matrix as shear transform.
	**/
	function makeShear(xy:Float, xz:Float, yx:Float, yz:Float, zx:Float, zy:Float):Matrix4;
	/**
		Sets this matrix to the transformation composed of translation, rotation and scale.
	**/
	function compose(position:Vector3, quaternion:Quaternion, scale:Vector3):Matrix4;
	/**
		Decomposes this matrix into it's position, quaternion and scale components.
	**/
	function decompose(position:Vector3, quaternion:Quaternion, scale:Vector3):Matrix4;
	/**
		Creates a perspective projection matrix.
	**/
	function makePerspective(left:Float, right:Float, top:Float, bottom:Float, near:Float, far:Float, ?coordinateSystem:CoordinateSystem, ?reversedDepth:Bool):Matrix4;
	/**
		Creates an orthographic projection matrix.
	**/
	function makeOrthographic(left:Float, right:Float, top:Float, bottom:Float, near:Float, far:Float, ?coordinateSystem:CoordinateSystem, ?reversedDepth:Bool):Matrix4;
	function equals(matrix:Matrix4):Bool;
	/**
		Sets the values of this matrix from the provided array or array-like.
	**/
	function fromArray(array:js.lib.ArrayLike<Float>, ?offset:Float):Matrix4;
	/**
		Writes the elements of this matrix to an array in
		{@link https://en.wikipedia.org/wiki/Row-_and_column-major_order#Column-major_order column-major} format.
		
		Writes the elements of this matrix to an array in
		{@link https://en.wikipedia.org/wiki/Row-_and_column-major_order#Column-major_order column-major} format.
	**/
	@:overload(function<TArray>(array:TArray, ?offset:Float):TArray { })
	function toArray():Matrix4Tuple;
	static var prototype : Matrix4;
}