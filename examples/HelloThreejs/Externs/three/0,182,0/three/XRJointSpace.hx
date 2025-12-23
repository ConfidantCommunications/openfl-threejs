package three;

@:native("THREE.XRJointSpace") extern class XRJointSpace extends Group<Object3DEventMap> {
	final jointRadius : Null<Float>;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):XRJointSpace;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):XRJointSpace;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):XRJointSpace;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):XRJointSpace;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):XRJointSpace;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):XRJointSpace;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):XRJointSpace;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):XRJointSpace;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):XRJointSpace;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):XRJointSpace;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRJointSpace;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRJointSpace;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():XRJointSpace;
	/**
		Removes all child objects.
	**/
	function clear():XRJointSpace;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):XRJointSpace;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):XRJointSpace;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):XRJointSpace;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRJointSpace>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRJointSpace>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRJointSpace>):Void;
	static var prototype : XRJointSpace;
}