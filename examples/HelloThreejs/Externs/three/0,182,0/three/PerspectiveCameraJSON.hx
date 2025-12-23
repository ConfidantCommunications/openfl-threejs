package three;

typedef PerspectiveCameraJSON = {
	var object : PerspectiveCameraJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};