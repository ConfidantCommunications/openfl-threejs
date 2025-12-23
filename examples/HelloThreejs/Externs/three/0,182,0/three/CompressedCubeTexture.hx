package three;

@:native("THREE.CompressedCubeTexture") extern class CompressedCubeTexture extends CompressedTexture<Array<CompressedTextureImageData>> {
	function new(images:Array<CompressedTextureImageData>, ?format:CompressedPixelFormat, ?type:TextureDataType);
	final isCompressedCubeTexture : Bool;
	final isCubeTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():CompressedCubeTexture;
	function copy(source:Texture<Array<CompressedTextureImageData>>):CompressedCubeTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedCubeTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedCubeTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, CompressedCubeTexture>):Void;
	static var prototype : CompressedCubeTexture;
}