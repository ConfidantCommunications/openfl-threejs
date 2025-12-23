package three;

/**
	A light that gets emitted in a specific direction
**/
@:native("THREE.DirectionalLight") extern class DirectionalLight extends Light<three.src.lights.directionallightshadow.DirectionalLightShadow> {
	/**
		Creates a new {@link DirectionalLight}.
	**/
	function new(?color:ColorRepresentation, ?intensity:Float);
	/**
		Read-only flag to check if a given object is of type {@link DirectionalLight}.
	**/
	final isDirectionalLight : Bool;
	/**
		The {@link DirectionalLight} points from its {@link DirectionalLight.position | position} to target.position.
	**/
	var target : Object3D<Object3DEventMap>;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):DirectionalLightJSON;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:DirectionalLight, ?recursive:Bool):DirectionalLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):DirectionalLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):DirectionalLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):DirectionalLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):DirectionalLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):DirectionalLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):DirectionalLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):DirectionalLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):DirectionalLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):DirectionalLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):DirectionalLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):DirectionalLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):DirectionalLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():DirectionalLight;
	/**
		Removes all child objects.
	**/
	function clear():DirectionalLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):DirectionalLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):DirectionalLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, DirectionalLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, DirectionalLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, DirectionalLight>):Void;
	static var prototype : DirectionalLight;
}