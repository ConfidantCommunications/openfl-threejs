package three;

/**
	Creates a cube texture made up of six images.
**/
@:native("THREE.CubeTexture") extern class CubeTexture<TImage> extends Texture<Array<TImage>> {
	/**
		This creates a new {@link THREE.CubeTexture | CubeTexture} object.
	**/
	function new(?images:Array<TImage>, ?mapping:CubeTextureMapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float, ?colorSpace:String);
	/**
		Read-only flag to check if a given object is of type {@link CubeTexture}.
	**/
	final isCubeTexture : Bool;
	/**
		An image object, typically created using the {@link THREE.CubeTextureLoader.load | CubeTextureLoader.load()} method.
	**/
	var images : Array<TImage>;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():CubeTexture<TImage>;
	function copy(source:Texture<Array<TImage>>):CubeTexture<TImage>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, CubeTexture<TImage>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, CubeTexture<TImage>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, CubeTexture<TImage>>):Void;
	static var prototype : CubeTexture<Dynamic>;
}