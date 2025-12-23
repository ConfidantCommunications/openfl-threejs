package three;

typedef MixerControlInterpolant = {
	var __cacheIndex : Float;
	function interpolate_(i1:Float, t0:Float, t:Float, t1:Float):Dynamic;
	var parameterPositions : Dynamic;
	var sampleValues : Dynamic;
	var valueSize : Float;
	var resultBuffer : Dynamic;
	function evaluate(time:Float):Dynamic;
};