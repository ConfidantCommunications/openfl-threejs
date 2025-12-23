package three;

/**
	A mesh that has a {@link THREE.Skeleton | Skeleton} with {@link Bone | bones} that can then be used to animate the vertices of the geometry.
**/
@:native("THREE.SkinnedMesh") extern class SkinnedMesh<TGeometry, TMaterial, TEventMap> extends Mesh<TGeometry, TMaterial, TEventMap> {
	/**
		Create a new instance of {@link SkinnedMesh}
	**/
	function new(?geometry:TGeometry, ?material:TMaterial, ?useVertexTexture:Bool);
	/**
		Read-only flag to check if a given object is of type {@link SkinnedMesh}.
	**/
	final isSkinnedMesh : Bool;
	/**
		Either {@link AttachedBindMode} or {@link DetachedBindMode}. {@link AttachedBindMode} means the skinned mesh
		shares the same world space as the skeleton. This is not true when using {@link DetachedBindMode} which is useful
		when sharing a skeleton across multiple skinned meshes.
	**/
	var bindMode : BindMode;
	/**
		The base matrix that is used for the bound bone transforms.
	**/
	var bindMatrix : Matrix4;
	/**
		The base matrix that is used for resetting the bound bone transforms.
	**/
	var bindMatrixInverse : Matrix4;
	/**
		The bounding box of the SkinnedMesh. Can be calculated with {@link computeBoundingBox | .computeBoundingBox()}.
	**/
	var boundingBox : Box3;
	/**
		The bounding box of the SkinnedMesh. Can be calculated with {@link computeBoundingSphere | .computeBoundingSphere()}.
	**/
	var boundingSphere : Sphere;
	/**
		{@link THREE.Skeleton | Skeleton} representing the bone hierarchy of the skinned mesh.
	**/
	var skeleton : Skeleton;
	/**
		Bind a skeleton to the skinned mesh
	**/
	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4):Void;
	/**
		Computes the bounding box of the skinned mesh, and updates the {@link .boundingBox} attribute. The bounding box
		is not computed by the engine; it must be computed by your app. If the skinned mesh is animated, the bounding box
		should be recomputed per frame.
	**/
	function computeBoundingBox():Void;
	/**
		Computes the bounding sphere of the skinned mesh, and updates the {@link .boundingSphere} attribute. The bounding
		sphere is automatically computed by the engine when it is needed, e.g., for ray casting and view frustum culling.
		If the skinned mesh is animated, the bounding sphere should be recomputed per frame.
	**/
	function computeBoundingSphere():Void;
	/**
		This method sets the skinned mesh in the rest pose (resets the pose).
	**/
	function pose():Void;
	/**
		Normalizes the skin weights.
	**/
	function normalizeSkinWeights():Void;
	/**
		Applies the bone transform associated with the given index to the given position vector
	**/
	function applyBoneTransform(index:Float, vector:Vector3):Vector3;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):SkinnedMeshJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):SkinnedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, SkinnedMesh<TGeometry, TMaterial, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, SkinnedMesh<TGeometry, TMaterial, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, SkinnedMesh<TGeometry, TMaterial, TEventMap>>):Void;
	static var prototype : SkinnedMesh<Dynamic, Dynamic, Dynamic>;
}