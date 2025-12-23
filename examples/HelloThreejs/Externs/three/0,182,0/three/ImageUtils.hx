package three;

/**
	A class containing utility functions for images.
**/
@:native("THREE.ImageUtils") extern class ImageUtils {
	function new();
	static var prototype : ImageUtils;
	/**
		Returns a data URI containing a representation of the given image.
	**/
	static function getDataURL(image:ts.AnyOf7<js.html.CanvasElement, js.html.ImageElement, js.html.svg.ImageElement, js.html.VideoElement, js.html.ImageBitmap, js.html.OffscreenCanvas, js.html.ImageData>, ?type:String):String;
	/**
		Converts the given sRGB image data to linear color space.
		
		Converts the given sRGB image data to linear color space.
	**/
	@:overload(function(image:js.html.ImageData):{
		var data : js.lib.Uint8ClampedArray;
		var width : Float;
		var height : Float;
	} { })
	static function sRGBToLinear(image:ts.AnyOf3<js.html.CanvasElement, js.html.ImageElement, js.html.ImageBitmap>):js.html.CanvasElement;
}