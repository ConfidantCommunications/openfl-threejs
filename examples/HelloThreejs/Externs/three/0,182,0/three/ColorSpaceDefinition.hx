package three;

typedef ColorSpaceDefinition = {
	var primaries : ts.Tuple6<Float, Float, Float, Float, Float, Float>;
	var whitePoint : ts.Tuple2<Float, Float>;
	var transfer : ColorSpaceTransfer;
	var toXYZ : Matrix3;
	var fromXYZ : Matrix3;
	var luminanceCoefficients : ts.Tuple3<Float, Float, Float>;
	@:optional
	var workingColorSpaceConfig : {
		var unpackColorSpace : String;
	};
	@:optional
	var outputColorSpaceConfig : {
		var drawingBufferColorSpace : String;
		@:optional
		var toneMappingNode : String;
	};
};