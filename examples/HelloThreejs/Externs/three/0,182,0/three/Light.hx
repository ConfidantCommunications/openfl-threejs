package three;

/**
	Abstract base class for lights.
**/
@:native("THREE.Light") extern class Light<TShadowSupport> extends Object3D<LightEventMap> {
	/**
		Creates a new {@link Light}
	**/
	function new(?color:ColorRepresentation, ?intensity:Float);
	/**
		Read-only flag to check if a given object is of type {@link HemisphereLight}.
	**/
	final isLight : Bool;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		Color of the light. \
	**/
	var color : Color;
	/**
		The light's intensity, or strength.
		The units of intensity depend on the type of light.
	**/
	var intensity : Float;
	/**
		A {@link THREE.LightShadow | LightShadow} used to calculate shadows for this light.
	**/
	var shadow : TShadowSupport;
	/**
		Copies value of all the properties from the {@link Light | source} to this instance.
	**/
	function copy(source:Light<TShadowSupport>, ?recursive:Bool):Light<TShadowSupport>;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):LightJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Light<TShadowSupport>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Light<TShadowSupport>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Light<TShadowSupport>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Light<TShadowSupport>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Light<TShadowSupport>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Light<TShadowSupport>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Light<TShadowSupport>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Light<TShadowSupport>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Light<TShadowSupport>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Light<TShadowSupport>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Light<TShadowSupport>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Light<TShadowSupport>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Light<TShadowSupport>;
	/**
		Removes all child objects.
	**/
	function clear():Light<TShadowSupport>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Light<TShadowSupport>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Light<TShadowSupport>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Light<TShadowSupport>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Light<TShadowSupport>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Light<TShadowSupport>>):Void;
	static var prototype : Light<Dynamic>;
}