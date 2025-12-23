package three;

typedef ShaderLibShader = {
	var uniforms : haxe.DynamicAccess<IUniform<Dynamic>>;
	var vertexShader : String;
	var fragmentShader : String;
};