package three;

/**
	{@link RectAreaLight} emits light uniformly across the face a rectangular plane
**/
@:native("THREE.RectAreaLight") extern class RectAreaLight extends Light<Null<Any>> {
	/**
		Creates a new {@link RectAreaLight}.
	**/
	function new(?color:ColorRepresentation, ?intensity:Float, ?width:Float, ?height:Float);
	/**
		Read-only flag to check if a given object is of type {@link RectAreaLight}.
	**/
	final isRectAreaLight : Bool;
	/**
		The width of the light.
	**/
	var width : Float;
	/**
		The height of the light.
	**/
	var height : Float;
	/**
		The light's power.
	**/
	var power : Float;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:RectAreaLight, ?recursive:Bool):RectAreaLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):RectAreaLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):RectAreaLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):RectAreaLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):RectAreaLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):RectAreaLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):RectAreaLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):RectAreaLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):RectAreaLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):RectAreaLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):RectAreaLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):RectAreaLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):RectAreaLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():RectAreaLight;
	/**
		Removes all child objects.
	**/
	function clear():RectAreaLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):RectAreaLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):RectAreaLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, RectAreaLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, RectAreaLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, RectAreaLight>):Void;
	static var prototype : RectAreaLight;
}