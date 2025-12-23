package three;

/**
	An 3D arrow object for visualizing directions.
**/
@:native("THREE.ArrowHelper") extern class ArrowHelper extends Object3D<Object3DEventMap> {
	/**
		Create a new instance of {@link ArrowHelper}
	**/
	function new(?dir:Vector3, ?origin:Vector3, ?length:Float, ?color:ColorRepresentation, ?headLength:Float, ?headWidth:Float);
	/**
		A Read-only _string_ to check if `this` object type.
		
		Copy the given object into this object
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		Contains the line part of the arrowHelper.
	**/
	var line : Line<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap>;
	/**
		Contains the cone part of the arrowHelper.
	**/
	var cone : Mesh<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap>;
	/**
		Sets the color of the arrowHelper.
	**/
	function setColor(color:ColorRepresentation):Void;
	function setDirection(dir:Vector3):Void;
	/**
		Sets the length of the arrowhelper.
	**/
	function setLength(length:Float, ?headLength:Float, ?headWidth:Float):Void;
	/**
		Copies the given object into this object.
	**/
	function copy(source:ArrowHelper):ArrowHelper;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):ArrowHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):ArrowHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):ArrowHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):ArrowHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):ArrowHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):ArrowHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):ArrowHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):ArrowHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):ArrowHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):ArrowHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):ArrowHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):ArrowHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():ArrowHelper;
	/**
		Removes all child objects.
	**/
	function clear():ArrowHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):ArrowHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):ArrowHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrowHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrowHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ArrowHelper>):Void;
	static var prototype : ArrowHelper;
}