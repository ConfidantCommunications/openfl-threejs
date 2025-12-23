package three;

@:native("THREE.WebGLRenderTarget") extern class WebGLRenderTarget<TTexture> extends RenderTarget<TTexture> {
	function new(?width:Float, ?height:Float, ?options:RenderTargetOptions);
	final isWebGLRenderTarget : Bool;
	function clone():WebGLRenderTarget<TTexture>;
	function copy(source:RenderTarget<Texture<Any>>):WebGLRenderTarget<TTexture>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLRenderTarget<TTexture>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLRenderTarget<TTexture>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLRenderTarget<TTexture>>):Void;
	static var prototype : WebGLRenderTarget<Dynamic>;
}