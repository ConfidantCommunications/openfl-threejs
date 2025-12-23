package three;

/**
	This displays a cone shaped helper object for a {@link THREE.SpotLight | SpotLight}.
**/
@:native("THREE.SpotLightHelper") extern class SpotLightHelper extends Object3D<Object3DEventMap> {
	/**
		Create a new instance of {@link SpotLightHelper}
	**/
	function new(light:Light<Null<three.src.lights.lightshadow.LightShadow<Camera>>>, ?color:ColorRepresentation);
	/**
		A Read-only _string_ to check if `this` object type.
		
		Is set to `false`, as the helper is using the {@link THREE.Light.matrixWorld | light.matrixWorld}.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		{@link THREE.LineSegments | LineSegments} used to visualize the light.
	**/
	var cone : LineSegments<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap>;
	/**
		Reference to the {@link THREE.SpotLight | SpotLight} being visualized.
	**/
	var light : Light<Null<three.src.lights.lightshadow.LightShadow<Camera>>>;
	/**
		The color parameter passed in the constructor.
		If this is changed, the helper's color will update the next time {@link SpotLightHelper.update | update} is called.
	**/
	var color : Null<ColorRepresentation>;
	/**
		Updates the light helper.
	**/
	function update():Void;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):SpotLightHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SpotLightHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SpotLightHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):SpotLightHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):SpotLightHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):SpotLightHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):SpotLightHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):SpotLightHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):SpotLightHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):SpotLightHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SpotLightHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SpotLightHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():SpotLightHelper;
	/**
		Removes all child objects.
	**/
	function clear():SpotLightHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):SpotLightHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):SpotLightHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):SpotLightHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLightHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLightHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpotLightHelper>):Void;
	static var prototype : SpotLightHelper;
}