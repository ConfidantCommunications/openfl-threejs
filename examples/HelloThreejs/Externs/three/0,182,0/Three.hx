@:jsRequire("three") @valueModuleOnly extern class Three {
	static final UniformsUtils : {
		dynamic function clone<T>(uniformsSrc:T):T;
		dynamic function merge(uniforms:Array<haxe.DynamicAccess<three.IUniform<Dynamic>>>):haxe.DynamicAccess<three.IUniform<Dynamic>>;
	};
	/**
		A class containing utility functions for textures.
	**/
	static final TextureUtils : {
		dynamic function contain(texture:three.Texture<Any>, aspect:Float):three.Texture<Any>;
		dynamic function cover(texture:three.Texture<Any>, aspect:Float):three.Texture<Any>;
		dynamic function fill(texture:three.Texture<Any>):three.Texture<Any>;
		dynamic function getByteLength(width:Float, height:Float, format:Int, type:three.TextureDataType):Float;
	};
	static final ColorManagement : three.ColorManagement;
	static final MathUtils : {
		var DEG2RAD : Float;
		var RAD2DEG : Float;
		dynamic function generateUUID():String;
		dynamic function clamp(value:Float, min:Float, max:Float):Float;
		dynamic function euclideanModulo(n:Float, m:Float):Float;
		dynamic function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
		dynamic function inverseLerp(x:Float, y:Float, t:Float):Float;
		dynamic function lerp(x:Float, y:Float, t:Float):Float;
		dynamic function damp(x:Float, y:Float, lambda:Float, dt:Float):Float;
		dynamic function pingpong(x:Float, ?length:Float):Float;
		dynamic function smoothstep(x:Float, min:Float, max:Float):Float;
		dynamic function smootherstep(x:Float, min:Float, max:Float):Float;
		dynamic function randInt(low:Float, high:Float):Float;
		dynamic function randFloat(low:Float, high:Float):Float;
		dynamic function randFloatSpread(range:Float):Float;
		dynamic function seededRandom(?seed:Float):Float;
		dynamic function degToRad(degrees:Float):Float;
		dynamic function radToDeg(radians:Float):Float;
		dynamic function isPowerOfTwo(value:Float):Bool;
		dynamic function ceilPowerOfTwo(value:Float):Float;
		dynamic function floorPowerOfTwo(value:Float):Float;
		dynamic function setQuaternionFromProperEuler(q:three.Quaternion, a:Float, b:Float, c:Float, order:String):Void;
		dynamic function normalize(value:Float, array:ts.AnyOf7<js.lib.Float32Array, js.lib.Uint32Array, js.lib.Uint16Array, js.lib.Uint8Array, js.lib.Int32Array, js.lib.Int16Array, js.lib.Int8Array>):Float;
		dynamic function denormalize(value:Float, array:ts.AnyOf7<js.lib.Float32Array, js.lib.Uint32Array, js.lib.Uint16Array, js.lib.Uint8Array, js.lib.Int32Array, js.lib.Int16Array, js.lib.Int8Array>):Float;
	};
	static function createCanvasElement():js.html.CanvasElement;
	static function error(params:haxe.extern.Rest<Any>):Void;
	static function getConsoleFunction():(type:String, message:String, params:haxe.extern.Rest<Any>) -> Void;
	static function log(params:haxe.extern.Rest<Any>):Void;
	static function setConsoleFunction(fn:(type:String, message:String, params:haxe.extern.Rest<Any>) -> Void):Void;
	static function warn(params:haxe.extern.Rest<Any>):Void;
	static function warnOnce(params:haxe.extern.Rest<Any>):Void;
	static final REVISION : String;
	static final CullFaceNone : Int;
	static final CullFaceBack : Int;
	static final CullFaceFront : Int;
	static final CullFaceFrontBack : Int;
	static final BasicShadowMap : Int;
	static final PCFShadowMap : Int;
	static final PCFSoftShadowMap : Int;
	static final VSMShadowMap : Int;
	static final FrontSide : Int;
	static final BackSide : Int;
	static final DoubleSide : Int;
	static final NoBlending : Int;
	static final NormalBlending : Int;
	static final AdditiveBlending : Int;
	static final SubtractiveBlending : Int;
	static final MultiplyBlending : Int;
	static final CustomBlending : Int;
	static final AddEquation : Int;
	static final SubtractEquation : Int;
	static final ReverseSubtractEquation : Int;
	static final MinEquation : Int;
	static final MaxEquation : Int;
	static final ZeroFactor : Int;
	static final OneFactor : Int;
	static final SrcColorFactor : Int;
	static final OneMinusSrcColorFactor : Int;
	static final SrcAlphaFactor : Int;
	static final OneMinusSrcAlphaFactor : Int;
	static final DstAlphaFactor : Int;
	static final OneMinusDstAlphaFactor : Int;
	static final DstColorFactor : Int;
	static final OneMinusDstColorFactor : Int;
	static final SrcAlphaSaturateFactor : Int;
	static final ConstantColorFactor : Int;
	static final OneMinusConstantColorFactor : Int;
	static final ConstantAlphaFactor : Int;
	static final OneMinusConstantAlphaFactor : Int;
	static final NeverDepth : Int;
	static final AlwaysDepth : Int;
	static final LessDepth : Int;
	static final LessEqualDepth : Int;
	static final EqualDepth : Int;
	static final GreaterEqualDepth : Int;
	static final GreaterDepth : Int;
	static final NotEqualDepth : Int;
	static final MultiplyOperation : Int;
	static final MixOperation : Int;
	static final AddOperation : Int;
	static final NoToneMapping : Int;
	static final LinearToneMapping : Int;
	static final ReinhardToneMapping : Int;
	static final CineonToneMapping : Int;
	static final ACESFilmicToneMapping : Int;
	static final CustomToneMapping : Int;
	static final AgXToneMapping : Int;
	static final NeutralToneMapping : Int;
	static final AttachedBindMode : String;
	static final DetachedBindMode : String;
	/**
		Maps the texture using the mesh's UV coordinates.
	**/
	static final UVMapping : Int;
	static final CubeReflectionMapping : Int;
	static final CubeRefractionMapping : Int;
	static final CubeUVReflectionMapping : Int;
	static final EquirectangularReflectionMapping : Int;
	static final EquirectangularRefractionMapping : Int;
	/**
		With {@link RepeatWrapping} the texture will simply repeat to infinity.
	**/
	static final RepeatWrapping : Int;
	/**
		With {@link ClampToEdgeWrapping} the last pixel of the texture stretches to the edge of the mesh.
	**/
	static final ClampToEdgeWrapping : Int;
	/**
		With {@link MirroredRepeatWrapping} the texture will repeats to infinity, mirroring on each repeat.
	**/
	static final MirroredRepeatWrapping : Int;
	/**
		{@link NearestFilter} returns the value of the texture element that is nearest (in Manhattan distance) to the specified texture coordinates.
	**/
	static final NearestFilter : Int;
	/**
		{@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
		and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
	**/
	static final NearestMipmapNearestFilter : Int;
	/**
		{@link NearestMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured
		and uses the {@link NearestFilter} criterion (the texel nearest to the center of the pixel) to produce a texture value.
	**/
	static final NearestMipMapNearestFilter : Int;
	/**
		{@link NearestMipmapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
		and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
		The final texture value is a weighted average of those two values.
	**/
	static final NearestMipmapLinearFilter : Int;
	/**
		{@link NearestMipMapLinearFilter} chooses the two mipmaps that most closely match the size of the pixel being textured
		and uses the {@link NearestFilter} criterion to produce a texture value from each mipmap.
		The final texture value is a weighted average of those two values.
	**/
	static final NearestMipMapLinearFilter : Int;
	/**
		{@link LinearFilter} returns the weighted average of the four texture elements that are closest to the specified texture coordinates,
		and can include items wrapped or repeated from other parts of a texture,
		depending on the values of {@link THREE.Texture.wrapS | wrapS} and {@link THREE.Texture.wrapT | wrapT}, and on the exact mapping.
	**/
	static final LinearFilter : Int;
	/**
		{@link LinearMipmapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
		uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
	**/
	static final LinearMipmapNearestFilter : Int;
	/**
		{@link LinearMipMapNearestFilter} chooses the mipmap that most closely matches the size of the pixel being textured and
		uses the {@link LinearFilter} criterion (a weighted average of the four texels that are closest to the center of the pixel) to produce a texture value.
	**/
	static final LinearMipMapNearestFilter : Int;
	/**
		{@link LinearMipmapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
		uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
		The final texture value is a weighted average of those two values.
	**/
	static final LinearMipmapLinearFilter : Int;
	/**
		{@link LinearMipMapLinearFilter} is the default and chooses the two mipmaps that most closely match the size of the pixel being textured and
		uses the {@link LinearFilter} criterion to produce a texture value from each mipmap.
		The final texture value is a weighted average of those two values.
	**/
	static final LinearMipMapLinearFilter : Int;
	static final UnsignedByteType : Int;
	static final ByteType : Int;
	static final ShortType : Int;
	static final UnsignedShortType : Int;
	static final IntType : Int;
	static final UnsignedIntType : Int;
	static final FloatType : Int;
	static final HalfFloatType : Int;
	static final UnsignedShort4444Type : Int;
	static final UnsignedShort5551Type : Int;
	static final UnsignedInt248Type : Int;
	static final UnsignedInt5999Type : Int;
	static final UnsignedInt101111Type : Int;
	/**
		{@link AlphaFormat} discards the red, green and blue components and reads just the alpha component.
	**/
	static final AlphaFormat : Int;
	static final RGBFormat : Int;
	/**
		{@link RGBAFormat} is the default and reads the red, green, blue and alpha components.
	**/
	static final RGBAFormat : Int;
	/**
		{@link DepthFormat} reads each element as a single depth value, converts it to floating point, and clamps to the range `[0,1]`.
	**/
	static final DepthFormat : Int;
	/**
		{@link DepthStencilFormat} reads each element is a pair of depth and stencil values.
		The depth component of the pair is interpreted as in {@link DepthFormat}.
		The stencil component is interpreted based on the depth + stencil internal format.
	**/
	static final DepthStencilFormat : Int;
	/**
		{@link RedFormat} discards the green and blue components and reads just the red component.
	**/
	static final RedFormat : Int;
	/**
		{@link RedIntegerFormat} discards the green and blue components and reads just the red component.
		The texels are read as integers instead of floating point.
	**/
	static final RedIntegerFormat : Int;
	/**
		{@link RGFormat} discards the alpha, and blue components and reads the red, and green components.
	**/
	static final RGFormat : Int;
	/**
		{@link RGIntegerFormat} discards the alpha, and blue components and reads the red, and green components.
		The texels are read as integers instead of floating point.
	**/
	static final RGIntegerFormat : Int;
	/**
		{@link RGBIntegerFormat} discards the alpha components and reads the red, green, and blue components.
	**/
	static final RGBIntegerFormat : Int;
	/**
		{@link RGBAIntegerFormat} reads the red, green, blue and alpha component
	**/
	static final RGBAIntegerFormat : Int;
	/**
		A DXT1-compressed image in an RGB image format.
	**/
	static final RGB_S3TC_DXT1_Format : Int;
	/**
		A DXT1-compressed image in an RGB image format with a simple on/off alpha value.
	**/
	static final RGBA_S3TC_DXT1_Format : Int;
	/**
		A DXT3-compressed image in an RGBA image format. Compared to a 32-bit RGBA texture, it offers 4:1 compression.
	**/
	static final RGBA_S3TC_DXT3_Format : Int;
	/**
		A DXT5-compressed image in an RGBA image format. It also provides a 4:1 compression, but differs from the DXT3 compression in how the alpha compression is done.
	**/
	static final RGBA_S3TC_DXT5_Format : Int;
	/**
		RGB compression in 4-bit mode. One block for each 4×4 pixels.
	**/
	static final RGB_PVRTC_4BPPV1_Format : Int;
	/**
		RGB compression in 2-bit mode. One block for each 8×4 pixels.
	**/
	static final RGB_PVRTC_2BPPV1_Format : Int;
	/**
		RGBA compression in 4-bit mode. One block for each 4×4 pixels.
	**/
	static final RGBA_PVRTC_4BPPV1_Format : Int;
	/**
		RGBA compression in 2-bit mode. One block for each 8×4 pixels.
	**/
	static final RGBA_PVRTC_2BPPV1_Format : Int;
	static final RGB_ETC1_Format : Int;
	static final RGB_ETC2_Format : Int;
	static final RGBA_ETC2_EAC_Format : Int;
	static final R11_EAC_Format : Int;
	static final SIGNED_R11_EAC_Format : Int;
	static final RG11_EAC_Format : Int;
	static final SIGNED_RG11_EAC_Format : Int;
	static final RGBA_ASTC_4x4_Format : Int;
	static final RGBA_ASTC_5x4_Format : Int;
	static final RGBA_ASTC_5x5_Format : Int;
	static final RGBA_ASTC_6x5_Format : Int;
	static final RGBA_ASTC_6x6_Format : Int;
	static final RGBA_ASTC_8x5_Format : Int;
	static final RGBA_ASTC_8x6_Format : Int;
	static final RGBA_ASTC_8x8_Format : Int;
	static final RGBA_ASTC_10x5_Format : Int;
	static final RGBA_ASTC_10x6_Format : Int;
	static final RGBA_ASTC_10x8_Format : Int;
	static final RGBA_ASTC_10x10_Format : Int;
	static final RGBA_ASTC_12x10_Format : Int;
	static final RGBA_ASTC_12x12_Format : Int;
	static final RGBA_BPTC_Format : Int;
	static final RGB_BPTC_SIGNED_Format : Int;
	static final RGB_BPTC_UNSIGNED_Format : Int;
	static final RED_RGTC1_Format : Int;
	static final SIGNED_RED_RGTC1_Format : Int;
	static final RED_GREEN_RGTC2_Format : Int;
	static final SIGNED_RED_GREEN_RGTC2_Format : Int;
	static final LoopOnce : Int;
	static final LoopRepeat : Int;
	static final LoopPingPong : Int;
	static final InterpolateDiscrete : Int;
	static final InterpolateLinear : Int;
	static final InterpolateSmooth : Int;
	static final ZeroCurvatureEnding : Int;
	static final ZeroSlopeEnding : Int;
	static final WrapAroundEnding : Int;
	static final NormalAnimationBlendMode : Int;
	static final AdditiveAnimationBlendMode : Int;
	static final TrianglesDrawMode : Int;
	static final TriangleStripDrawMode : Int;
	static final TriangleFanDrawMode : Int;
	static final BasicDepthPacking : Int;
	static final RGBADepthPacking : Int;
	static final RGBDepthPacking : Int;
	static final RGDepthPacking : Int;
	static final TangentSpaceNormalMap : Int;
	static final ObjectSpaceNormalMap : Int;
	static final NoColorSpace : String;
	static final SRGBColorSpace : String;
	static final LinearSRGBColorSpace : String;
	static final LinearTransfer : String;
	static final SRGBTransfer : String;
	static final NoNormalPacking : String;
	static final NormalRGPacking : String;
	static final NormalGAPacking : String;
	static final ZeroStencilOp : Int;
	static final KeepStencilOp : Int;
	static final ReplaceStencilOp : Int;
	static final IncrementStencilOp : Int;
	static final DecrementStencilOp : Int;
	static final IncrementWrapStencilOp : Int;
	static final DecrementWrapStencilOp : Int;
	static final InvertStencilOp : Int;
	static final NeverStencilFunc : Int;
	static final LessStencilFunc : Int;
	static final EqualStencilFunc : Int;
	static final LessEqualStencilFunc : Int;
	static final GreaterStencilFunc : Int;
	static final NotEqualStencilFunc : Int;
	static final GreaterEqualStencilFunc : Int;
	static final AlwaysStencilFunc : Int;
	static final NeverCompare : Int;
	static final LessCompare : Int;
	static final EqualCompare : Int;
	static final LessEqualCompare : Int;
	static final GreaterCompare : Int;
	static final NotEqualCompare : Int;
	static final GreaterEqualCompare : Int;
	static final AlwaysCompare : Int;
	static final StaticDrawUsage : Int;
	static final DynamicDrawUsage : Int;
	static final StreamDrawUsage : Int;
	static final StaticReadUsage : Int;
	static final DynamicReadUsage : Int;
	static final StreamReadUsage : Int;
	static final StaticCopyUsage : Int;
	static final DynamicCopyUsage : Int;
	static final StreamCopyUsage : Int;
	static final GLSL1 : String;
	static final GLSL3 : String;
	static final WebGLCoordinateSystem : Int;
	static final WebGPUCoordinateSystem : Int;
	static final TimestampQuery : {
		var COMPUTE : String;
		var RENDER : String;
	};
	static final InterpolationSamplingType : {
		var PERSPECTIVE : String;
		var LINEAR : String;
		var FLAT : String;
	};
	static final InterpolationSamplingMode : {
		var NORMAL : String;
		var CENTROID : String;
		var SAMPLE : String;
		var FIRST : String;
		var EITHER : String;
	};
	static final Cache : {
		var enabled : Bool;
		var files : Dynamic;
		function add(key:String, file:Dynamic):Void;
		function get(key:String):Dynamic;
		function remove(key:String):Void;
		function clear():Void;
	};
	static final DefaultLoadingManager : three.LoadingManager;
	static function SRGBToLinear(c:Float):Float;
	static final ShaderChunk : {
		var alphahash_fragment : String;
		var alphahash_pars_fragment : String;
		var alphamap_fragment : String;
		var alphamap_pars_fragment : String;
		var alphatest_fragment : String;
		var alphatest_pars_fragment : String;
		var aomap_fragment : String;
		var aomap_pars_fragment : String;
		var batching_pars_vertex : String;
		var begin_vertex : String;
		var beginnormal_vertex : String;
		var bsdfs : String;
		var iridescence_fragment : String;
		var bumpmap_pars_fragment : String;
		var clipping_planes_fragment : String;
		var clipping_planes_pars_fragment : String;
		var clipping_planes_pars_vertex : String;
		var clipping_planes_vertex : String;
		var color_fragment : String;
		var color_pars_fragment : String;
		var color_pars_vertex : String;
		var color_vertex : String;
		var common : String;
		var cube_uv_reflection_fragment : String;
		var defaultnormal_vertex : String;
		var displacementmap_pars_vertex : String;
		var displacementmap_vertex : String;
		var emissivemap_fragment : String;
		var emissivemap_pars_fragment : String;
		var colorspace_fragment : String;
		var colorspace_pars_fragment : String;
		var envmap_fragment : String;
		var envmap_common_pars_fragment : String;
		var envmap_pars_fragment : String;
		var envmap_pars_vertex : String;
		var envmap_physical_pars_fragment : String;
		var envmap_vertex : String;
		var fog_vertex : String;
		var fog_pars_vertex : String;
		var fog_fragment : String;
		var fog_pars_fragment : String;
		var gradientmap_pars_fragment : String;
		var lightmap_pars_fragment : String;
		var lights_lambert_fragment : String;
		var lights_lambert_pars_fragment : String;
		var lights_pars_begin : String;
		var lights_toon_fragment : String;
		var lights_toon_pars_fragment : String;
		var lights_phong_fragment : String;
		var lights_phong_pars_fragment : String;
		var lights_physical_fragment : String;
		var lights_physical_pars_fragment : String;
		var lights_fragment_begin : String;
		var lights_fragment_maps : String;
		var lights_fragment_end : String;
		var logdepthbuf_fragment : String;
		var logdepthbuf_pars_fragment : String;
		var logdepthbuf_pars_vertex : String;
		var logdepthbuf_vertex : String;
		var map_fragment : String;
		var map_pars_fragment : String;
		var map_particle_fragment : String;
		var map_particle_pars_fragment : String;
		var metalnessmap_fragment : String;
		var metalnessmap_pars_fragment : String;
		var morphcolor_vertex : String;
		var morphnormal_vertex : String;
		var morphtarget_pars_vertex : String;
		var morphtarget_vertex : String;
		var normal_fragment_begin : String;
		var normal_fragment_maps : String;
		var normal_pars_fragment : String;
		var normal_pars_vertex : String;
		var normal_vertex : String;
		var normalmap_pars_fragment : String;
		var clearcoat_normal_fragment_begin : String;
		var clearcoat_normal_fragment_maps : String;
		var clearcoat_pars_fragment : String;
		var iridescence_pars_fragment : String;
		var opaque_fragment : String;
		var packing : String;
		var premultiplied_alpha_fragment : String;
		var project_vertex : String;
		var dithering_fragment : String;
		var dithering_pars_fragment : String;
		var roughnessmap_fragment : String;
		var roughnessmap_pars_fragment : String;
		var shadowmap_pars_fragment : String;
		var shadowmap_pars_vertex : String;
		var shadowmap_vertex : String;
		var shadowmask_pars_fragment : String;
		var skinbase_vertex : String;
		var skinning_pars_vertex : String;
		var skinning_vertex : String;
		var skinnormal_vertex : String;
		var specularmap_fragment : String;
		var specularmap_pars_fragment : String;
		var tonemapping_fragment : String;
		var tonemapping_pars_fragment : String;
		var transmission_fragment : String;
		var transmission_pars_fragment : String;
		var uv_pars_fragment : String;
		var uv_pars_vertex : String;
		var uv_vertex : String;
		var worldpos_vertex : String;
		var background_vert : String;
		var background_frag : String;
		var backgroundCube_vert : String;
		var backgroundCube_frag : String;
		var cube_vert : String;
		var cube_frag : String;
		var depth_vert : String;
		var depth_frag : String;
		var distanceRGBA_vert : String;
		var distanceRGBA_frag : String;
		var equirect_vert : String;
		var equirect_frag : String;
		var linedashed_vert : String;
		var linedashed_frag : String;
		var meshbasic_vert : String;
		var meshbasic_frag : String;
		var meshlambert_vert : String;
		var meshlambert_frag : String;
		var meshmatcap_vert : String;
		var meshmatcap_frag : String;
		var meshnormal_vert : String;
		var meshnormal_frag : String;
		var meshphong_vert : String;
		var meshphong_frag : String;
		var meshphysical_vert : String;
		var meshphysical_frag : String;
		var meshtoon_vert : String;
		var meshtoon_frag : String;
		var points_vert : String;
		var points_frag : String;
		var shadow_vert : String;
		var shadow_frag : String;
		var sprite_vert : String;
		var sprite_frag : String;
	};
	static final ShaderLib : {
		var basic : three.ShaderLibShader;
		var lambert : three.ShaderLibShader;
		var phong : three.ShaderLibShader;
		var standard : three.ShaderLibShader;
		var matcap : three.ShaderLibShader;
		var points : three.ShaderLibShader;
		var dashed : three.ShaderLibShader;
		var depth : three.ShaderLibShader;
		var normal : three.ShaderLibShader;
		var sprite : three.ShaderLibShader;
		var background : three.ShaderLibShader;
		var cube : three.ShaderLibShader;
		var equirect : three.ShaderLibShader;
		var distance : three.ShaderLibShader;
		var shadow : three.ShaderLibShader;
		var physical : three.ShaderLibShader;
	};
	static final UniformsLib : {
		var common : {
			var diffuse : three.IUniform<three.Color>;
			var opacity : three.IUniform<Float>;
			var map : three.IUniform<Any>;
			var mapTransform : three.IUniform<three.Matrix3>;
			var alphaMap : three.IUniform<Any>;
			var alphaMapTransform : three.IUniform<three.Matrix3>;
			var alphaTest : three.IUniform<Float>;
		};
		var specularmap : {
			var specularMap : three.IUniform<Any>;
			var specularMapTransform : three.IUniform<three.Matrix3>;
		};
		var envmap : {
			var envMap : three.IUniform<Any>;
			var envMapRotation : three.IUniform<three.Matrix3>;
			var flipEnvMap : three.IUniform<Float>;
			var reflectivity : three.IUniform<Float>;
			var ior : three.IUniform<Float>;
			var refractRatio : three.IUniform<Float>;
		};
		var aomap : {
			var aoMap : three.IUniform<Any>;
			var aoMapIntensity : three.IUniform<Float>;
			var aoMapTransform : three.IUniform<three.Matrix3>;
		};
		var lightmap : {
			var lightMap : three.IUniform<Float>;
			var lightMapIntensity : three.IUniform<Float>;
			var lightMapTransform : three.IUniform<three.Matrix3>;
		};
		var bumpmap : {
			var bumpMap : three.IUniform<Any>;
			var bumpMapTransform : three.IUniform<three.Matrix3>;
			var bumpScale : three.IUniform<Float>;
		};
		var normalmap : {
			var normalMap : three.IUniform<Any>;
			var normalMapTransform : three.IUniform<three.Matrix3>;
			var normalScale : three.IUniform<three.Vector2>;
		};
		var displacementmap : {
			var displacementMap : three.IUniform<Any>;
			var displacementMapTransform : three.IUniform<three.Matrix3>;
			var displacementScale : three.IUniform<Float>;
			var displacementBias : three.IUniform<Float>;
		};
		var emissivemap : {
			var emissiveMap : three.IUniform<Any>;
			var emissiveMapTransform : three.IUniform<three.Matrix3>;
		};
		var metalnessmap : {
			var metalnessMap : three.IUniform<Any>;
			var metalnessMapTransform : three.IUniform<three.Matrix3>;
		};
		var roughnessmap : {
			var roughnessMap : three.IUniform<Any>;
			var roughnessMapTransform : three.IUniform<three.Matrix3>;
		};
		var gradientmap : {
			var gradientMap : three.IUniform<Any>;
		};
		var fog : {
			var fogDensity : three.IUniform<Float>;
			var fogNear : three.IUniform<Float>;
			var fogFar : three.IUniform<Float>;
			var fogColor : three.IUniform<three.Color>;
		};
		var lights : {
			var ambientLightColor : three.IUniform<Array<Any>>;
			var lightProbe : three.IUniform<Array<Any>>;
			var directionalLights : {
				var value : Array<Any>;
				var properties : {
					var direction : { };
					var color : { };
				};
			};
			var directionalLightShadows : {
				var value : Array<Any>;
				var properties : {
					var shadowIntensity : Float;
					var shadowBias : { };
					var shadowNormalBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
				};
			};
			var directionalShadowMap : three.IUniform<Array<Any>>;
			var directionalShadowMatrix : three.IUniform<Array<Any>>;
			var spotLights : {
				var value : Array<Any>;
				var properties : {
					var color : { };
					var position : { };
					var direction : { };
					var distance : { };
					var coneCos : { };
					var penumbraCos : { };
					var decay : { };
				};
			};
			var spotLightShadows : {
				var value : Array<Any>;
				var properties : {
					var shadowIntensity : Float;
					var shadowBias : { };
					var shadowNormalBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
				};
			};
			var spotLightMap : three.IUniform<Array<Any>>;
			var spotShadowMap : three.IUniform<Array<Any>>;
			var spotLightMatrix : three.IUniform<Array<Any>>;
			var pointLights : {
				var value : Array<Any>;
				var properties : {
					var color : { };
					var position : { };
					var decay : { };
					var distance : { };
				};
			};
			var pointLightShadows : {
				var value : Array<Any>;
				var properties : {
					var shadowIntensity : Float;
					var shadowBias : { };
					var shadowNormalBias : { };
					var shadowRadius : { };
					var shadowMapSize : { };
					var shadowCameraNear : { };
					var shadowCameraFar : { };
				};
			};
			var pointShadowMap : three.IUniform<Array<Any>>;
			var pointShadowMatrix : three.IUniform<Array<Any>>;
			var hemisphereLights : {
				var value : Array<Any>;
				var properties : {
					var direction : { };
					var skycolor : { };
					var groundColor : { };
				};
			};
			var rectAreaLights : {
				var value : Array<Any>;
				var properties : {
					var color : { };
					var position : { };
					var width : { };
					var height : { };
				};
			};
			var ltc_1 : three.IUniform<Any>;
			var ltc_2 : three.IUniform<Any>;
		};
		var points : {
			var diffuse : three.IUniform<three.Color>;
			var opacity : three.IUniform<Float>;
			var size : three.IUniform<Float>;
			var scale : three.IUniform<Float>;
			var map : three.IUniform<Any>;
			var alphaMap : three.IUniform<Any>;
			var alphaTest : three.IUniform<Float>;
			var uvTransform : three.IUniform<three.Matrix3>;
		};
		var sprite : {
			var diffuse : three.IUniform<three.Color>;
			var opacity : three.IUniform<Float>;
			var center : three.IUniform<three.Vector2>;
			var rotation : three.IUniform<Float>;
			var map : three.IUniform<Any>;
			var mapTransform : three.IUniform<three.Matrix3>;
			var alphaMap : three.IUniform<Any>;
			var alphaTest : three.IUniform<Float>;
		};
	};
}