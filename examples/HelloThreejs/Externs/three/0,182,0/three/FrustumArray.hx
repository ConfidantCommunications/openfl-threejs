package three;

@:native("THREE.FrustumArray") extern class FrustumArray {
	function new();
	var coordinateSystem : CoordinateSystem;
	function intersectsObject(object:Object3D<Object3DEventMap>, cameraArray:ArrayCamera):Bool;
	@:overload(function(sphere:Sphere, cameraArray:ArrayCamera):Bool { })
	function intersectsSprite(sprite:Sprite<Object3DEventMap>, cameraArray:ArrayCamera):Bool;
	function intersectsBox(box:Box3, cameraArray:ArrayCamera):Bool;
	function containsPoint(point:Vector3, cameraArray:ArrayCamera):Bool;
	function clone():FrustumArray;
	static var prototype : FrustumArray;
}