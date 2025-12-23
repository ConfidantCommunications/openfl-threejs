package three;

typedef OrthographicCameraJSONObject = {
	var zoom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
	var bottom : Float;
	var near : Float;
	var far : Float;
	@:optional
	var view : {
		var enabled : Bool;
		var fullWidth : Float;
		var fullHeight : Float;
		var offsetX : Float;
		var offsetY : Float;
		var width : Float;
		var height : Float;
	};
	var uuid : String;
	var type : String;
	@:optional
	var name : String;
	@:optional
	var castShadow : Bool;
	@:optional
	var receiveShadow : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var frustumCulled : Bool;
	@:optional
	var renderOrder : Float;
	@:optional
	var userData : haxe.DynamicAccess<Any>;
	var layers : Float;
	var matrix : Matrix4Tuple;
	var up : Vector3Tuple;
	@:optional
	var matrixAutoUpdate : Bool;
	@:optional
	var material : ts.AnyOf2<String, Array<String>>;
	@:optional
	var children : Array<String>;
	@:optional
	var animations : Array<String>;
};