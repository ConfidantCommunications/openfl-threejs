package three;

/**
	Dual {@link PerspectiveCamera | PerspectiveCamera}s used for effects such as
	{@link https://en.wikipedia.org/wiki/Anaglyph_3D | 3D Anaglyph} or
	{@link https://en.wikipedia.org/wiki/parallax_barrier | Parallax Barrier}.
**/
@:native("THREE.StereoCamera") extern class StereoCamera extends Camera {
	function new();
	var aspect : Float;
	var eyeSep : Float;
	/**
		The Left camera.
		A {@link PerspectiveCamera } added to {@link THREE.PerspectiveCamera.layers | layer 1}
	**/
	var cameraL : PerspectiveCamera;
	/**
		The Right camera.
		A {@link PerspectiveCamera } added to {@link THREE.PerspectiveCamera.layers | layer 2}
	**/
	var cameraR : PerspectiveCamera;
	/**
		Update the stereo cameras based on the camera passed in.
	**/
	function update(camera:PerspectiveCamera):Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):StereoCamera;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):StereoCamera;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):StereoCamera;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):StereoCamera;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):StereoCamera;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):StereoCamera;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):StereoCamera;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):StereoCamera;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):StereoCamera;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):StereoCamera;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):StereoCamera;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):StereoCamera;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():StereoCamera;
	/**
		Removes all child objects.
	**/
	function clear():StereoCamera;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):StereoCamera;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):StereoCamera;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):StereoCamera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, StereoCamera>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, StereoCamera>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, StereoCamera>):Void;
	static var prototype : StereoCamera;
}