package three;

typedef BufferGeometryJSON = {
	@:optional
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var uuid : String;
	var type : String;
	@:optional
	var name : String;
	@:optional
	var userData : haxe.DynamicAccess<Any>;
	@:optional
	var data : {
		var attributes : haxe.DynamicAccess<BufferAttributeJSON>;
		@:optional
		var index : {
			var type : String;
			var array : Array<Float>;
		};
		@:optional
		var morphAttributes : haxe.DynamicAccess<Array<BufferAttributeJSON>>;
		@:optional
		var morphTargetsRelative : Bool;
		@:optional
		var groups : Array<GeometryGroup>;
		@:optional
		var boundingSphere : {
			var center : Vector3Tuple;
			var radius : Float;
		};
	};
};