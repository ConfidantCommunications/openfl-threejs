package three;

typedef SceneJSON = {
	var object : SceneJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};