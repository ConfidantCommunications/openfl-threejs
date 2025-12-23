package three;

/**
	A series of lines drawn between pairs of vertices.
**/
@:native("THREE.LineSegments") extern class LineSegments<TGeometry, TMaterial, TEventMap> extends Line<TGeometry, TMaterial, TEventMap> {
	/**
		Create a new instance of {@link LineSegments}
	**/
	function new(?geometry:TGeometry, ?material:TMaterial);
	/**
		Read-only flag to check if a given object is of type {@link LineSegments}.
	**/
	final isLineSegments : Bool;
	/**
		Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
	**/
	function computeLineDistances():LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):LineSegments<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineSegments<TGeometry, TMaterial, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineSegments<TGeometry, TMaterial, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineSegments<TGeometry, TMaterial, TEventMap>>):Void;
	static var prototype : LineSegments<Dynamic, Dynamic, Dynamic>;
}