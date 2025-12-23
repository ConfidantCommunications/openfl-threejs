package three;

/**
	Creates a visual aid consisting of a spherical {@link THREE.Mesh | Mesh} for a {@link THREE.HemisphereLight | HemisphereLight}.
**/
@:native("THREE.HemisphereLightHelper") extern class HemisphereLightHelper extends Object3D<Object3DEventMap> {
	/**
		Create a new instance of {@link HemisphereLightHelper}
	**/
	function new(light:HemisphereLight, size:Float, ?color:ColorRepresentation);
	/**
		A Read-only _string_ to check if `this` object type.
		
		Is set to `false`, as the helper is using the {@link THREE.HemisphereLight.matrixWorld | light.matrixWorld}.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		Reference to the HemisphereLight being visualized.
	**/
	var light : HemisphereLight;
	var material : MeshBasicMaterial;
	/**
		The color parameter passed in the constructor.
	**/
	var color : Null<ColorRepresentation>;
	/**
		Updates the helper to match the position and direction of the {@link .light | HemisphereLight}.
	**/
	function update():Void;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):HemisphereLightHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):HemisphereLightHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):HemisphereLightHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):HemisphereLightHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):HemisphereLightHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):HemisphereLightHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):HemisphereLightHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):HemisphereLightHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):HemisphereLightHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):HemisphereLightHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):HemisphereLightHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):HemisphereLightHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():HemisphereLightHelper;
	/**
		Removes all child objects.
	**/
	function clear():HemisphereLightHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):HemisphereLightHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):HemisphereLightHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):HemisphereLightHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLightHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLightHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, HemisphereLightHelper>):Void;
	static var prototype : HemisphereLightHelper;
}