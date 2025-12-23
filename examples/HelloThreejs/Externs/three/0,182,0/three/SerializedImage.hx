package three;

typedef SerializedImage = ts.AnyOf2<String, {
	var data : Array<Float>;
	var width : Float;
	var height : Float;
	var type : String;
}>;