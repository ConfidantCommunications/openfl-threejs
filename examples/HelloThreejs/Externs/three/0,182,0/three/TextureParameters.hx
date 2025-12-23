package three;

typedef TextureParameters = {
	@:optional
	var mapping : AnyMapping;
	@:optional
	var wrapS : Wrapping;
	@:optional
	var wrapT : Wrapping;
	@:optional
	var wrapR : Wrapping;
	@:optional
	var format : PixelFormat;
	@:optional
	var internalFormat : PixelFormatGPU;
	@:optional
	var type : TextureDataType;
	@:optional
	var colorSpace : ColorSpace;
	@:optional
	var magFilter : MagnificationTextureFilter;
	@:optional
	var minFilter : MinificationTextureFilter;
	@:optional
	var anisotropy : Float;
	@:optional
	var flipY : Bool;
	@:optional
	var generateMipmaps : Bool;
};