package three;

typedef ShaderMaterialUniformJSON = ts.AnyOf8<{
	var type : String;
	var value : String;
}, {
	var type : String;
	var value : Float;
}, {
	var type : String;
	var value : Vector2Tuple;
}, {
	var type : String;
	var value : Vector3Tuple;
}, {
	var type : String;
	var value : Vector4Tuple;
}, {
	var type : String;
	var value : Matrix3Tuple;
}, {
	var type : String;
	var value : Matrix4Tuple;
}, {
	var value : Any;
}>;