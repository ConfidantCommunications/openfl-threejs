package three;

/**
	Abstract base class for cameras
**/
@:native("THREE.Camera") extern class Camera extends Object3D<Object3DEventMap> {
	function new();
	/**
		Read-only flag to check if a given object is of type {@link Camera}.
	**/
	final isCamera : Bool;
	@:native("override")
	var override_ : Dynamic;
	/**
		This is the inverse of matrixWorld.
	**/
	var matrixWorldInverse : Matrix4;
	/**
		This is the matrix which contains the projection.
	**/
	var projectionMatrix : Matrix4;
	/**
		This is the inverse of projectionMatrix.
	**/
	var projectionMatrixInverse : Matrix4;
	var coordinateSystem : CoordinateSystem;
	@:optional
	var viewport : Vector4;
	/**
		The flag that indicates whether the camera uses a reversed depth buffer.
	**/
	final reversedDepth : Bool;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Camera;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Camera;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Camera;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Camera;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Camera;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Camera;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Camera;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Camera;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Camera;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Camera;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Camera;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Camera;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Camera;
	/**
		Removes all child objects.
	**/
	function clear():Camera;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Camera;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Camera;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):Camera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Camera>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Camera>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Camera>):Void;
	static var prototype : Camera;
}