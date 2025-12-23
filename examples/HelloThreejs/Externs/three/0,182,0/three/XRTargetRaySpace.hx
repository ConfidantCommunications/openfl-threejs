package three;

@:native("THREE.XRTargetRaySpace") extern class XRTargetRaySpace extends Group<WebXRSpaceEventMap> {
	var hasLinearVelocity : Bool;
	final linearVelocity : Vector3;
	var hasAngularVelocity : Bool;
	final angularVelocity : Vector3;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):XRTargetRaySpace;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):XRTargetRaySpace;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):XRTargetRaySpace;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):XRTargetRaySpace;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):XRTargetRaySpace;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):XRTargetRaySpace;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):XRTargetRaySpace;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):XRTargetRaySpace;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):XRTargetRaySpace;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):XRTargetRaySpace;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRTargetRaySpace;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRTargetRaySpace;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():XRTargetRaySpace;
	/**
		Removes all child objects.
	**/
	function clear():XRTargetRaySpace;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):XRTargetRaySpace;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):XRTargetRaySpace;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):XRTargetRaySpace;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRTargetRaySpace>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRTargetRaySpace>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRTargetRaySpace>):Void;
	static var prototype : XRTargetRaySpace;
}