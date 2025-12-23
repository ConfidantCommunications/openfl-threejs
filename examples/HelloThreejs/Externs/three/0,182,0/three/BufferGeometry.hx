package three;

/**
	A representation of mesh, line, or point geometry 
	Includes vertex positions, face indices, normals, colors, UVs, and custom attributes within buffers, reducing the cost of passing all this data to the GPU.
**/
@:native("THREE.BufferGeometry") extern class BufferGeometry<Attributes, TEventMap> extends EventDispatcher<TEventMap> {
	/**
		This creates a new {@link THREE.BufferGeometry | BufferGeometry} object.
	**/
	function new();
	/**
		Unique number for this {@link THREE.BufferGeometry | BufferGeometry} instance.
	**/
	var id : Float;
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		Optional name for this {@link THREE.BufferGeometry | BufferGeometry} instance.
	**/
	var name : String;
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	final type : String;
	/**
		Allows for vertices to be re-used across multiple triangles; this is called using "indexed triangles".
		Each triangle is associated with the indices of three vertices. This attribute therefore stores the index of each vertex for each triangular face.
		If this attribute is not set, the {@link THREE.WebGLRenderer | renderer}  assumes that each three contiguous positions represent a single triangle.
	**/
	var index : Null<BufferAttribute>;
	var indirect : Null<Dynamic>;
	var indirectOffset : ts.AnyOf2<Float, Array<Float>>;
	/**
		This hashmap has as id the name of the attribute to be set and as value the {@link THREE.BufferAttribute | buffer} to set it to. Rather than accessing this property directly,
		use {@link setAttribute | .setAttribute} and {@link getAttribute | .getAttribute} to access attributes of this geometry.
	**/
	var attributes : Attributes;
	/**
		Hashmap of {@link THREE.BufferAttribute | BufferAttributes} holding details of the geometry's morph targets.
	**/
	var morphAttributes : {
		@:optional
		var position : Array<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>;
		@:optional
		var normal : Array<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>;
		@:optional
		var color : Array<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>;
	};
	/**
		Used to control the morph target behavior; when set to true, the morph target data is treated as relative offsets, rather than as absolute positions/normals.
	**/
	var morphTargetsRelative : Bool;
	/**
		Split the geometry into groups, each of which will be rendered in a separate WebGL draw call. This allows an array of materials to be used with the geometry.
	**/
	var groups : Array<GeometryGroup>;
	/**
		Bounding box for the {@link THREE.BufferGeometry | BufferGeometry}, which can be calculated with {@link computeBoundingBox | .computeBoundingBox()}.
	**/
	var boundingBox : Null<Box3>;
	/**
		Bounding sphere for the {@link THREE.BufferGeometry | BufferGeometry}, which can be calculated with {@link computeBoundingSphere | .computeBoundingSphere()}.
	**/
	var boundingSphere : Null<Sphere>;
	/**
		Determines the part of the geometry to render. This should not be set directly, instead use {@link setDrawRange | .setDrawRange(...)}.
	**/
	var drawRange : {
		var start : Float;
		var count : Float;
	};
	/**
		An object that can be used to store custom data about the BufferGeometry. It should not hold references to functions as these will not be cloned.
	**/
	var userData : haxe.DynamicAccess<Dynamic>;
	/**
		Read-only flag to check if a given object is of type {@link BufferGeometry}.
	**/
	final isBufferGeometry : Bool;
	/**
		Return the {@link index | .index} buffer.
	**/
	function getIndex():Null<BufferAttribute>;
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):BufferGeometry<Attributes, TEventMap>;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):BufferGeometry<Attributes, TEventMap>;
	function getIndirect():Null<Dynamic>;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:Dynamic):BufferGeometry<Attributes, TEventMap>;
	/**
		Returns the {@link attributes | attribute} with the specified name.
	**/
	function getAttribute<K>(name:K):Dynamic;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:Dynamic):BufferGeometry<Attributes, TEventMap>;
	/**
		Returns true if the {@link attributes | attribute} with the specified name exists.
	**/
	function hasAttribute(name:Dynamic):Bool;
	/**
		Adds a group to this geometry
	**/
	function addGroup(start:Float, count:Float, ?materialIndex:Float):Void;
	/**
		Clears all groups.
	**/
	function clearGroups():Void;
	/**
		Set the {@link drawRange | .drawRange} property
	**/
	function setDrawRange(start:Float, count:Float):Void;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):BufferGeometry<Attributes, TEventMap>;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):BufferGeometry<Attributes, TEventMap>;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):BufferGeometry<Attributes, TEventMap>;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):BufferGeometry<Attributes, TEventMap>;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):BufferGeometry<Attributes, TEventMap>;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):BufferGeometry<Attributes, TEventMap>;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):BufferGeometry<Attributes, TEventMap>;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):BufferGeometry<Attributes, TEventMap>;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():BufferGeometry<Attributes, TEventMap>;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):BufferGeometry<Attributes, TEventMap>;
	/**
		Computes the bounding box of the geometry, and updates the {@link .boundingBox} attribute. The bounding box is
		not computed by the engine; it must be computed by your app. You may need to recompute the bounding box if the
		geometry vertices are modified.
	**/
	function computeBoundingBox():Void;
	/**
		Computes the bounding sphere of the geometry, and updates the {@link .boundingSphere} attribute. The engine
		automatically computes the bounding sphere when it is needed, e.g., for ray casting or view frustum culling. You
		may need to recompute the bounding sphere if the geometry vertices are modified.
	**/
	function computeBoundingSphere():Void;
	/**
		Calculates and adds a tangent attribute to this geometry.
		The computation is only supported for indexed geometries and if position, normal, and uv attributes are defined
	**/
	function computeTangents():Void;
	/**
		Computes vertex normals for the given vertex data. For indexed geometries, the method sets each vertex normal to
		be the average of the face normals of the faces that share that vertex. For non-indexed geometries, vertices are
		not shared, and the method sets each vertex normal to be the same as the face normal.
	**/
	function computeVertexNormals():Void;
	/**
		Every normal vector in a geometry will have a magnitude of 1
	**/
	function normalizeNormals():Void;
	/**
		Return a non-index version of an indexed BufferGeometry.
	**/
	function toNonIndexed():BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>;
	/**
		Convert the buffer geometry to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON():BufferGeometryJSON;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():BufferGeometry<Attributes, TEventMap>;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):BufferGeometry<Attributes, TEventMap>;
	/**
		Frees the GPU-related resources allocated by this instance.
	**/
	function dispose():Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, BufferGeometry<Attributes, TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, BufferGeometry<Attributes, TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, BufferGeometry<Attributes, TEventMap>>):Void;
	static var prototype : BufferGeometry<Dynamic, Dynamic>;
}