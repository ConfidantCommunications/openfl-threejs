package three;

typedef LODJSON = {
	var object : LODJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};