package three;

@:native("THREE.WebGLPrograms") extern class WebGLPrograms {
	function new(renderer:WebGLRenderer, cubemaps:three.WebGLBindingStates, clipping:WebGLClipping);
	var programs : Array<WebGLProgram>;
	function getParameters(material:Material, lights:WebGLLightsState, shadows:Array<Light<Null<LightShadow<Camera>>>>, scene:Scene<Object3DEventMap>, object:Object3D<Object3DEventMap>):WebGLProgramParameters;
	function getProgramCacheKey(parameters:WebGLProgramParameters):String;
	function getUniforms(material:Material):haxe.DynamicAccess<IUniform<Dynamic>>;
	function acquireProgram(parameters:WebGLProgramParametersWithUniforms, cacheKey:String):WebGLProgram;
	function releaseProgram(program:WebGLProgram):Void;
	static var prototype : WebGLPrograms;
}