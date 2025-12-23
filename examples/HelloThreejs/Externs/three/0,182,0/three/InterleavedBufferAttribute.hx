package three;

@:native("THREE.InterleavedBufferAttribute") extern class InterleavedBufferAttribute {
	/**
		Create a new instance of {@link THREE.InterleavedBufferAttribute | InterleavedBufferAttribute}.
	**/
	function new(interleavedBuffer:InterleavedBuffer, itemSize:Float, offset:Float, ?normalized:Bool);
	/**
		Optional name for this attribute instance.
	**/
	var name : String;
	/**
		The {@link InterleavedBuffer | InterleavedBuffer} instance passed in the constructor.
	**/
	var data : InterleavedBuffer;
	/**
		How many values make up each item.
	**/
	var itemSize : Float;
	/**
		The offset in the underlying array buffer where an item starts.
	**/
	var offset : Float;
	var normalized : Bool;
	/**
		The value of {@link data | .data}.{@link InterleavedBuffer.count | count}.
		If the buffer is storing a 3-component item (such as a _position, normal, or color_), then this will count the number of such items stored.
	**/
	final count : Float;
	/**
		The value of {@link InterleavedBufferAttribute.data | data}.{@link InterleavedBuffer.array | array}.
	**/
	final array : TypedArray;
	/**
		Flag to indicate that the {@link data | .data} ({@link InterleavedBuffer}) attribute has changed and should be re-sent to the GPU.
	**/
	var needsUpdate : Bool;
	/**
		Read-only flag to check if a given object is of type {@link InterleavedBufferAttribute}.
	**/
	final isInterleavedBufferAttribute : Bool;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this InterleavedBufferAttribute.
	**/
	function applyMatrix4(m:Matrix4):InterleavedBufferAttribute;
	/**
		Applies normal matrix {@link Matrix3 | m} to every Vector3 element of this InterleavedBufferAttribute.
	**/
	function applyNormalMatrix(m:Matrix3):InterleavedBufferAttribute;
	/**
		Applies matrix {@link Matrix4 | m} to every Vector3 element of this InterleavedBufferAttribute, interpreting the elements as a direction vectors.
	**/
	function transformDirection(m:Matrix4):InterleavedBufferAttribute;
	/**
		Returns the given component of the vector at the given index.
	**/
	function getComponent(index:Float, component:Float):Float;
	/**
		Sets the given component of the vector at the given index.
	**/
	function setComponent(index:Float, component:Float, value:Float):InterleavedBufferAttribute;
	/**
		Returns the x component of the item at the given index.
	**/
	function getX(index:Float):Float;
	/**
		Sets the x component of the item at the given index.
	**/
	function setX(index:Float, x:Float):InterleavedBufferAttribute;
	/**
		Returns the y component of the item at the given index.
	**/
	function getY(index:Float):Float;
	/**
		Sets the y component of the item at the given index.
	**/
	function setY(index:Float, y:Float):InterleavedBufferAttribute;
	/**
		Returns the z component of the item at the given index.
	**/
	function getZ(index:Float):Float;
	/**
		Sets the z component of the item at the given index.
	**/
	function setZ(index:Float, z:Float):InterleavedBufferAttribute;
	/**
		Returns the w component of the item at the given index.
	**/
	function getW(index:Float):Float;
	/**
		Sets the w component of the item at the given index.
	**/
	function setW(index:Float, z:Float):InterleavedBufferAttribute;
	/**
		Sets the x and y components of the item at the given index.
	**/
	function setXY(index:Float, x:Float, y:Float):InterleavedBufferAttribute;
	/**
		Sets the x, y and z components of the item at the given index.
	**/
	function setXYZ(index:Float, x:Float, y:Float, z:Float):InterleavedBufferAttribute;
	/**
		Sets the x, y, z and w components of the item at the given index.
	**/
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):InterleavedBufferAttribute;
	/**
		Creates a clone of this {@link InterleavedBufferAttribute}.
	**/
	function clone(?data:{ }):BufferAttribute;
	/**
		Serializes this {@link InterleavedBufferAttribute}.
		Converting to {@link https://github.com/mrdoob/three.js/wiki/JSON-Geometry-format-4 | JSON Geometry format v4},
	**/
	function toJSON(?data:{ }):{
		var isInterleavedBufferAttribute : Bool;
		var itemSize : Float;
		var data : String;
		var offset : Float;
		var normalized : Bool;
	};
	static var prototype : InterleavedBufferAttribute;
}