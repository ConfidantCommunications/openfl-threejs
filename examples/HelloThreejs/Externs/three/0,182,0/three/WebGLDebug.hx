package three;

typedef WebGLDebug = {
	/**
		Enables error checking and reporting when shader programs are being compiled.
	**/
	var checkShaderErrors : Bool;
	/**
		A callback function that can be used for custom error reporting. The callback receives the WebGL context, an
		instance of WebGLProgram as well two instances of WebGLShader representing the vertex and fragment shader.
		Assigning a custom function disables the default error reporting.
	**/
	@:optional
	dynamic function onShaderError(gl:js.html.webgl.RenderingContext, program:Dynamic, glVertexShader:js.html.webgl.Shader, glFragmentShader:js.html.webgl.Shader):Void;
};