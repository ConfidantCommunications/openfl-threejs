package three;

@:native("THREE.WebGLClipping") extern class WebGLClipping {
	function new(properties:WebGLProperties);
	var uniform : {
		var value : Dynamic;
		var needsUpdate : Bool;
	};
	var numPlanes : Float;
	var numIntersection : Float;
	function init(planes:Array<Dynamic>, enableLocalClipping:Bool):Bool;
	function beginShadows():Void;
	function endShadows():Void;
	function setGlobalState(planes:Array<Plane>, camera:Camera):Void;
	function setState(material:Material, camera:Camera, useCache:Bool):Void;
	static var prototype : WebGLClipping;
}