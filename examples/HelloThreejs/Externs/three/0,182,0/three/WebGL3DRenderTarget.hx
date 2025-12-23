package three;

/**
	Represents a three-dimensional render target.
**/
@:native("THREE.WebGL3DRenderTarget") extern class WebGL3DRenderTarget extends WebGLRenderTarget<Texture<Any>> {
	/**
		Creates a new WebGL3DRenderTarget.
	**/
	function new(?width:Float, ?height:Float, ?depth:Float, ?options:RenderTargetOptions);
	final isWebGL3DRenderTarget : Bool;
	function clone():WebGL3DRenderTarget;
	function copy(source:RenderTarget<Texture<Any>>):WebGL3DRenderTarget;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGL3DRenderTarget>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGL3DRenderTarget>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebGL3DRenderTarget>):Void;
	static var prototype : WebGL3DRenderTarget;
}