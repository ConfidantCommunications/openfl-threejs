package three;

@:native("THREE.SourceJSON") extern class SourceJSON {
	function new();
	var uuid : String;
	var url : ts.AnyOf3<String, {
		var data : Array<Float>;
		var width : Float;
		var height : Float;
		var type : String;
	}, Array<SerializedImage>>;
	static var prototype : SourceJSON;
}