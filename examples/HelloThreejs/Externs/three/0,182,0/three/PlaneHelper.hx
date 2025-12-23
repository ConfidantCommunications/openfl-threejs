package three;

/**
	Helper object to visualize a {@link THREE.Plane | Plane}.
**/
@:native("THREE.PlaneHelper") extern class PlaneHelper extends LineSegments<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap> {
	/**
		Creates a new wireframe representation of the passed plane.
	**/
	function new(plane:Plane, ?size:Float, ?hex:Float);
	/**
		The {@link Plane | plane} being visualized.
	**/
	var plane : Plane;
	/**
		The side lengths of plane helper.
	**/
	var size : Float;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
	**/
	function computeLineDistances():PlaneHelper;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PlaneHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PlaneHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PlaneHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PlaneHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PlaneHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PlaneHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PlaneHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PlaneHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PlaneHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PlaneHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PlaneHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PlaneHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PlaneHelper;
	/**
		Removes all child objects.
	**/
	function clear():PlaneHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PlaneHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PlaneHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):PlaneHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PlaneHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PlaneHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PlaneHelper>):Void;
	static var prototype : PlaneHelper;
}