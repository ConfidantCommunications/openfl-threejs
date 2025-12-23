package three;

/**
	A class for displaying {@link Points}
**/
@:native("THREE.Points") extern class Points<TGeometry, TMaterial, TEventMap> extends Object3D<TEventMap> {
	/**
		Create a new instance of {@link Points}
	**/
	function new(?geometry:TGeometry, ?material:TMaterial);
	/**
		Read-only flag to check if a given object is of type {@link Points}.
	**/
	final isPoints : Bool;
	@:native("override")
	var override_ : Dynamic;
	/**
		An array of weights typically from `0-1` that specify how much of the morph is applied.
	**/
	@:optional
	var morphTargetInfluences : Array<Float>;
	/**
		A dictionary of morphTargets based on the `morphTarget.name` property.
	**/
	@:optional
	var morphTargetDictionary : haxe.DynamicAccess<Float>;
	/**
		An instance of {@link THREE.BufferGeometry | BufferGeometry} (or derived classes), defining the object's structure.
	**/
	var geometry : TGeometry;
	/**
		An instance of {@link THREE.Material | Material}, defining the object's appearance.
	**/
	var material : TMaterial;
	/**
		Updates the morphTargets to have no influence on the object
	**/
	function updateMorphTargets():Void;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Points<TGeometry, TMaterial, TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():Points<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):Points<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Points<TGeometry, TMaterial, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Points<TGeometry, TMaterial, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Points<TGeometry, TMaterial, TEventMap>>):Void;
	static var prototype : Points<Dynamic, Dynamic, Dynamic>;
}