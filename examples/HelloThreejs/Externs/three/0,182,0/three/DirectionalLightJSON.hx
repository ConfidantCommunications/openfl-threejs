package three;

typedef DirectionalLightJSON = {
	var shadow : three.src.lights.lightshadow.LightShadowJSON;
	var target : String;
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