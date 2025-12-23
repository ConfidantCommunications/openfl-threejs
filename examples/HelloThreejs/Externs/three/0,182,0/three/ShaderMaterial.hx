package three;

/**
	A material rendered with custom shaders. A shader is a small program written in GLSL.
	that runs on the GPU. You may want to use a custom shader if you need to implement an
	effect not included with any of the built-in materials.
	
	There are the following notes to bear in mind when using a `ShaderMaterial`:
	
	- `ShaderMaterial` can only be used with {@link WebGLRenderer}.
	- Built in attributes and uniforms are passed to the shaders along with your code. If
	you don't want that, use {@link RawShaderMaterial} instead.
	- You can use the directive `#pragma unroll_loop_start` and `#pragma unroll_loop_end`
	in order to unroll a `for` loop in GLSL by the shader preprocessor. The directive has
	to be placed right above the loop. The loop formatting has to correspond to a defined standard.
	   - The loop has to be [normalized](https://en.wikipedia.org/wiki/Normalized_loop).
	   - The loop variable has to be *i*.
	   - The value `UNROLLED_LOOP_INDEX` will be replaced with the explicitly
	value of *i* for the given iteration and can be used in preprocessor
	statements.
	
	```js
	const material = new THREE.ShaderMaterial( {
	    uniforms: {
	        time: { value: 1.0 },
	        resolution: { value: new THREE.Vector2() }
	    },
	    vertexShader: document.getElementById( 'vertexShader' ).textContent,
	    fragmentShader: document.getElementById( 'fragmentShader' ).textContent
	} );
	```
**/
@:native("THREE.ShaderMaterial") extern class ShaderMaterial extends Material {
	/**
		Constructs a new shader material.
	**/
	function new(?parameters:ShaderMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isShaderMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:ShaderMaterialParameters):Void;
	/**
		Serializes the material into JSON.
	**/
	function toJSON(?meta:JSONMeta):ShaderMaterialJSON;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():ShaderMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):ShaderMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShaderMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShaderMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShaderMaterial>):Void;
	/**
		An object of the form:
		```js
		{
		 	"uniform1": { value: 1.0 },
		 	"uniform2": { value: 2 }
		}
		```
		specifying the uniforms to be passed to the shader code; keys are uniform
		names, values are definitions of the form
		```
		{
		 	value: 1.0
		}
		```
		where `value` is the value of the uniform. Names must match the name of
		the uniform, as defined in the GLSL code. Note that uniforms are refreshed
		on every frame, so updating the value of the uniform will immediately
		update the value available to the GLSL code.
	**/
	var uniforms : haxe.DynamicAccess<IUniform<Dynamic>>;
	/**
		An array holding uniforms groups for configuring UBOs.
	**/
	var uniformsGroups : Array<UniformsGroup>;
	/**
		Vertex shader GLSL code. This is the actual code for the shader.
	**/
	var vertexShader : String;
	/**
		Fragment shader GLSL code. This is the actual code for the shader.
	**/
	var fragmentShader : String;
	/**
		Controls line thickness or lines.
		
		WebGL and WebGPU ignore this setting and always render line primitives with a
		width of one pixel.
	**/
	var linewidth : Float;
	/**
		Renders the geometry as a wireframe.
	**/
	var wireframe : Bool;
	/**
		Controls the thickness of the wireframe.
		
		WebGL and WebGPU ignore this property and always render
		1 pixel wide lines.
	**/
	var wireframeLinewidth : Float;
	/**
		Defines whether the material color is affected by global fog settings; `true`
		to pass fog uniforms to the shader.
		
		Setting this property to `true` requires the definition of fog uniforms. It is
		recommended to use `UniformsUtils.merge()` to combine the custom shader uniforms
		with predefined fog uniforms.
		
		```js
		const material = new ShaderMaterial( {
		     uniforms: UniformsUtils.merge( [ UniformsLib[ 'fog' ], shaderUniforms ] );
		     vertexShader: vertexShader,
		     fragmentShader: fragmentShader,
		     fog: true
		} );
		```
	**/
	var fog : Bool;
	/**
		Defines whether this material uses lighting; `true` to pass uniform data
		related to lighting to this shader.
	**/
	var lights : Bool;
	/**
		Defines whether this material supports clipping; `true` to let the renderer
		pass the clippingPlanes uniform.
	**/
	var clipping : Bool;
	/**
		This object allows to enable certain WebGL 2 extensions.
		
		- clipCullDistance: set to `true` to use vertex shader clipping
		- multiDraw: set to `true` to use vertex shader multi_draw / enable gl_DrawID
	**/
	var extensions : {
		var clipCullDistance : Bool;
		var multiDraw : Bool;
	};
	/**
		When the rendered geometry doesn't include these attributes but the
		material does, these default values will be passed to the shaders. This
		avoids errors when buffer data is missing.
		
		- color: [ 1, 1, 1 ]
		- uv: [ 0, 0 ]
		- uv1: [ 0, 0 ]
	**/
	var defaultAttributeValues : {
		var color : ts.Tuple3<Float, Float, Float>;
		var uv : ts.Tuple2<Float, Float>;
		var uv1 : ts.Tuple2<Float, Float>;
	};
	/**
		If set, this calls [gl.bindAttribLocation](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bindAttribLocation)
		to bind a generic vertex index to an attribute variable.
	**/
	var index0AttributeName : Null<String>;
	/**
		Can be used to force a uniform update while changing uniforms in
		{@link Object3D#onBeforeRender}.
	**/
	var uniformsNeedUpdate : Bool;
	/**
		Defines the GLSL version of custom shader code.
	**/
	var glslVersion : Null<GLSLVersion>;
	static var prototype : ShaderMaterial;
}