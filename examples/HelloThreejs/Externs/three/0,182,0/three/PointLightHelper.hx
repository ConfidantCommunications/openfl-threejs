package three;

/**
	This displays a helper object consisting of a spherical {@link THREE.Mesh | Mesh} for visualizing a {@link THREE.PointLight | PointLight}.
**/
@:native("THREE.PointLightHelper") extern class PointLightHelper extends Object3D<Object3DEventMap> {
	/**
		Create a new instance of {@link PointLightHelper}
	**/
	function new(light:PointLight, ?sphereSize:Float, ?color:ColorRepresentation);
	/**
		A Read-only _string_ to check if `this` object type.
		
		Is set to `false`, as the helper is using the {@link THREE.PointLight.matrixWorld | light.matrixWorld}.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		The {@link THREE.PointLight | PointLight} that is being visualized.
	**/
	var light : PointLight;
	/**
		The color parameter passed in the constructor.
	**/
	var color : Null<ColorRepresentation>;
	/**
		Updates the helper to match the position of the {@link THREE..light | .light}.
	**/
	function update():Void;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PointLightHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PointLightHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PointLightHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PointLightHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PointLightHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PointLightHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PointLightHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PointLightHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PointLightHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PointLightHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PointLightHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PointLightHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PointLightHelper;
	/**
		Removes all child objects.
	**/
	function clear():PointLightHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PointLightHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PointLightHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):PointLightHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLightHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLightHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointLightHelper>):Void;
	static var prototype : PointLightHelper;
}