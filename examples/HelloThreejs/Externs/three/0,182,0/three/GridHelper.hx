package three;

/**
	The {@link GridHelper} is an object to define grids
**/
@:native("THREE.GridHelper") extern class GridHelper extends LineSegments<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, LineBasicMaterial, Object3DEventMap> {
	/**
		Creates a new {@link GridHelper} of size 'size' and divided into 'divisions' segments per side
	**/
	function new(?size:Float, ?divisions:Float, ?color1:ColorRepresentation, ?color2:ColorRepresentation);
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
	**/
	function computeLineDistances():GridHelper;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):GridHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):GridHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):GridHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):GridHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):GridHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):GridHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):GridHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):GridHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):GridHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):GridHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):GridHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):GridHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():GridHelper;
	/**
		Removes all child objects.
	**/
	function clear():GridHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):GridHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):GridHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):GridHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, GridHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, GridHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, GridHelper>):Void;
	static var prototype : GridHelper;
}