package js.html;

/**
	WebGL Context Compatibility
	
	ref: https://immersive-web.github.io/webxr/#contextcompatibility
**/
typedef WebGLContextAttributes = {
	@:optional
	var alpha : Bool;
	@:optional
	var antialias : Bool;
	@:optional
	var depth : Bool;
	@:optional
	var desynchronized : Bool;
	@:optional
	var failIfMajorPerformanceCaveat : Bool;
	@:optional
	var powerPreference : WebGLPowerPreference;
	@:optional
	var premultipliedAlpha : Bool;
	@:optional
	var preserveDrawingBuffer : Bool;
	@:optional
	var stencil : Bool;
	@:optional
	var xrCompatible : Bool;
};