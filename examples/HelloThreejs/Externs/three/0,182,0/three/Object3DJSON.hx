package three;

typedef Object3DJSON = {
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var object : Object3DJSONObject;
};