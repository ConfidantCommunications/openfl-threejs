package three;

typedef PathJSON = {
	var currentPoint : Vector2Tuple;
	var autoClose : Bool;
	var curves : Array<CurveJSON>;
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var arcLengthDivisions : Float;
	var type : String;
};