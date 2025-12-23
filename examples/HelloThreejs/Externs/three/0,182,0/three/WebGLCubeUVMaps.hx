package three;

@:native("THREE.WebGLCubeUVMaps") extern class WebGLCubeUVMaps {
	function new(renderer:WebGLRenderer);
	function get<T>(texture:T):Dynamic;
	function dispose():Void;
	static var prototype : WebGLCubeUVMaps;
}