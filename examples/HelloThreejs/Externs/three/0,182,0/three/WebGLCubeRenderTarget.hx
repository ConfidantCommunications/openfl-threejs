package three;

@:native("THREE.WebGLCubeRenderTarget") extern class WebGLCubeRenderTarget extends WebGLRenderTarget<Texture<Any>> {
	function new(?size:Float, ?options:RenderTargetOptions);
	function fromEquirectangularTexture(renderer:WebGLRenderer, texture:Texture<Any>):WebGLCubeRenderTarget;
	function clear(renderer:WebGLRenderer, color:Bool, depth:Bool, stencil:Bool):Void;
	function clone():WebGLCubeRenderTarget;
	function copy(source:RenderTarget<Texture<Any>>):WebGLCubeRenderTarget;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLCubeRenderTarget>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLCubeRenderTarget>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLCubeRenderTarget>):Void;
	static var prototype : WebGLCubeRenderTarget;
}