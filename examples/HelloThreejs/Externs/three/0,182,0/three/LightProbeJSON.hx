package three;

typedef LightProbeJSON = {
	var sh : Array<Float>;
	var color : Float;
	var intensity : Float;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var object : Object3DJSONObject;
};