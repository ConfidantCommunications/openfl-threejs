package three;

typedef ShaderMaterialParameters = {
	/**
		Defines custom constants using `#define` directives within the GLSL code
		for both the vertex shader and the fragment shader; each key/value pair
		yields another directive.
		```js
		defines: {
		 	FOO: 15,
		 	BAR: true
		}
		```
		Yields the lines:
		```
		#define FOO 15
		#define BAR true
		```
	**/
	@:optional
	var defines : haxe.DynamicAccess<Any>;
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
	@:optional
	var uniforms : haxe.DynamicAccess<IUniform<Dynamic>>;
	/**
		An array holding uniforms groups for configuring UBOs.
	**/
	@:optional
	var uniformsGroups : Array<UniformsGroup>;
	/**
		Vertex shader GLSL code. This is the actual code for the shader.
	**/
	@:optional
	var vertexShader : String;
	/**
		Fragment shader GLSL code. This is the actual code for the shader.
	**/
	@:optional
	var fragmentShader : String;
	/**
		Controls line thickness or lines.
		
		WebGL and WebGPU ignore this setting and always render line primitives with a
		width of one pixel.
	**/
	@:optional
	var linewidth : Float;
	/**
		Renders the geometry as a wireframe.
	**/
	@:optional
	var wireframe : Bool;
	/**
		Controls the thickness of the wireframe.
		
		WebGL and WebGPU ignore this property and always render
		1 pixel wide lines.
	**/
	@:optional
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
	@:optional
	var fog : Bool;
	/**
		Defines whether this material uses lighting; `true` to pass uniform data
		related to lighting to this shader.
	**/
	@:optional
	var lights : Bool;
	/**
		Defines whether this material supports clipping; `true` to let the renderer
		pass the clippingPlanes uniform.
	**/
	@:optional
	var clipping : Bool;
	/**
		This object allows to enable certain WebGL 2 extensions.
		
		- clipCullDistance: set to `true` to use vertex shader clipping
		- multiDraw: set to `true` to use vertex shader multi_draw / enable gl_DrawID
	**/
	@:optional
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
	@:optional
	var defaultAttributeValues : {
		var color : ts.Tuple3<Float, Float, Float>;
		var uv : ts.Tuple2<Float, Float>;
		var uv1 : ts.Tuple2<Float, Float>;
	};
	/**
		If set, this calls [gl.bindAttribLocation](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/bindAttribLocation)
		to bind a generic vertex index to an attribute variable.
	**/
	@:optional
	var index0AttributeName : String;
	/**
		Can be used to force a uniform update while changing uniforms in
		{@link Object3D#onBeforeRender}.
	**/
	@:optional
	var uniformsNeedUpdate : Bool;
	/**
		Defines the GLSL version of custom shader code.
	**/
	@:optional
	var glslVersion : GLSLVersion;
	/**
		The name of the material.
	**/
	@:optional
	var name : String;
	/**
		Defines the blending type of the material.
		
		It must be set to `CustomBlending` if custom blending properties like
		{@link Material#blendSrc}, {@link Material#blendDst} or {@link Material#blendEquation}
		should have any effect.
	**/
	@:optional
	var blending : Blending;
	/**
		Defines which side of faces will be rendered - front, back or both.
	**/
	@:optional
	var side : Side;
	/**
		If set to `true`, vertex colors should be used.
		
		The engine supports RGB and RGBA vertex colors depending on whether a three (RGB) or
		four (RGBA) component color buffer attribute is used.
	**/
	@:optional
	var vertexColors : Bool;
	/**
		Defines how transparent the material is.
		A value of `0.0` indicates fully transparent, `1.0` is fully opaque.
		
		If the {@link Material#transparent} is not set to `true`,
		the material will remain fully opaque and this value will only affect its color.
	**/
	@:optional
	var opacity : Float;
	/**
		Defines whether this material is transparent. This has an effect on
		rendering as transparent objects need special treatment and are rendered
		after non-transparent objects.
		
		When set to true, the extent to which the material is transparent is
		controlled by {@link Material#opacity}.
	**/
	@:optional
	var transparent : Bool;
	/**
		Enables alpha hashed transparency, an alternative to {@link Material#transparent} or
		{@link Material#alphaTest}. The material will not be rendered if opacity is lower than
		a random threshold. Randomization introduces some grain or noise, but approximates alpha
		blending without the associated problems of sorting. Using TAA can reduce the resulting noise.
	**/
	@:optional
	var alphaHash : Bool;
	/**
		Defines the blending source factor.
	**/
	@:optional
	var blendSrc : BlendingSrcFactor;
	/**
		Defines the blending destination factor.
	**/
	@:optional
	var blendDst : BlendingDstFactor;
	/**
		Defines the blending equation.
	**/
	@:optional
	var blendEquation : BlendingEquation;
	/**
		Defines the blending source alpha factor.
	**/
	@:optional
	var blendSrcAlpha : BlendingSrcFactor;
	/**
		Defines the blending destination alpha factor.
	**/
	@:optional
	var blendDstAlpha : BlendingDstFactor;
	/**
		Defines the blending equation of the alpha channel.
	**/
	@:optional
	var blendEquationAlpha : BlendingEquation;
	/**
		Represents the RGB values of the constant blend color.
		
		This property has only an effect when using custom blending with `ConstantColor` or `OneMinusConstantColor`.
	**/
	@:optional
	var blendColor : ColorRepresentation;
	/**
		Represents the alpha value of the constant blend color.
		
		This property has only an effect when using custom blending with `ConstantAlpha` or `OneMinusConstantAlpha`.
	**/
	@:optional
	var blendAlpha : Float;
	/**
		Defines the depth function.
	**/
	@:optional
	var depthFunc : DepthModes;
	/**
		Whether to have depth test enabled when rendering this material.
		When the depth test is disabled, the depth write will also be implicitly disabled.
	**/
	@:optional
	var depthTest : Bool;
	/**
		Whether rendering this material has any effect on the depth buffer.
		
		When drawing 2D overlays it can be useful to disable the depth writing in
		order to layer several things together without creating z-index artifacts.
	**/
	@:optional
	var depthWrite : Bool;
	/**
		The bit mask to use when writing to the stencil buffer.
	**/
	@:optional
	var stencilWriteMask : Float;
	/**
		The stencil comparison function to use.
	**/
	@:optional
	var stencilFunc : StencilFunc;
	/**
		The value to use when performing stencil comparisons or stencil operations.
	**/
	@:optional
	var stencilRef : Float;
	/**
		The bit mask to use when comparing against the stencil buffer.
	**/
	@:optional
	var stencilFuncMask : Float;
	/**
		Which stencil operation to perform when the comparison function returns `false`.
	**/
	@:optional
	var stencilFail : StencilOp;
	/**
		Which stencil operation to perform when the comparison function returns
		`true` but the depth test fails.
	**/
	@:optional
	var stencilZFail : StencilOp;
	/**
		Which stencil operation to perform when the comparison function returns
		`true` and the depth test passes.
	**/
	@:optional
	var stencilZPass : StencilOp;
	/**
		Whether stencil operations are performed against the stencil buffer. In
		order to perform writes or comparisons against the stencil buffer this
		value must be `true`.
	**/
	@:optional
	var stencilWrite : Bool;
	/**
		User-defined clipping planes specified as THREE.Plane objects in world
		space. These planes apply to the objects this material is attached to.
		Points in space whose signed distance to the plane is negative are clipped
		(not rendered). This requires {@link WebGLRenderer#localClippingEnabled} to
		be `true`.
	**/
	@:optional
	var clippingPlanes : Array<Plane>;
	/**
		Changes the behavior of clipping planes so that only their intersection is
		clipped, rather than their union.
	**/
	@:optional
	var clipIntersection : Bool;
	/**
		Defines whether to clip shadows according to the clipping planes specified
		on this material.
	**/
	@:optional
	var clipShadows : Bool;
	/**
		Defines which side of faces cast shadows. If `null`, the side casting shadows
		is determined as follows:
		
		- When {@link Material#side} is set to `FrontSide`, the back side cast shadows.
		- When {@link Material#side} is set to `BackSide`, the front side cast shadows.
		- When {@link Material#side} is set to `DoubleSide`, both sides cast shadows.
	**/
	@:optional
	var shadowSide : Side;
	/**
		Whether to render the material's color.
		
		This can be used in conjunction with {@link Object3D#renderOder} to create invisible
		objects that occlude other objects.
	**/
	@:optional
	var colorWrite : Bool;
	/**
		Override the renderer's default precision for this material.
	**/
	@:optional
	var precision : String;
	/**
		Whether to use polygon offset or not. When enabled, each fragment's depth value will
		be offset after it is interpolated from the depth values of the appropriate vertices.
		The offset is added before the depth test is performed and before the value is written
		into the depth buffer.
		
		Can be useful for rendering hidden-line images, for applying decals to surfaces, and for
		rendering solids with highlighted edges.
	**/
	@:optional
	var polygonOffset : Bool;
	/**
		Specifies a scale factor that is used to create a variable depth offset for each polygon.
	**/
	@:optional
	var polygonOffsetFactor : Float;
	/**
		Is multiplied by an implementation-specific value to create a constant depth offset.
	**/
	@:optional
	var polygonOffsetUnits : Float;
	/**
		Whether to apply dithering to the color to remove the appearance of banding.
	**/
	@:optional
	var dithering : Bool;
	/**
		Whether alpha to coverage should be enabled or not. Can only be used with MSAA-enabled contexts
		(meaning when the renderer was created with *antialias* parameter set to `true`). Enabling this
		will smooth aliasing on clip plane edges and alphaTest-clipped edges.
	**/
	@:optional
	var alphaToCoverage : Bool;
	/**
		Whether to premultiply the alpha (transparency) value.
	**/
	@:optional
	var premultipliedAlpha : Bool;
	/**
		Whether double-sided, transparent objects should be rendered with a single pass or not.
		
		The engine renders double-sided, transparent objects with two draw calls (back faces first,
		then front faces) to mitigate transparency artifacts. There are scenarios however where this
		approach produces no quality gains but still doubles draw calls e.g. when rendering flat
		vegetation like grass sprites. In these cases, set the `forceSinglePass` flag to `true` to
		disable the two pass rendering to avoid performance issues.
	**/
	@:optional
	var forceSinglePass : Bool;
	/**
		Whether it's possible to override the material with {@link Scene#overrideMaterial} or not.
	**/
	@:optional
	var allowOverride : Bool;
	/**
		Defines whether 3D objects using this material are visible.
	**/
	@:optional
	var visible : Bool;
	/**
		Defines whether this material is tone mapped according to the renderer's tone mapping setting.
		
		It is ignored when rendering to a render target or using post processing or when using
		`WebGPURenderer`. In all these cases, all materials are honored by tone mapping.
	**/
	@:optional
	var toneMapped : Bool;
	/**
		An object that can be used to store custom data about the Material. It
		should not hold references to functions as these will not be cloned.
	**/
	@:optional
	var userData : haxe.DynamicAccess<Dynamic>;
};