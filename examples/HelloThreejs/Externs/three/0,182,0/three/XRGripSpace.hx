package three;

@:native("THREE.XRGripSpace") extern class XRGripSpace extends Group<WebXRSpaceEventMap> {
	var hasLinearVelocity : Bool;
	final linearVelocity : Vector3;
	var hasAngularVelocity : Bool;
	final angularVelocity : Vector3;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):XRGripSpace;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):XRGripSpace;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):XRGripSpace;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):XRGripSpace;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):XRGripSpace;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):XRGripSpace;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):XRGripSpace;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):XRGripSpace;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):XRGripSpace;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):XRGripSpace;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRGripSpace;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRGripSpace;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():XRGripSpace;
	/**
		Removes all child objects.
	**/
	function clear():XRGripSpace;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):XRGripSpace;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):XRGripSpace;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):XRGripSpace;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRGripSpace>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRGripSpace>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRGripSpace>):Void;
	static var prototype : XRGripSpace;
}