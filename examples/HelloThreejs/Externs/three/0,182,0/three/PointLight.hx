package three;

/**
	A light that gets emitted from a single point in all directions
**/
@:native("THREE.PointLight") extern class PointLight extends Light<three.src.lights.pointlightshadow.PointLightShadow> {
	/**
		Creates a new PointLight.
	**/
	function new(?color:ColorRepresentation, ?intensity:Float, ?distance:Float, ?decay:Float);
	/**
		Read-only flag to check if a given object is of type {@link PointLight}.
	**/
	final isPointLight : Bool;
	/**
		When **Default mode** — When distance is zero, light does not attenuate. When distance is non-zero,
		light will attenuate linearly from maximum intensity at the light's position down to zero at this distance from the light.
		
		When **{@link WebGLRenderer.useLegacyLights | legacy lighting mode} is disabled** — When distance is zero,
		light will attenuate according to inverse-square law to infinite distance.
		When distance is non-zero, light will attenuate according to inverse-square law until near the distance cutoff,
		where it will then attenuate quickly and smoothly to 0. Inherently, cutoffs are not physically correct.
	**/
	var distance : Float;
	/**
		The amount the light dims along the distance of the light.
		In context of physically-correct rendering the default value should not be changed.
	**/
	var decay : Float;
	/**
		The light's power.
		When **{@link WebGLRenderer.useLegacyLights | legacy lighting mode} is disabled** — power is the luminous power of the light measured in lumens (lm).
	**/
	var power : Float;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):PointLightJSON;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:PointLight, ?recursive:Bool):PointLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PointLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PointLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PointLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PointLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PointLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PointLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PointLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PointLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PointLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PointLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PointLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PointLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PointLight;
	/**
		Removes all child objects.
	**/
	function clear():PointLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PointLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PointLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLight>):Void;
	static var prototype : PointLight;
}