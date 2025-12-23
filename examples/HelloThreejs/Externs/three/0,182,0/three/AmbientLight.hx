package three;

/**
	This light globally illuminates all objects in the scene equally.
**/
@:native("THREE.AmbientLight") extern class AmbientLight extends Light<Null<Any>> {
	/**
		Creates a new {@link AmbientLight}.
	**/
	function new(?color:ColorRepresentation, ?intensity:Float);
	/**
		Read-only flag to check if a given object is of type {@link AmbientLight}.
	**/
	final isAmbientLight : Bool;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:AmbientLight, ?recursive:Bool):AmbientLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):AmbientLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AmbientLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AmbientLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):AmbientLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):AmbientLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):AmbientLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):AmbientLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):AmbientLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):AmbientLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):AmbientLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):AmbientLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):AmbientLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():AmbientLight;
	/**
		Removes all child objects.
	**/
	function clear():AmbientLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):AmbientLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):AmbientLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, AmbientLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, AmbientLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, AmbientLight>):Void;
	static var prototype : AmbientLight;
}