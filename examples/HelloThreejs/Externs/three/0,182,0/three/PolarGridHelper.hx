package three;

/**
	The {@link PolarGridHelper} is an object to define polar grids
**/
@:native("THREE.PolarGridHelper") extern class PolarGridHelper extends LineSegments<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap> {
	/**
		Creates a new {@link PolarGridHelper} of radius 'radius' with 'sectors' number of sectors and 'rings' number of rings, where each circle is smoothed into 'divisions' number of line segments.
	**/
	function new(?radius:Float, ?radials:Float, ?circles:Float, ?divisions:Float, ?color1:ColorRepresentation, ?color2:ColorRepresentation);
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Computes an array of distance values which are necessary for {@link THREE.LineDashedMaterial | LineDashedMaterial}
	**/
	function computeLineDistances():PolarGridHelper;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PolarGridHelper;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PolarGridHelper;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PolarGridHelper;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PolarGridHelper;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PolarGridHelper;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PolarGridHelper;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PolarGridHelper;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PolarGridHelper;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PolarGridHelper;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PolarGridHelper;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PolarGridHelper;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PolarGridHelper;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PolarGridHelper;
	/**
		Removes all child objects.
	**/
	function clear():PolarGridHelper;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PolarGridHelper;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PolarGridHelper;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):PolarGridHelper;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PolarGridHelper>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PolarGridHelper>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PolarGridHelper>):Void;
	static var prototype : PolarGridHelper;
}