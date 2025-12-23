package three;

typedef BufferAttributeJSON = {
	var itemSize : Float;
	var type : String;
	var array : Array<Float>;
	var normalized : Bool;
	@:optional
	var name : String;
	@:optional
	var usage : Usage;
};