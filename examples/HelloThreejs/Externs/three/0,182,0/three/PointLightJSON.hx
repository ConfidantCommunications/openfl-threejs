package three;

typedef PointLightJSON = {
	var distance : Float;
	var decay : Float;
	var shadow : three.src.lights.lightshadow.LightShadowJSON;
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