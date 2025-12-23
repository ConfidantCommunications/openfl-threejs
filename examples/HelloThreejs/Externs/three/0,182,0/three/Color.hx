package three;

/**
	Class representing a color.
	
	A Color instance is represented by RGB components in the linear <i>working color space</i>, which defaults to
	`LinearSRGBColorSpace`. Inputs conventionally using `SRGBColorSpace` (such as hexadecimals and CSS strings) are
	converted to the working color space automatically.
	
	```
	// converted automatically from SRGBColorSpace to LinearSRGBColorSpace
	const color = new THREE.Color().setHex( 0x112233 );
	```
	
	Source color spaces may be specified explicitly, to ensure correct conversions.
	
	```
	// assumed already LinearSRGBColorSpace; no conversion
	const color = new THREE.Color().setRGB( 0.5, 0.5, 0.5 );
	
	// converted explicitly from SRGBColorSpace to LinearSRGBColorSpace
	const color = new THREE.Color().setRGB( 0.5, 0.5, 0.5, SRGBColorSpace );
	```
	
	If THREE.ColorManagement is disabled, no conversions occur. For details, see <i>Color management</i>.
	
	Iterating through a Color instance will yield its components (r, g, b) in the corresponding order.
**/
@:native("THREE.Color") extern class Color {
	@:overload(function(r:Float, g:Float, b:Float):Color { })
	function new(?color:ColorRepresentation);
	final isColor : Bool;
	/**
		Red channel value between `0.0` and `1.0`. Default is `1`.
	**/
	var r : Float;
	/**
		Green channel value between `0.0` and `1.0`. Default is `1`.
	**/
	var g : Float;
	/**
		Blue channel value between `0.0` and `1.0`. Default is `1`.
	**/
	var b : Float;
	function set(args:haxe.extern.Rest<Any>):Color;
	/**
		Sets this color's {@link r}, {@link g} and {@link b} components from the x, y, and z components of the specified
		{@link Vector3 | vector}.
	**/
	function setFromVector3(vector:Vector3):Color;
	function setScalar(scalar:Float):Color;
	function setHex(hex:Float, ?colorSpace:String):Color;
	/**
		Sets this color from RGB values.
	**/
	function setRGB(r:Float, g:Float, b:Float, ?colorSpace:String):Color;
	/**
		Sets this color from HSL values.
		Based on MochiKit implementation by Bob Ippolito.
	**/
	function setHSL(h:Float, s:Float, l:Float, ?colorSpace:String):Color;
	/**
		Sets this color from a CSS context style string.
	**/
	function setStyle(style:String, ?colorSpace:String):Color;
	/**
		Sets this color from a color name.
		Faster than {@link Color#setStyle .setStyle()} method if you don't need the other CSS-style formats.
	**/
	function setColorName(style:String, ?colorSpace:String):Color;
	/**
		Clones this color.
	**/
	function clone():Color;
	/**
		Copies given color.
	**/
	function copy(color:Color):Color;
	/**
		Copies given color making conversion from `SRGBColorSpace` to `LinearSRGBColorSpace`.
	**/
	function copySRGBToLinear(color:Color):Color;
	/**
		Copies given color making conversion from `LinearSRGBColorSpace` to `SRGBColorSpace`.
	**/
	function copyLinearToSRGB(color:Color):Color;
	/**
		Converts this color from `SRGBColorSpace` to `LinearSRGBColorSpace`.
	**/
	function convertSRGBToLinear():Color;
	/**
		Converts this color from `LinearSRGBColorSpace` to `SRGBColorSpace`.
	**/
	function convertLinearToSRGB():Color;
	/**
		Returns the hexadecimal value of this color.
	**/
	function getHex(?colorSpace:String):Float;
	/**
		Returns the string formatted hexadecimal value of this color.
	**/
	function getHexString(?colorSpace:String):String;
	function getHSL(target:HSL, ?colorSpace:String):HSL;
	function getRGB(target:RGB, ?colorSpace:String):RGB;
	/**
		Returns the value of this color in CSS context style.
		Example: rgb(r, g, b)
	**/
	function getStyle(?colorSpace:String):String;
	function offsetHSL(h:Float, s:Float, l:Float):Color;
	function add(color:Color):Color;
	function addColors(color1:Color, color2:Color):Color;
	function addScalar(s:Float):Color;
	/**
		Applies the transform {@link Matrix3 | m} to this color's RGB components.
	**/
	function applyMatrix3(m:Matrix3):Color;
	function sub(color:Color):Color;
	function multiply(color:Color):Color;
	function multiplyScalar(s:Float):Color;
	function lerp(color:Color, alpha:Float):Color;
	function lerpColors(color1:Color, color2:Color, alpha:Float):Color;
	function lerpHSL(color:Color, alpha:Float):Color;
	function equals(color:Color):Bool;
	/**
		Sets this color's red, green and blue value from the provided array or array-like.
	**/
	function fromArray(array:ts.AnyOf2<Array<Float>, js.lib.ArrayLike<Float>>, ?offset:Float):Color;
	/**
		Returns an array [red, green, blue], or copies red, green and blue into the provided array.
		
		Copies red, green and blue into the provided array-like.
	**/
	@:overload(function(xyz:js.lib.ArrayLike<Float>, ?offset:Float):js.lib.ArrayLike<Float> { })
	function toArray(?array:Array<Float>, ?offset:Float):Array<Float>;
	/**
		This method defines the serialization result of Color.
	**/
	function toJSON():Float;
	function fromBufferAttribute(attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>, index:Float):Color;
	static var prototype : Color;
	/**
		List of X11 color names.
	**/
	static var NAMES : {
		var aliceblue : Int;
		var antiquewhite : Int;
		var aqua : Int;
		var aquamarine : Int;
		var azure : Int;
		var beige : Int;
		var bisque : Int;
		var black : Int;
		var blanchedalmond : Int;
		var blue : Int;
		var blueviolet : Int;
		var brown : Int;
		var burlywood : Int;
		var cadetblue : Int;
		var chartreuse : Int;
		var chocolate : Int;
		var coral : Int;
		var cornflowerblue : Int;
		var cornsilk : Int;
		var crimson : Int;
		var cyan : Int;
		var darkblue : Int;
		var darkcyan : Int;
		var darkgoldenrod : Int;
		var darkgray : Int;
		var darkgreen : Int;
		var darkgrey : Int;
		var darkkhaki : Int;
		var darkmagenta : Int;
		var darkolivegreen : Int;
		var darkorange : Int;
		var darkorchid : Int;
		var darkred : Int;
		var darksalmon : Int;
		var darkseagreen : Int;
		var darkslateblue : Int;
		var darkslategray : Int;
		var darkslategrey : Int;
		var darkturquoise : Int;
		var darkviolet : Int;
		var deeppink : Int;
		var deepskyblue : Int;
		var dimgray : Int;
		var dimgrey : Int;
		var dodgerblue : Int;
		var firebrick : Int;
		var floralwhite : Int;
		var forestgreen : Int;
		var fuchsia : Int;
		var gainsboro : Int;
		var ghostwhite : Int;
		var gold : Int;
		var goldenrod : Int;
		var gray : Int;
		var green : Int;
		var greenyellow : Int;
		var grey : Int;
		var honeydew : Int;
		var hotpink : Int;
		var indianred : Int;
		var indigo : Int;
		var ivory : Int;
		var khaki : Int;
		var lavender : Int;
		var lavenderblush : Int;
		var lawngreen : Int;
		var lemonchiffon : Int;
		var lightblue : Int;
		var lightcoral : Int;
		var lightcyan : Int;
		var lightgoldenrodyellow : Int;
		var lightgray : Int;
		var lightgreen : Int;
		var lightgrey : Int;
		var lightpink : Int;
		var lightsalmon : Int;
		var lightseagreen : Int;
		var lightskyblue : Int;
		var lightslategray : Int;
		var lightslategrey : Int;
		var lightsteelblue : Int;
		var lightyellow : Int;
		var lime : Int;
		var limegreen : Int;
		var linen : Int;
		var magenta : Int;
		var maroon : Int;
		var mediumaquamarine : Int;
		var mediumblue : Int;
		var mediumorchid : Int;
		var mediumpurple : Int;
		var mediumseagreen : Int;
		var mediumslateblue : Int;
		var mediumspringgreen : Int;
		var mediumturquoise : Int;
		var mediumvioletred : Int;
		var midnightblue : Int;
		var mintcream : Int;
		var mistyrose : Int;
		var moccasin : Int;
		var navajowhite : Int;
		var navy : Int;
		var oldlace : Int;
		var olive : Int;
		var olivedrab : Int;
		var orange : Int;
		var orangered : Int;
		var orchid : Int;
		var palegoldenrod : Int;
		var palegreen : Int;
		var paleturquoise : Int;
		var palevioletred : Int;
		var papayawhip : Int;
		var peachpuff : Int;
		var peru : Int;
		var pink : Int;
		var plum : Int;
		var powderblue : Int;
		var purple : Int;
		var rebeccapurple : Int;
		var red : Int;
		var rosybrown : Int;
		var royalblue : Int;
		var saddlebrown : Int;
		var salmon : Int;
		var sandybrown : Int;
		var seagreen : Int;
		var seashell : Int;
		var sienna : Int;
		var silver : Int;
		var skyblue : Int;
		var slateblue : Int;
		var slategray : Int;
		var slategrey : Int;
		var snow : Int;
		var springgreen : Int;
		var steelblue : Int;
		var tan : Int;
		var teal : Int;
		var thistle : Int;
		var tomato : Int;
		var turquoise : Int;
		var violet : Int;
		var wheat : Int;
		var white : Int;
		var whitesmoke : Int;
		var yellow : Int;
		var yellowgreen : Int;
	};
}