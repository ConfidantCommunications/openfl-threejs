package three;

@:native("THREE.RenderTarget") extern class RenderTarget<TTexture> extends EventDispatcher<{ var dispose : { }; }> {
	function new(?width:Float, ?height:Float, ?options:RenderTargetOptions);
	final isRenderTarget : Bool;
	var width : Float;
	var height : Float;
	var depth : Float;
	var scissor : Vector4;
	var scissorTest : Bool;
	var viewport : Vector4;
	var textures : Array<TTexture>;
	var depthBuffer : Bool;
	var stencilBuffer : Bool;
	/**
		Defines whether the depth buffer should be resolved when rendering into a multisampled render target.
	**/
	var resolveDepthBuffer : Bool;
	/**
		Defines whether the stencil buffer should be resolved when rendering into a multisampled render target.
		This property has no effect when {@link .resolveDepthBuffer} is set to `false`.
	**/
	var resolveStencilBuffer : Bool;
	/**
		Defines the count of MSAA samples. Can only be used with WebGL 2. Default is **0**.
	**/
	var samples : Float;
	/**
		Whether to this target is used in multiview rendering.
	**/
	var multiview : Bool;
	var texture : TTexture;
	var depthTexture : Null<DepthTexture>;
	function setSize(width:Float, height:Float, ?depth:Float):Void;
	function clone():RenderTarget<TTexture>;
	function copy(source:RenderTarget<Texture<Any>>):RenderTarget<TTexture>;
	function dispose():Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget<TTexture>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget<TTexture>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, RenderTarget<TTexture>>):Void;
	static var prototype : RenderTarget<Dynamic>;
}