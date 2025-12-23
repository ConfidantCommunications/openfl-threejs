package three;

typedef SpotLightJSON = {
	var distance : Float;
	var angle : Float;
	var decay : Float;
	var penumbra : Float;
	var target : String;
	@:optional
	var map : String;
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