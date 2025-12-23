package three;

typedef OrthographicCameraJSON = {
	var object : OrthographicCameraJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};