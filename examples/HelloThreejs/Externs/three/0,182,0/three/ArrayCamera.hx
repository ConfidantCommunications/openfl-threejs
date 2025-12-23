package three;

/**
	{@link ArrayCamera} can be used in order to efficiently render a scene with a predefined set of cameras
**/
@:native("THREE.ArrayCamera") extern class ArrayCamera extends PerspectiveCamera {
	/**
		An array of cameras.
	**/
	function new(?cameras:Array<PerspectiveCamera>);
	/**
		Read-only flag to check if a given object is of type {@link ArrayCamera}.
	**/
	final isArrayCamera : Bool;
	/**
		Whether this camera is used with multiview rendering or not.
	**/
	var isMultiViewCamera : Bool;
	/**
		An array of cameras.
	**/
	var cameras : Array<PerspectiveCamera>;
	var index : Float;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):ArrayCamera;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):ArrayCamera;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):ArrayCamera;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):ArrayCamera;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):ArrayCamera;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):ArrayCamera;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):ArrayCamera;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):ArrayCamera;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):ArrayCamera;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):ArrayCamera;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):ArrayCamera;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):ArrayCamera;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():ArrayCamera;
	/**
		Removes all child objects.
	**/
	function clear():ArrayCamera;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):ArrayCamera;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):ArrayCamera;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):ArrayCamera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrayCamera>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrayCamera>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrayCamera>):Void;
	static var prototype : ArrayCamera;
}