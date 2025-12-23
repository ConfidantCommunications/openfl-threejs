package three;

/**
	This type of render target represents an array of textures.
**/
@:native("THREE.WebGLArrayRenderTarget") extern class WebGLArrayRenderTarget extends WebGLRenderTarget<Texture<Any>> {
	/**
		Creates a new WebGLArrayRenderTarget.
	**/
	function new(?width:Float, ?height:Float, ?depth:Float, ?options:RenderTargetOptions);
	final isWebGLArrayRenderTarget : Bool;
	function clone():WebGLArrayRenderTarget;
	function copy(source:RenderTarget<Texture<Any>>):WebGLArrayRenderTarget;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLArrayRenderTarget>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLArrayRenderTarget>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLArrayRenderTarget>):Void;
	static var prototype : WebGLArrayRenderTarget;
}