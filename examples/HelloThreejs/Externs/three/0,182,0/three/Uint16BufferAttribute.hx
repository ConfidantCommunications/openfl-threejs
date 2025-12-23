package three;

/**
	A {@link THREE.BufferAttribute | BufferAttribute} for {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint16Array: Uint16Array}
	{@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray#typedarray_objects | TypedArray}
**/
@:native("THREE.Uint16BufferAttribute") extern class Uint16BufferAttribute extends BufferAttribute {
	/**
		This creates a new {@link THREE.Uint16BufferAttribute | Uint16BufferAttribute} object.
	**/
	function new(array:ts.AnyOf4<Float, js.lib.ArrayLike<Float>, js.lib.ArrayBuffer, Iterable<Float>>, itemSize:Float, ?normalized:Bool);
	/**
		Sets the value of the {@link onUploadCallback} property.
	**/
	function onUpload(callback:() -> Void):Uint16BufferAttribute;
	/**
		Set {@link BufferAttribute.usage | usage}
	**/
	function setUsage(usage:Usage):Uint16BufferAttribute;
	/**
		Copies another {@link BufferAttribute} to this {@link BufferAttribute}.
	**/
	function copy(source:BufferAttribute):Uint16BufferAttribute;
	/**
		Copy a vector from bufferAttribute[index2] to {@link BufferAttribute.array | array}[index1].
	**/
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float):Uint16BufferAttribute;
	/**
		Copy the array given here (which can be a normal array or `TypedArray`) into {@link BufferAttribute.array | array}.
	**/
	function copyArray(array:js.lib.ArrayLike<Float>):Uint16BufferAttribute;
	/**
		Applies matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyMatrix3(m:Matrix3):Uint16BufferAttribute;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyMatrix4(m:Matrix4):Uint16BufferAttribute;
	/**
		Applies normal matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyNormalMatrix(m:Matrix3):Uint16BufferAttribute;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}, interpreting the elements as a direction vectors.
	**/
	function transformDirection(m:Matrix4):Uint16BufferAttribute;
	/**
		Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
		on the {@link BufferAttribute.array | array}.
	**/
	function set(value:ts.AnyOf2<js.lib.ArrayLike<Float>, js.lib.ArrayBufferView>, ?offset:Float):Uint16BufferAttribute;
	/**
		Sets the x component of the vector at the given index.
	**/
	function setX(index:Float, x:Float):Uint16BufferAttribute;
	/**
		Sets the y component of the vector at the given index.
	**/
	function setY(index:Float, y:Float):Uint16BufferAttribute;
	/**
		Sets the z component of the vector at the given index.
	**/
	function setZ(index:Float, z:Float):Uint16BufferAttribute;
	/**
		Sets the w component of the vector at the given index.
	**/
	function setW(index:Float, z:Float):Uint16BufferAttribute;
	/**
		Sets the x and y components of the vector at the given index.
	**/
	function setXY(index:Float, x:Float, y:Float):Uint16BufferAttribute;
	/**
		Sets the x, y and z components of the vector at the given index.
	**/
	function setXYZ(index:Float, x:Float, y:Float, z:Float):Uint16BufferAttribute;
	/**
		Sets the x, y, z and w components of the vector at the given index.
	**/
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):Uint16BufferAttribute;
	static var prototype : Uint16BufferAttribute;
}