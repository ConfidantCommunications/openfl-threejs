package three;

typedef RenderTargetOptions = {
	@:optional
	var depthBuffer : Bool;
	@:optional
	var stencilBuffer : Bool;
	@:optional
	var resolveDepthBuffer : Bool;
	@:optional
	var resolveStencilBuffer : Bool;
	@:optional
	var depthTexture : DepthTexture;
	/**
		Defines the count of MSAA samples. Can only be used with WebGL 2. Default is **0**.
	**/
	@:optional
	var samples : Float;
	@:optional
	var count : Float;
	@:optional
	var depth : Float;
	@:optional
	var multiview : Bool;
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