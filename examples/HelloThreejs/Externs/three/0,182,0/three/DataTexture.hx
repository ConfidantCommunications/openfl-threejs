package three;

/**
	Creates a texture directly from raw data, width and height.
**/
@:native("THREE.DataTexture") extern class DataTexture extends Texture<DataTextureImageData> {
	function new(?data:TypedArray, ?width:Float, ?height:Float, ?format:PixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?anisotropy:Float, ?colorSpace:String);
	/**
		Read-only flag to check if a given object is of type {@link DataTexture}.
	**/
	final isDataTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():DataTexture;
	function copy(source:Texture<DataTextureImageData>):DataTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, DataTexture>):Void;
	static var prototype : DataTexture;
}