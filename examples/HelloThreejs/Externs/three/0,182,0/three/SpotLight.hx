package three;

/**
	This light gets emitted from a single point in one direction, along a cone that increases in size the further from the light it gets.
**/
@:native("THREE.SpotLight") extern class SpotLight extends Light<three.src.lights.spotlightshadow.SpotLightShadow> {
	/**
		Creates a new SpotLight.
	**/
	function new(?color:ColorRepresentation, ?intensity:Float, ?distance:Float, ?angle:Float, ?penumbra:Float, ?decay:Float);
	/**
		Read-only flag to check if a given object is of type {@link SpotLight}.
	**/
	final isSpotLight : Bool;
	/**
		The {@link SpotLight} points from its {@link SpotLight.position | position} to target.position.
	**/
	var target : Object3D<Object3DEventMap>;
	/**
		When **Default mode** — When distance is zero, light does not attenuate. When distance is non-zero,
		light will attenuate linearly from maximum intensity at the light's position down to zero at this distance from the light.
		
		When **{@link WebGLRenderer.useLegacyLights | legacy lighting mode} is disabled** — When distance is zero,
		light will attenuate according to inverse-square law to infinite distance.
		When distance is non-zero, light will attenuate according to inverse-square law until near the distance cutoff,
		where it will then attenuate quickly and smoothly to `0`. Inherently, cutoffs are not physically correct.
	**/
	var distance : Float;
	/**
		Maximum extent of the spotlight, in radians, from its direction.
	**/
	var angle : Float;
	/**
		The amount the light dims along the distance of the light.
		In context of physically-correct rendering the default value should not be changed.
	**/
	var decay : Float;
	/**
		The light's power.
	**/
	var power : Float;
	/**
		Percent of the {@link SpotLight} cone that is attenuated due to penumbra.
	**/
	var penumbra : Float;
	/**
		A {@link THREE.Texture | Texture} used to modulate the color of the light.
		The spot light color is mixed with the _RGB_ value of this texture, with a ratio corresponding to its alpha value.
		The cookie-like masking effect is reproduced using pixel values (0, 0, 0, 1-cookie_value).
	**/
	var map : Null<Texture<Any>>;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):SpotLightJSON;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:SpotLight, ?recursive:Bool):SpotLight;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):SpotLight;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SpotLight;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SpotLight;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):SpotLight;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):SpotLight;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):SpotLight;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):SpotLight;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):SpotLight;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):SpotLight;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):SpotLight;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SpotLight;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SpotLight;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():SpotLight;
	/**
		Removes all child objects.
	**/
	function clear():SpotLight;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):SpotLight;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):SpotLight;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLight>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLight>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLight>):Void;
	static var prototype : SpotLight;
}