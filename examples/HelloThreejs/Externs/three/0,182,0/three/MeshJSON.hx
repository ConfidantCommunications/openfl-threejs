package three;

typedef MeshJSON = {
	var object : MeshJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};