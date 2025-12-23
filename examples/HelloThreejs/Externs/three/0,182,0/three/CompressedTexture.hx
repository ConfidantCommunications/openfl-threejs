package three;

/**
	Creates a texture based on data in compressed form, for example from a {@link https://en.wikipedia.org/wiki/DirectDraw_Surface | DDS} file.
**/
@:native("THREE.CompressedTexture") extern class CompressedTexture<TImageData> extends Texture<TImageData> {
	/**
		This creates a new {@link THREE.CompressedTexture | CompressedTexture} object.
	**/
	function new(mipmaps:Array<CompressedTextureMipmap>, width:Float, height:Float, ?format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Float, ?colorSpace:String);
	/**
		Read-only flag to check if a given object is of type {@link CompressedTexture}.
	**/
	final isCompressedTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():CompressedTexture<TImageData>;
	function copy(source:Texture<TImageData>):CompressedTexture<TImageData>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedTexture<TImageData>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedTexture<TImageData>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedTexture<TImageData>>):Void;
	static var prototype : CompressedTexture<Dynamic>;
}