package three;

/**
	**"Interleaved"** means that multiple attributes, possibly of different types, (e.g., _position, normal, uv, color_) are packed into a single array buffer.
	An introduction into interleaved arrays can be found here: {@link https://blog.tojicode.com/2011/05/interleaved-array-basics.html | Interleaved array basics}
**/
@:native("THREE.InterleavedBuffer") extern class InterleavedBuffer {
	/**
		Create a new instance of {@link InterleavedBuffer}
	**/
	function new(array:TypedArray, stride:Float);
	final isInterleavedBuffer : Bool;
	/**
		A {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} with a shared buffer. Stores the geometry data.
	**/
	var array : TypedArray;
	/**
		The number of {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray | TypedArray} elements per vertex.
	**/
	var stride : Float;
	/**
		Defines the intended usage pattern of the data store for optimization purposes.
		Corresponds to the {@link BufferAttribute.usage | usage} parameter of
		{@link https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bufferData | WebGLRenderingContext.bufferData}.
	**/
	var usage : Usage;
	/**
		This can be used to only update some components of stored data. Use the {@link .addUpdateRange} function to add
		ranges to this array.
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
		Gives the total number of elements in the array.
	**/
	var count : Float;
	/**
		Flag to indicate that this attribute has changed and should be re-sent to the GPU.
		Set this to true when you modify the value of the array.
	**/
	var needsUpdate : Bool;
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		A callback function that is executed after the Renderer has transferred the geometry data to the GPU.
	**/
	dynamic function onUploadCallback():Void;
	/**
		Sets the value of the {@link onUploadCallback} property.
	**/
	function onUpload(callback:() -> Void):InterleavedBuffer;
	/**
		Calls {@link https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray/set | TypedArray.set}( {@link value}, {@link offset} )
		on the {@link BufferAttribute.array | array}.
	**/
	function set(value:js.lib.ArrayLike<Float>, offset:Float):InterleavedBuffer;
	/**
		Set {@link BufferAttribute.usage | usage}
	**/
	function setUsage(value:Usage):InterleavedBuffer;
	/**
		Adds a range of data in the data array to be updated on the GPU. Adds an object describing the range to the
		{@link .updateRanges} array.
	**/
	function addUpdateRange(start:Float, count:Float):Void;
	/**
		Clears the {@link .updateRanges} array.
	**/
	function clearUpdateRanges():Void;
	/**
		Copies another {@link InterleavedBuffer} to this {@link InterleavedBuffer} instance.
	**/
	function copy(source:InterleavedBuffer):InterleavedBuffer;
	/**
		Copies data from {@link attribute}[{@link index2}] to {@link InterleavedBuffer.array | array}[{@link index1}].
	**/
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float):InterleavedBuffer;
	/**
		Creates a clone of this {@link InterleavedBuffer}.
	**/
	function clone(data:{ }):InterleavedBuffer;
	/**
		Serializes this {@link InterleavedBuffer}.
		Converting to {@link https://github.com/mrdoob/three.js/wiki/JSON-Geometry-format-4 | JSON Geometry format v4},
	**/
	function toJSON(data:{ }):{
		var uuid : String;
		var buffer : String;
		var type : String;
		var stride : Float;
	};
	static var prototype : InterleavedBuffer;
}