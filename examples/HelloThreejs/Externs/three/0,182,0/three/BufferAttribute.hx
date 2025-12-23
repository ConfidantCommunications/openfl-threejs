package three;

/**
	This class stores data for an attribute (such as vertex positions, face indices, normals, colors, UVs, and any custom attributes )
	associated with a {@link THREE.BufferGeometry | BufferGeometry}, which allows for more efficient passing of data to the GPU
**/
@:native("THREE.BufferAttribute") extern class BufferAttribute {
	/**
		This creates a new {@link THREE.GLBufferAttribute | GLBufferAttribute} object.
	**/
	function new(array:TypedArray, itemSize:Float, ?normalized:Bool);
	/**
		Unique number for this attribute instance.
	**/
	final id : Float;
	/**
		Optional name for this attribute instance.
	**/
	var name : String;
	/**
		The {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} holding data stored in the buffer.
	**/
	var array : TypedArray;
	/**
		The length of vectors that are being stored in the {@link BufferAttribute.array | array}.
	**/
	var itemSize : Float;
	/**
		Defines the intended usage pattern of the data store for optimization purposes.
		Corresponds to the {@link BufferAttribute.usage | usage} parameter of
		{@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bufferData | WebGLRenderingContext.bufferData}.
	**/
	var usage : Usage;
	/**
		Configures the bound GPU type for use in shaders. Either {@link FloatType} or {@link IntType}, default is {@link FloatType}.
		
		Note: this only has an effect for integer arrays and is not configurable for float arrays. For lower precision
		float types, see https://threejs.org/docs/#api/en/core/bufferAttributeTypes/BufferAttributeTypes.
	**/
	var gpuType : AttributeGPUType;
	/**
		This can be used to only update some components of stored vectors (for example, just the component related to
		color). Use the {@link .addUpdateRange} function to add ranges to this array.
	**/
	var updateRanges : Array<{
		/**
			Position at which to start update.
		**/
		var start : Float;
		/**
			The number of components to update.
		**/
		var count : Float;
	}>;
	/**
		A version number, incremented every time the {@link BufferAttribute.needsUpdate | needsUpdate} property is set to true.
	**/
	var version : Float;
	/**
		Indicates how the underlying data in the buffer maps to the values in the GLSL shader code.
	**/
	var normalized : Bool;
	/**
		Represents the number of items this buffer attribute stores. It is internally computed by dividing the
		{@link BufferAttribute.array | array}'s length by the {@link BufferAttribute.itemSize | itemSize}. Read-only
		property.
	**/
	final count : Float;
	/**
		Flag to indicate that this attribute has changed and should be re-sent to the GPU.
		Set this to true when you modify the value of the array.
	**/
	var needsUpdate : Bool;
	/**
		Read-only flag to check if a given object is of type {@link BufferAttribute}.
	**/
	final isBufferAttribute : Bool;
	/**
		A callback function that is executed after the Renderer has transferred the attribute array data to the GPU.
	**/
	dynamic function onUploadCallback():Void;
	/**
		Sets the value of the {@link onUploadCallback} property.
	**/
	function onUpload(callback:() -> Void):BufferAttribute;
	/**
		Set {@link BufferAttribute.usage | usage}
	**/
	function setUsage(usage:Usage):BufferAttribute;
	/**
		Adds a range of data in the data array to be updated on the GPU. Adds an object describing the range to the
		{@link .updateRanges} array.
	**/
	function addUpdateRange(start:Float, count:Float):Void;
	/**
		Clears the {@link .updateRanges} array.
	**/
	function clearUpdateRanges():Void;
	function clone():BufferAttribute;
	/**
		Copies another {@link BufferAttribute} to this {@link BufferAttribute}.
	**/
	function copy(source:BufferAttribute):BufferAttribute;
	/**
		Copy a vector from bufferAttribute[index2] to {@link BufferAttribute.array | array}[index1].
	**/
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float):BufferAttribute;
	/**
		Copy the array given here (which can be a normal array or `TypedArray`) into {@link BufferAttribute.array | array}.
	**/
	function copyArray(array:js.lib.ArrayLike<Float>):BufferAttribute;
	/**
		Applies matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyMatrix3(m:Matrix3):BufferAttribute;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyMatrix4(m:Matrix4):BufferAttribute;
	/**
		Applies normal matrix {@link Matrix3 | m} to every Vector3 element of this {@link BufferAttribute}.
	**/
	function applyNormalMatrix(m:Matrix3):BufferAttribute;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this {@link BufferAttribute}, interpreting the elements as a direction vectors.
	**/
	function transformDirection(m:Matrix4):BufferAttribute;
	/**
		Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
		on the {@link BufferAttribute.array | array}.
	**/
	function set(value:ts.AnyOf2<js.lib.ArrayLike<Float>, js.lib.ArrayBufferView>, ?offset:Float):BufferAttribute;
	/**
		Returns the given component of the vector at the given index.
	**/
	function getComponent(index:Float, component:Float):Float;
	/**
		Sets the given component of the vector at the given index.
	**/
	function setComponent(index:Float, component:Float, value:Float):Void;
	/**
		Returns the x component of the vector at the given index.
	**/
	function getX(index:Float):Float;
	/**
		Sets the x component of the vector at the given index.
	**/
	function setX(index:Float, x:Float):BufferAttribute;
	/**
		Returns the y component of the vector at the given index.
	**/
	function getY(index:Float):Float;
	/**
		Sets the y component of the vector at the given index.
	**/
	function setY(index:Float, y:Float):BufferAttribute;
	/**
		Returns the z component of the vector at the given index.
	**/
	function getZ(index:Float):Float;
	/**
		Sets the z component of the vector at the given index.
	**/
	function setZ(index:Float, z:Float):BufferAttribute;
	/**
		Returns the w component of the vector at the given index.
	**/
	function getW(index:Float):Float;
	/**
		Sets the w component of the vector at the given index.
	**/
	function setW(index:Float, z:Float):BufferAttribute;
	/**
		Sets the x and y components of the vector at the given index.
	**/
	function setXY(index:Float, x:Float, y:Float):BufferAttribute;
	/**
		Sets the x, y and z components of the vector at the given index.
	**/
	function setXYZ(index:Float, x:Float, y:Float, z:Float):BufferAttribute;
	/**
		Sets the x, y, z and w components of the vector at the given index.
	**/
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):BufferAttribute;
	/**
		Convert this object to three.js to the `data.attributes` part of {@link https://github.com/mrdoob/three.js/wiki/JSON-Geometry-format-4 | JSON Geometry format v4},
	**/
	function toJSON():BufferAttributeJSON;
	static var prototype : BufferAttribute;
}