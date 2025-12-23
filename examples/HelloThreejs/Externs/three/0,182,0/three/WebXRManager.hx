package three;

@:native("THREE.WebXRManager") extern class WebXRManager extends EventDispatcher<WebXRManagerEventMap> {
	function new(renderer:WebGLRenderer, gl:js.html.webgl.RenderingContext);
	var enabled : Bool;
	var isPresenting : Bool;
	var cameraAutoUpdate : Bool;
	function getController(index:Float):XRTargetRaySpace;
	function getControllerGrip(index:Float):XRGripSpace;
	function getHand(index:Float):XRHandSpace;
	function setFramebufferScaleFactor(value:Float):Void;
	function setReferenceSpaceType(value:XRReferenceSpaceType):Void;
	function getReferenceSpace():Null<XRReferenceSpace>;
	function setReferenceSpace(value:XRReferenceSpace):Void;
	function getBaseLayer():Dynamic;//ts.AnyOf2<XRWebGLLayer, XRProjectionLayer>;
	function getBinding():XRWebGLBinding;
	function getFrame():XRFrame;
	function getSession():Null<XRSession>;
	function setSession(value:Null<XRSession>):js.lib.Promise<ts.Undefined>;
	function getCamera():WebXRArrayCamera;
	function updateCamera(camera:PerspectiveCamera):Void;
	function setAnimationLoop(callback:Null<XRFrameRequestCallback>):Void;
	function getFoveation():Null<Float>;
	function setFoveation(value:Float):Void;
	function dispose():Void;
	/**
		Adds a listener to an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebXRManager>):Void { })
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebXRManager>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebXRManager>):Bool { })
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebXRManager>):Bool;
	/**
		Removes a listener from an event type.
	**/
	@:overload(function<T>(type:T, listener:EventListener<{ }, T, WebXRManager>):Void { })
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WebXRManager>):Void;
	static var prototype : WebXRManager;
}