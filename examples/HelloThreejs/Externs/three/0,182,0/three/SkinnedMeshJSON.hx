package three;

typedef SkinnedMeshJSON = {
	var object : SkinnedMeshJSONObject;
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
};