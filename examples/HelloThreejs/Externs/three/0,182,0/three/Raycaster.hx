package three;

/**
	This class is designed to assist with {@link https://en.wikipedia.org/wiki/Ray_casting | raycasting}
**/
@:native("THREE.Raycaster") extern class Raycaster {
	/**
		This creates a new {@link Raycaster} object.
	**/
	function new(?origin:Vector3, ?direction:Vector3, ?near:Float, ?far:Float);
	/**
		The {@link THREE.RaycasterRay | Ray} used for the raycasting.
	**/
	var ray : Ray;
	/**
		The near factor of the raycaster. This value indicates which objects can be discarded based on the distance.
		This value shouldn't be negative and should be smaller than the far property.
	**/
	var near : Float;
	/**
		The far factor of the raycaster. This value indicates which objects can be discarded based on the distance.
		This value shouldn't be negative and should be larger than the near property.
	**/
	var far : Float;
	/**
		The camera to use when raycasting against view-dependent objects such as billboarded objects like {@link THREE.Sprites | Sprites}.
		This field can be set manually or is set when calling  {@link setFromCamera}.
	**/
	var camera : Camera;
	/**
		Used by {@link Raycaster} to selectively ignore 3D objects when performing intersection tests.
		The following code example ensures that only 3D objects on layer `1` will be honored by the instance of Raycaster.
		```
		raycaster.layers.set( 1 );
		object.layers.enable( 1 );
		```
	**/
	var layers : Layers;
	/**
		An data object where threshold is the precision of the {@link Raycaster} when intersecting objects, in world units.
	**/
	var params : RaycasterParameters;
	/**
		Updates the ray with a new origin and direction
	**/
	function set(origin:Vector3, direction:Vector3):Void;
	/**
		Updates the ray with a new origin and direction.
	**/
	function setFromCamera(coords:Vector2, camera:Camera):Void;
	/**
		Updates the ray with a new origin and direction.
	**/
	function setFromXRController(controller:XRTargetRaySpace):Raycaster;
	/**
		Checks all intersection between the ray and the object with or without the descendants
	**/
	function intersectObject<TIntersected>(object:Object3D<Object3DEventMap>, ?recursive:Bool, ?optionalTarget:Array<Intersection<TIntersected>>):Array<Intersection<TIntersected>>;
	/**
		Checks all intersection between the ray and the objects with or without the descendants
	**/
	function intersectObjects<TIntersected>(objects:Array<Object3D<Object3DEventMap>>, ?recursive:Bool, ?optionalTarget:Array<Intersection<TIntersected>>):Array<Intersection<TIntersected>>;
	static var prototype : Raycaster;
}