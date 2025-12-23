package three;

@:native("THREE.RenderTarget3D") extern class RenderTarget3D extends RenderTarget<Texture<Any>> {
	function new(?width:Float, ?height:Float, ?depth:Float, ?options:RenderTargetOptions);
	final isRenderTarget3D : Bool;
	function clone():RenderTarget3D;
	function copy(source:RenderTarget<Texture<Any>>):RenderTarget3D;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget3D>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget3D>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget3D>):Void;
	static var prototype : RenderTarget3D;
}