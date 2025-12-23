package three;

typedef CurvePathJSON = {
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