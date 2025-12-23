package three;

/**
	Scenes allow you to set up what and where is to be rendered by three.js
**/
// @:native("THREE.Scene") 
@:native("THREE.Scene")
extern class Scene<TEventMap> extends Object3D<TEventMap> {
	/**
		Create a new {@link Scene} object.
	**/
	function new();
	/**
		Read-only flag to check if a given object is of type {@link Scene}.
	**/
	final isScene : Bool;
	/**
		A {@link Fog | fog} instance defining the type of fog that affects everything rendered in the scene.
	**/
	var fog : Null<ts.AnyOf2<Fog, FogExp2>>;
	/**
		Sets the blurriness of the background. Only influences environment maps assigned to {@link THREE.Scene.background | Scene.background}.
	**/
	var backgroundBlurriness : Float;
	/**
		Attenuates the color of the background. Only applies to background textures.
	**/
	var backgroundIntensity : Float;
	/**
		Forces everything in the {@link Scene} to be rendered with the defined material.
	**/
	var overrideMaterial : Null<Material>;
	/**
		Defines the background of the scene.
	**/
	var background : Null<ts.AnyOf3<Texture<Any>, Color, CubeTexture<Any>>>;
	/**
		The rotation of the background in radians. Only influences environment maps assigned to {@link .background}.
		Default is `(0,0,0)`.
	**/
	var backgroundRotation : Euler;
	/**
		Sets the environment map for all physical materials in the scene.
		However, it's not possible to overwrite an existing texture assigned to {@link THREE.MeshStandardMaterial.envMap | MeshStandardMaterial.envMap}.
	**/
	var environment : Null<Texture<Any>>;
	/**
		Attenuates the color of the environment. Only influences environment maps assigned to {@link Scene.environment}.
	**/
	var environmentIntensity : Float;
	/**
		The rotation of the environment map in radians. Only influences physical materials in the scene when
		{@link .environment} is used. Default is `(0,0,0)`.
	**/
	var environmentRotation : Euler;
	/**
		Convert the {@link Scene} to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):SceneJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Scene<TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Scene<TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Scene<TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Scene<TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Scene<TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Scene<TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Scene<TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Scene<TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Scene<TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Scene<TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Scene<TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Scene<TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Scene<TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():Scene<TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Scene<TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Scene<TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):Scene<TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Scene<TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Scene<TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Scene<TEventMap>>):Void;
	static var prototype : Scene<Dynamic>;
}