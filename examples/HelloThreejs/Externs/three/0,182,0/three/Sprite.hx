package three;

/**
	A {@link Sprite} is a plane that always faces towards the camera, generally with a partially transparent texture applied.
**/
@:native("THREE.Sprite") extern class Sprite<TEventMap> extends Object3D<TEventMap> {
	/**
		Creates a new Sprite.
	**/
	function new(?material:SpriteMaterial);
	/**
		Read-only flag to check if a given object is of type {@link Sprite}.
	**/
	final isSprite : Bool;
	/**
		Whether the object gets rendered into shadow map.
		No effect in {@link Sprite}.
	**/
	@:native("override")
	var override_ : Dynamic;
	var geometry : BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>;
	/**
		An instance of {@link THREE.SpriteMaterial | SpriteMaterial}, defining the object's appearance.
	**/
	var material : SpriteMaterial;
	/**
		The sprite's anchor point, and the point around which the {@link Sprite} rotates.
		A value of (0.5, 0.5) corresponds to the midpoint of the sprite.
		A value of (0, 0) corresponds to the lower left corner of the sprite.
	**/
	var center : Vector2;
	/**
		The number of instances of this sprite.
		Can only be used with {@link WebGPURenderer}.
	**/
	var count : Float;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Sprite<TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Sprite<TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Sprite<TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Sprite<TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Sprite<TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Sprite<TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Sprite<TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Sprite<TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Sprite<TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Sprite<TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Sprite<TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Sprite<TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Sprite<TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():Sprite<TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Sprite<TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Sprite<TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):Sprite<TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Sprite<TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Sprite<TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Sprite<TEventMap>>):Void;
	static var prototype : Sprite<Dynamic>;
}