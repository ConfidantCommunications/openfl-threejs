package three;

/**
	An instanced version of {@link THREE.InterleavedBuffer | InterleavedBuffer}.
**/
@:native("THREE.InstancedInterleavedBuffer") extern class InstancedInterleavedBuffer extends InterleavedBuffer {
	/**
		Create a new instance of {@link InstancedInterleavedBuffer}
	**/
	function new(array:TypedArray, stride:Float, ?meshPerAttribute:Float);
	var meshPerAttribute : Float;
	/**
		Sets the value of the {@link onUploadCallback} property.
	**/
	function onUpload(callback:() -> Void):InstancedInterleavedBuffer;
	/**
		Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
		on the {@link BufferAttribute.array | array}.
	**/
	function set(value:js.lib.ArrayLike<Float>, offset:Float):InstancedInterleavedBuffer;
	/**
		Set {@link BufferAttribute.usage | usage}
	**/
	function setUsage(value:Usage):InstancedInterleavedBuffer;
	/**
		Copies another {@link InterleavedBuffer} to this {@link InterleavedBuffer} instance.
	**/
	function copy(source:InterleavedBuffer):InstancedInterleavedBuffer;
	/**
		Copies data from {@link attribute}[{@link index2}] to {@link InterleavedBuffer.array | array}[{@link index1}].
	**/
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float):InstancedInterleavedBuffer;
	static var prototype : InstancedInterleavedBuffer;
}