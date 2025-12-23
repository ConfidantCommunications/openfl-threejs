package three;

typedef IColorManagement = {
	var enabled : Bool;
	var workingColorSpace : String;
	var spaces : haxe.DynamicAccess<ColorSpaceDefinition>;
	dynamic function convert(color:Color, sourceColorSpace:String, targetColorSpace:String):Color;
	dynamic function workingToColorSpace(color:Color, targetColorSpace:String):Color;
	dynamic function colorSpaceToWorking(color:Color, sourceColorSpace:String):Color;
	dynamic function getPrimaries(colorSpace:String):ts.Tuple6<Float, Float, Float, Float, Float, Float>;
	dynamic function getTransfer(colorSpace:String):ColorSpaceTransfer;
	dynamic function getLuminanceCoefficients(target:Vector3, ?colorSpace:String):ts.Tuple3<Float, Float, Float>;
	dynamic function define(colorSpaces:haxe.DynamicAccess<ColorSpaceDefinition>):Void;
	dynamic function fromWorkingColorSpace(color:Color, targetColorSpace:String):Color;
	dynamic function toWorkingColorSpace(color:Color, sourceColorSpace:String):Color;
};