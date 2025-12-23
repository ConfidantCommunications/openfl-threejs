package three;

typedef TextureJSON = {
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var uuid : String;
	var name : String;
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
	@:optional
	var userData : haxe.DynamicAccess<Any>;
};