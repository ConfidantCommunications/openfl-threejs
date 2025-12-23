package three;

@:native("THREE.WebGLLights") extern class WebGLLights {
	function new(extensions:WebGLExtensions);
	var state : WebGLLightsState;
	function get(light:Dynamic):Dynamic;
	function setup(lights:Dynamic):Void;
	function setupView(lights:Dynamic, camera:Dynamic):Void;
	static var prototype : WebGLLights;
}