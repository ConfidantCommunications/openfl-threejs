package three;

typedef KeyframeTrackJSON = {
	var name : String;
	var times : Array<Float>;
	var values : Array<Float>;
	@:optional
	var interpolation : InterpolationModes;
	var type : String;
};