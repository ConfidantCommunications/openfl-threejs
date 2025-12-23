package three;

/**
	Creates an texture 2D array based on data in compressed form, for example from a
	{@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
**/
@:native("THREE.CompressedArrayTexture") extern class CompressedArrayTexture extends CompressedTexture<CompressedArrayTextureImageData> {
	/**
		Create a new instance of {@link CompressedArrayTexture}
	**/
	function new(mipmaps:Array<CompressedTextureMipmap>, width:Float, height:Float, depth:Float, format:CompressedPixelFormat, ?type:TextureDataType);
	/**
		Read-only flag to check if a given object is of type {@link CompressedArrayTexture}.
	**/
	final isCompressedArrayTexture : Bool;
	/**
		This defines how the texture is wrapped in the depth direction.
	**/
	var wrapR : Wrapping;
	/**
		A set of all layers which need to be updated in the texture. See {@link CompressedArrayTexture.addLayerUpdate}.
	**/
	var layerUpdates : js.lib.Set<Float>;
	/**
		Describes that a specific layer of the texture needs to be updated. Normally when {@link Texture.needsUpdate} is
		set to true, the entire compressed texture array is sent to the GPU. Marking specific layers will only transmit
		subsets of all mipmaps associated with a specific depth in the array which is often much more performant.
	**/
	function addLayerUpdate(layerIndex:Float):Void;
	/**
		Resets the layer updates registry. See {@link CompressedArrayTexture.addLayerUpdate}.
	**/
	function clearLayoutUpdates():Void;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():CompressedArrayTexture;
	function copy(source:Texture<CompressedArrayTextureImageData>):CompressedArrayTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedArrayTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedArrayTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedArrayTexture>):Void;
	static var prototype : CompressedArrayTexture;
}