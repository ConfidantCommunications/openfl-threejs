package three;

@:native("THREE.DataUtils") extern class DataUtils {
	function new();
	static var prototype : DataUtils;
	static function toHalfFloat(val:Float):Float;
	static function fromHalfFloat(val:Float):Float;
}