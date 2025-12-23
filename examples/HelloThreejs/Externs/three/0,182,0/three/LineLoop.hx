package three;

/**
	A continuous line that connects back to the start.
**/
@:native("THREE.LineLoop") extern class LineLoop<TGeometry, TMaterial, TEventMap> extends Line<TGeometry, TMaterial, TEventMap> {
	/**
		Create a new instance of {@link LineLoop}
	**/
	function new(?geometry:TGeometry, ?material:TMaterial);
	/**
		Read-only flag to check if a given object is of type {@link LineLoop}.
	**/
	final isLineLoop : Bool;
	/**
		Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
	**/
	function computeLineDistances():LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):LineLoop<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineLoop<TGeometry, TMaterial, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineLoop<TGeometry, TMaterial, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineLoop<TGeometry, TMaterial, TEventMap>>):Void;
	static var prototype : LineLoop<Dynamic, Dynamic, Dynamic>;
}