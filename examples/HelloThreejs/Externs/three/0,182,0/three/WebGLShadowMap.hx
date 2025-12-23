package three;

@:native("THREE.WebGLShadowMap") extern class WebGLShadowMap {
	function new(_renderer:WebGLRenderer, _objects:WebGLObjects, _capabilities:WebGLCapabilities);
	var enabled : Bool;
	var autoUpdate : Bool;
	var needsUpdate : Bool;
	var type : CullFace;
	function render(shadowsArray:Array<Light<Null<LightShadow<Camera>>>>, scene:Scene<Object3DEventMap>, camera:Camera):Void;
	var cullFace : Dynamic;
	static var prototype : WebGLShadowMap;
}