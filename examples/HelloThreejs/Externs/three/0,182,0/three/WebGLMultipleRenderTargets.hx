package three;

@:native("THREE.WebGLMultipleRenderTargets") extern class WebGLMultipleRenderTargets extends WebGLRenderTarget<Array<Texture<Any>>> {
	function new(?width:Float, ?height:Float, ?count:Float, ?options:RenderTargetOptions);
	final isWebGLMultipleRenderTargets : Bool;
	function clone():WebGLMultipleRenderTargets;
	function copy(source:RenderTarget<Texture<Any>>):WebGLMultipleRenderTargets;
	/**
		Adds a listener to an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebGLMultipleRenderTargets>):Void { })
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLMultipleRenderTargets>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebGLMultipleRenderTargets>):Bool { })
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLMultipleRenderTargets>):Bool;
	/**
		Removes a listener from an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebGLMultipleRenderTargets>):Void { })
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGLMultipleRenderTargets>):Void;
	static var prototype : WebGLMultipleRenderTargets;
}