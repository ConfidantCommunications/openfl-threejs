package three;

/**
	A special version of {@link Mesh} with multi draw batch rendering support. Use BatchedMesh if you have to render a
	large number of objects with the same material but with different geometries or world transformations. The usage of
	BatchedMesh will help you to reduce the number of draw calls and thus improve the overall rendering performance in
	your application.
	
	If the {@link https://developer.mozilla.org/en-US/docs/Web/API/WEBGL_multi_draw WEBGL_multi_draw extension} is not
	supported then a less performant fallback is used.
**/
@:native("THREE.BatchedMesh") extern class BatchedMesh extends Mesh<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, Material, Object3DEventMap> {
	function new(maxInstanceCount:Float, maxVertexCount:Float, ?maxIndexCount:Float, ?material:Material);
	/**
		This bounding box encloses all instances of the {@link BatchedMesh}. Can be calculated with
		{@link .computeBoundingBox()}.
	**/
	var boundingBox : Null<Box3>;
	/**
		This bounding sphere encloses all instances of the {@link BatchedMesh}. Can be calculated with
		{@link .computeBoundingSphere()}.
	**/
	var boundingSphere : Null<Sphere>;
	@:optional
	dynamic function customSort(list:Array<{ var start : Float; var count : Float; var z : Float; }>, camera:Camera):Void;
	/**
		If true then the individual objects within the {@link BatchedMesh} are frustum culled.
	**/
	var perObjectFrustumCulled : Bool;
	/**
		If true then the individual objects within the {@link BatchedMesh} are sorted to improve overdraw-related
		artifacts. If the material is marked as "transparent" objects are rendered back to front and if not then they are
		rendered front to back.
	**/
	var sortObjects : Bool;
	/**
		The maximum number of individual geometries that can be stored in the {@link BatchedMesh}. Read only.
	**/
	final maxInstanceCount : Float;
	final instanceCount : Float;
	final unusedVertexCount : Float;
	final unusedIndexCount : Float;
	/**
		Read-only flag to check if a given object is of type {@link BatchedMesh}.
	**/
	final isBatchedMesh : Bool;
	/**
		Computes the bounding box, updating {@link .boundingBox} attribute.
		Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are `null`.
	**/
	function computeBoundingBox():Void;
	/**
		Computes the bounding sphere, updating {@link .boundingSphere} attribute.
		Bounding spheres aren't computed by default. They need to be explicitly computed, otherwise they are `null`.
	**/
	function computeBoundingSphere():Void;
	/**
		Frees the GPU-related resources allocated by this instance. Call this method whenever this instance is no longer
		used in your app.
	**/
	function dispose():BatchedMesh;
	/**
		Takes a sort a function that is run before render. The function takes a list of instances to sort and a camera.
		The objects in the list include a "z" field to perform a depth-ordered sort with.
	**/
	function setCustomSort(sortFunction:Null<(list:Array<{ var start : Float; var count : Float; var z : Float; }>, camera:Camera) -> Void>):BatchedMesh;
	/**
		Get the color of the defined geometry.
	**/
	function getColorAt(instanceId:Float, target:Color):Void;
	/**
		Get the local transformation matrix of the defined instance.
	**/
	function getMatrixAt(instanceId:Float, target:Matrix4):Matrix4;
	/**
		Get whether the given instance is marked as "visible" or not.
	**/
	function getVisibleAt(instanceId:Float):Bool;
	/**
		Get the range representing the subset of triangles related to the attached geometry, indicating the starting
		offset and count, or `null` if invalid.
		
		Return an object of the form: { start: Integer, count: Integer }
	**/
	function getGeometryRangeAt(geometryId:Float, ?target:BatchedMeshGeometryRange):Null<BatchedMeshGeometryRange>;
	/**
		Get the geometryIndex of the defined instance.
	**/
	function getGeometryIdAt(instanceId:Float):Float;
	/**
		Sets the given color to the defined geometry instance.
	**/
	function setColorAt(instanceId:Float, color:Color):Void;
	/**
		Sets the given local transformation matrix to the defined instance.
		Negatively scaled matrices are not supported.
	**/
	function setMatrixAt(instanceId:Float, matrix:Matrix4):BatchedMesh;
	/**
		Sets the visibility of the instance at the given index.
	**/
	function setVisibleAt(instanceId:Float, visible:Bool):BatchedMesh;
	/**
		Sets the geometryIndex of the instance at the given index.
	**/
	function setGeometryIdAt(instanceId:Float, geometryId:Float):BatchedMesh;
	/**
		Adds the given geometry to the {@link BatchedMesh} and returns the associated index referring to it.
	**/
	function addGeometry(geometry:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ?reservedVertexRange:Float, ?reservedIndexRange:Float):Float;
	/**
		Adds a new instance to the {@link BatchedMesh} using the geometry of the given geometryId and returns a new id
		referring to the new instance to be used by other functions.
	**/
	function addInstance(geometryId:Float):Float;
	function deleteGeometry(geometryId:Float):BatchedMesh;
	/**
		Removes an existing instance from the BatchedMesh using the given instanceId.
	**/
	function deleteInstance(instanceId:Float):BatchedMesh;
	/**
		Replaces the geometry at `geometryId` with the provided geometry. Throws an error if there is not enough space
		reserved for geometry. Calling this will change all instances that are rendering that geometry.
	**/
	function setGeometryAt(geometryId:Float, geometry:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):Float;
	/**
		Repacks the sub geometries in [name] to remove any unused space remaining from previously deleted geometry,
		freeing up space to add new geometry.
	**/
	function optimize():BatchedMesh;
	/**
		Resizes the available space in BatchedMesh's vertex and index buffer attributes to the provided sizes. If the
		provided arguments shrink the geometry buffers but there is not enough unused space at the end of the geometry
		attributes then an error is thrown.
	**/
	function setGeometrySize(maxVertexCount:Float, maxIndexCount:Float):Void;
	/**
		Resizes the necessary buffers to support the provided number of instances. If the provided arguments shrink the
		number of instances but there are not enough unused ids at the end of the list then an error is thrown.
	**/
	function setInstanceCount(maxInstanceCount:Float):Void;
	function getBoundingBoxAt(geometryId:Float, target:Box3):Null<Box3>;
	function getBoundingSphereAt(geometryId:Float, target:Sphere):Null<Sphere>;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):BatchedMesh;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):BatchedMesh;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):BatchedMesh;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):BatchedMesh;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):BatchedMesh;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):BatchedMesh;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):BatchedMesh;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):BatchedMesh;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):BatchedMesh;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):BatchedMesh;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):BatchedMesh;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):BatchedMesh;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():BatchedMesh;
	/**
		Removes all child objects.
	**/
	function clear():BatchedMesh;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):BatchedMesh;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):BatchedMesh;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):BatchedMesh;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, BatchedMesh>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, BatchedMesh>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, BatchedMesh>):Void;
	static var prototype : BatchedMesh;
}