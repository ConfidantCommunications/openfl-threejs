package three;

/**
	A light source positioned directly above the scene, with color fading from the sky color to the ground color.
**/
@:native("THREE.HemisphereLight") extern class HemisphereLight extends Light<Null<Any>> {
	/**
		Creates a new {@link HemisphereLight}.
	**/
	function new(?skyColor:ColorRepresentation, ?groundColor:ColorRepresentation, ?intensity:Float);
	/**
		Read-only flag to check if a given object is of type {@link HemisphereLight}.
	**/
	final isHemisphereLight : Bool;
	/**
		The light's ground color, as passed in the constructor.
	**/
	var groundColor : Color;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):HemisphereLightJSON;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:HemisphereLight, ?recursive:Bool):HemisphereLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):HemisphereLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):HemisphereLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):HemisphereLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):HemisphereLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):HemisphereLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):HemisphereLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):HemisphereLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):HemisphereLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):HemisphereLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):HemisphereLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):HemisphereLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):HemisphereLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():HemisphereLight;
	/**
		Removes all child objects.
	**/
	function clear():HemisphereLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):HemisphereLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):HemisphereLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLight>):Void;
	static var prototype : HemisphereLight;
}