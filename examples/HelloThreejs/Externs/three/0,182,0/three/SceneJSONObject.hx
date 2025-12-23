package three;

typedef SceneJSONObject = {
	@:optional
	var fog : ts.AnyOf2<FogJSON, FogExp2JSON>;
	@:optional
	var backgroundBlurriness : Float;
	@:optional
	var backgroundIntensity : Float;
	var backgroundRotation : EulerTuple;
	@:optional
	var environmentIntensity : Float;
	var environmentRotation : EulerTuple;
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