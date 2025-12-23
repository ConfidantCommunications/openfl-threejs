package three;

/**
	Creates a texture from a {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Element/canvas | canvas element}.
**/
@:native("THREE.CanvasTexture") extern class CanvasTexture<TCanvas> extends Texture<TCanvas> {
	/**
		This creates a new {@link THREE.CanvasTexture | CanvasTexture} object.
	**/
	function new(?canvas:TCanvas, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
	/**
		Read-only flag to check if a given object is of type {@link CanvasTexture}.
	**/
	final isCanvasTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():CanvasTexture<TCanvas>;
	function copy(source:Texture<TCanvas>):CanvasTexture<TCanvas>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, CanvasTexture<TCanvas>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, CanvasTexture<TCanvas>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, CanvasTexture<TCanvas>>):Void;
	static var prototype : CanvasTexture<Dynamic>;
}