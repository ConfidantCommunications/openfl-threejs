package three;

/**
	Creates a three-dimensional texture from raw data, with parameters to divide it into width, height, and depth
**/
@:native("THREE.Data3DTexture") extern class Data3DTexture extends Texture<Data3DTextureImageData> {
	/**
		Create a new instance of {@link Data3DTexture}
	**/
	function new(?data:TypedArray, ?width:Float, ?height:Float, ?depth:Float);
	/**
		Read-only flag to check if a given object is of type {@link Data3DTexture}.
	**/
	final isData3DTexture : Bool;
	var wrapR : Wrapping;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():Data3DTexture;
	function copy(source:Texture<Data3DTextureImageData>):Data3DTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Data3DTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Data3DTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Data3DTexture>):Void;
	static var prototype : Data3DTexture;
}