package three;

/**
	A special version of {@link THREE.Mesh | Mesh} with instanced rendering support
**/
@:native("THREE.InstancedMesh") extern class InstancedMesh<TGeometry, TMaterial, TEventMap> extends Mesh<TGeometry, TMaterial, TEventMap> {
	/**
		Create a new instance of {@link InstancedMesh}
	**/
	function new(geometry:Null<TGeometry>, material:Null<TMaterial>, count:Float);
	/**
		Read-only flag to check if a given object is of type {@link InstancedMesh}.
	**/
	final isInstancedMesh : Bool;
	/**
		This bounding box encloses all instances of the {@link InstancedMesh},, which can be calculated with {@link computeBoundingBox | .computeBoundingBox()}.
	**/
	var boundingBox : Null<Box3>;
	/**
		This bounding sphere encloses all instances of the {@link InstancedMesh}, which can be calculated with {@link computeBoundingSphere | .computeBoundingSphere()}.
	**/
	var boundingSphere : Null<Sphere>;
	/**
		Represents the colors of all instances.
		You have to set {@link InstancedBufferAttribute.needsUpdate | .instanceColor.needsUpdate()} flag to `true` if you modify instanced data via {@link setColorAt | .setColorAt()}.
	**/
	var instanceColor : Null<InstancedBufferAttribute>;
	/**
		Represents the local transformation of all instances.
		You have to set {@link InstancedBufferAttribute.needsUpdate | .instanceMatrix.needsUpdate()} flag to `true` if you modify instanced data via {@link setMatrixAt | .setMatrixAt()}.
	**/
	var instanceMatrix : InstancedBufferAttribute;
	/**
		Represents the morph target weights of all instances. You have to set its {@link .needsUpdate} flag to true if
		you modify instanced data via {@link .setMorphAt}.
	**/
	var morphTexture : Null<DataTexture>;
	/**
		Computes the bounding box of the instanced mesh, and updates the {@link .boundingBox} attribute. The bounding box
		is not computed by the engine; it must be computed by your app. You may need to recompute the bounding box if an
		instance is transformed via {@link .setMatrixAt()}.
	**/
	function computeBoundingBox():Void;
	/**
		Computes the bounding sphere of the instanced mesh, and updates the {@link .boundingSphere} attribute. The engine
		automatically computes the bounding sphere when it is needed, e.g., for ray casting or view frustum culling. You
		may need to recompute the bounding sphere if an instance is transformed via [page:.setMatrixAt]().
	**/
	function computeBoundingSphere():Void;
	/**
		Get the color of the defined instance.
	**/
	function getColorAt(index:Float, color:Color):Void;
	/**
		Sets the given color to the defined instance
	**/
	function setColorAt(index:Float, color:Color):Void;
	/**
		Get the local transformation matrix of the defined instance.
	**/
	function getMatrixAt(index:Float, matrix:Matrix4):Void;
	/**
		Get the morph target weights of the defined instance.
	**/
	function getMorphAt(index:Float, mesh:Mesh<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap>):Void;
	/**
		Sets the given local transformation matrix to the defined instance. Make sure you set
		{@link InstancedBufferAttribute.needsUpdate | .instanceMatrix.needsUpdate()} flag to `true` after updating all
		the matrices.
		Negatively scaled matrices are not supported.
	**/
	function setMatrixAt(index:Float, matrix:Matrix4):Void;
	/**
		Sets the morph target weights to the defined instance. Make sure you set {@link .morphTexture}{@link .needsUpdate}
		to true after updating all the influences.
	**/
	function setMorphAt(index:Float, mesh:Mesh<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, ts.AnyOf2<Material, Array<Material>>, Object3DEventMap>):Void;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):InstancedMeshJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Removes all child objects.
	**/
	function clear():InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):InstancedMesh<TGeometry, TMaterial, TEventMap>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, InstancedMesh<TGeometry, TMaterial, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, InstancedMesh<TGeometry, TMaterial, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, InstancedMesh<TGeometry, TMaterial, TEventMap>>):Void;
	static var prototype : InstancedMesh<Dynamic, Dynamic, Dynamic>;
}