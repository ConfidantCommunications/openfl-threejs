package three;

@:native("THREE.ExternalTexture") extern class ExternalTexture extends Texture<Dynamic> {
	function new(?sourceTexture:ts.AnyOf2<js.html.webgl.Texture, .GPUTexture>);
	var sourceTexture : Null<ts.AnyOf2<js.html.webgl.Texture, .GPUTexture>>;
	final isExternalTexture : Bool;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():ExternalTexture;
	function copy(source:Texture<Dynamic>):ExternalTexture;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ExternalTexture>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ExternalTexture>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ExternalTexture>):Void;
	static var prototype : ExternalTexture;
}