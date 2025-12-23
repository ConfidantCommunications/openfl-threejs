package three;

/**
	Creates an array of textures directly from raw data, width and height and depth
**/
@:native("THREE.DataArrayTexture") extern class DataArrayTexture extends Texture<DataArrayTextureImageData> {
	/**
		This creates a new {@link THREE.DataArrayTexture | DataArrayTexture} object.
	**/
	function new(?data:TypedArray, ?width:Float, ?height:Float, ?depth:Float);
	/**
		Read-only flag to check if a given object is of type {@link DataArrayTexture}.
	**/
	final isDataArrayTexture : Bool;
	var wrapR : Bool;
	/**
		A set of all layers which need to be updated in the texture. See {@link DataArrayTexture.addLayerUpdate}.
	**/
	var layerUpdates : js.lib.Set<Float>;
	/**
		Describes that a specific layer of the texture needs to be updated. Normally when {@link Texture.needsUpdate} is
		set to true, the entire compressed texture array is sent to the GPU. Marking specific layers will only transmit
		subsets of all mipmaps associated with a specific depth in the array which is often much more performant.
	**/
	function addLayerUpdate(layerIndex:Float):Void;
	/**
		Resets the layer updates registry. See {@link DataArrayTexture.addLayerUpdate}.
	**/
	function clearLayoutUpdates():Void;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():DataArrayTexture;
	function copy(source:Texture<DataArrayTextureImageData>):DataArrayTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataArrayTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataArrayTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataArrayTexture>):Void;
	static var prototype : DataArrayTexture;
}