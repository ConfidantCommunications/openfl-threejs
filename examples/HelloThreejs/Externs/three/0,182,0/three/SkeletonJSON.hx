package three;

typedef SkeletonJSON = {
	var metadata : {
		var version : Float;
		var type : String;
		var generator : String;
	};
	var bones : Array<String>;
	var boneInverses : Array<Matrix4Tuple>;
	var uuid : String;
};