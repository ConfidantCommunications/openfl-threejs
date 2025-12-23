package three;

typedef MaterialJSON = {
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var uuid : String;
	var type : String;
	@:optional
	var name : String;
	@:optional
	var color : Float;
	@:optional
	var roughness : Float;
	@:optional
	var metalness : Float;
	@:optional
	var sheen : Float;
	@:optional
	var sheenColor : Float;
	@:optional
	var sheenRoughness : Float;
	@:optional
	var emissive : Float;
	@:optional
	var emissiveIntensity : Float;
	@:optional
	var specular : Float;
	@:optional
	var specularIntensity : Float;
	@:optional
	var specularColor : Float;
	@:optional
	var shininess : Float;
	@:optional
	var clearcoat : Float;
	@:optional
	var clearcoatRoughness : Float;
	@:optional
	var clearcoatMap : String;
	@:optional
	var clearcoatRoughnessMap : String;
	@:optional
	var clearcoatNormalMap : String;
	@:optional
	var clearcoatNormalScale : Vector2Tuple;
	@:optional
	var dispersion : Float;
	@:optional
	var iridescence : Float;
	@:optional
	var iridescenceIOR : Float;
	@:optional
	var iridescenceThicknessRange : Float;
	@:optional
	var iridescenceMap : String;
	@:optional
	var iridescenceThicknessMap : String;
	@:optional
	var anisotropy : Float;
	@:optional
	var anisotropyRotation : Float;
	@:optional
	var anisotropyMap : String;
	@:optional
	var map : String;
	@:optional
	var matcap : String;
	@:optional
	var alphaMap : String;
	@:optional
	var lightMap : String;
	@:optional
	var lightMapIntensity : Float;
	@:optional
	var aoMap : String;
	@:optional
	var aoMapIntensity : Float;
	@:optional
	var bumpMap : String;
	@:optional
	var bumpScale : Float;
	@:optional
	var normalMap : String;
	@:optional
	var normalMapType : NormalMapTypes;
	@:optional
	var normalScale : Vector2Tuple;
	@:optional
	var displacementMap : String;
	@:optional
	var displacementScale : Float;
	@:optional
	var displacementBias : Float;
	@:optional
	var roughnessMap : String;
	@:optional
	var metalnessMap : String;
	@:optional
	var emissiveMap : String;
	@:optional
	var specularMap : String;
	@:optional
	var specularIntensityMap : String;
	@:optional
	var specularColorMap : String;
	@:optional
	var envMap : String;
	@:optional
	var combine : Side;
	@:optional
	var envMapRotation : EulerTuple;
	@:optional
	var envMapIntensity : Float;
	@:optional
	var reflectivity : Float;
	@:optional
	var refractionRatio : Float;
	@:optional
	var gradientMap : String;
	@:optional
	var transmission : Float;
	@:optional
	var transmissionMap : String;
	@:optional
	var thickness : Float;
	@:optional
	var thicknessMap : String;
	@:optional
	var attenuationDistance : Float;
	@:optional
	var attenuationColor : Float;
	@:optional
	var size : Float;
	@:optional
	var shadowSide : Float;
	@:optional
	var sizeAttenuation : Bool;
	@:optional
	var blending : Blending;
	@:optional
	var side : Side;
	@:optional
	var vertexColors : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var transparent : Bool;
	@:optional
	var blendSrc : BlendingSrcFactor;
	@:optional
	var blendDst : BlendingDstFactor;
	@:optional
	var blendEquation : BlendingEquation;
	@:optional
	var blendSrcAlpha : Float;
	@:optional
	var blendDstAlpha : Float;
	@:optional
	var blendEquationAlpha : Float;
	@:optional
	var blendColor : Float;
	@:optional
	var blendAlpha : Float;
	@:optional
	var depthFunc : DepthModes;
	@:optional
	var depthTest : Bool;
	@:optional
	var depthWrite : Bool;
	@:optional
	var colorWrite : Bool;
	@:optional
	var stencilWriteMask : Float;
	@:optional
	var stencilFunc : StencilFunc;
	@:optional
	var stencilRef : Float;
	@:optional
	var stencilFuncMask : Float;
	@:optional
	var stencilFail : StencilOp;
	@:optional
	var stencilZFail : StencilOp;
	@:optional
	var stencilZPass : StencilOp;
	@:optional
	var stencilWrite : Bool;
	@:optional
	var rotation : Float;
	@:optional
	var polygonOffset : Bool;
	@:optional
	var polygonOffsetFactor : Float;
	@:optional
	var polygonOffsetUnits : Float;
	@:optional
	var linewidth : Float;
	@:optional
	var dashSize : Float;
	@:optional
	var gapSize : Float;
	@:optional
	var scale : Float;
	@:optional
	var dithering : Bool;
	@:optional
	var alphaTest : Float;
	@:optional
	var alphaHash : Bool;
	@:optional
	var alphaToCoverage : Bool;
	@:optional
	var premultipliedAlpha : Bool;
	@:optional
	var forceSinglePass : Bool;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var wireframeLinecap : String;
	@:optional
	var wireframeLinejoin : String;
	@:optional
	var flatShading : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var toneMapped : Bool;
	@:optional
	var fog : Bool;
	@:optional
	var userData : haxe.DynamicAccess<Any>;
	@:optional
	var textures : Array<{
		var name : String;
		@:optional
		var userData : haxe.DynamicAccess<Any>;
		var uuid : String;
		var image : String;
		var mapping : AnyMapping;
		var channel : Float;
		var repeat : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
		var offset : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
		var center : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
		var rotation : Float;
		var wrap : ts.Tuple4<Dynamic, Float, Dynamic, Float>;
		var format : Int;
		var internalFormat : Null<PixelFormatGPU>;
		var type : TextureDataType;
		var colorSpace : String;
		var minFilter : MinificationTextureFilter;
		var magFilter : MagnificationTextureFilter;
		var anisotropy : Float;
		var flipY : Bool;
		var generateMipmaps : Bool;
		var premultiplyAlpha : Bool;
		var unpackAlignment : Float;
	}>;
	@:optional
	var images : Array<SourceJSON>;
};