package three;

/**
	This class can only be used in combination with {@link THREE.WebGLRenderer.copyFramebufferToTexture | WebGLRenderer.copyFramebufferToTexture()}.
**/
@:native("THREE.FramebufferTexture") extern class FramebufferTexture extends Texture<FramebufferTextureImageData> {
	/**
		Create a new instance of {@link FramebufferTexture}
	**/
	function new(width:Float, height:Float);
	/**
		Read-only flag to check if a given object is of type {@link FramebufferTexture}.
	**/
	final isFramebufferTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():FramebufferTexture;
	function copy(source:Texture<FramebufferTextureImageData>):FramebufferTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, FramebufferTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, FramebufferTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, FramebufferTexture>):Void;
	static var prototype : FramebufferTexture;
}