package three;

/**
	Light probes are an alternative way of adding light to a 3D scene.
**/
@:native("THREE.LightProbe") extern class LightProbe extends Light<Null<three.src.lights.lightshadow.LightShadow<Camera>>> {
	/**
		Creates a new LightProbe.
	**/
	function new(?sh:SphericalHarmonics3, ?intensity:Float);
	/**
		Read-only flag to check if a given object is of type {@link DirectionalLight}.
	**/
	final isLightProbe : Bool;
	/**
		A light probe uses spherical harmonics to encode lighting information.
	**/
	var sh : SphericalHarmonics3;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):LightProbeJSON;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:LightProbe, ?recursive:Bool):LightProbe;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):LightProbe;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LightProbe;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LightProbe;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):LightProbe;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):LightProbe;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):LightProbe;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):LightProbe;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):LightProbe;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):LightProbe;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):LightProbe;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LightProbe;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LightProbe;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():LightProbe;
	/**
		Removes all child objects.
	**/
	function clear():LightProbe;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):LightProbe;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):LightProbe;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, LightProbe>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, LightProbe>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, LightProbe>):Void;
	static var prototype : LightProbe;
}