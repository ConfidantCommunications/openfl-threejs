package three;

/**
	This can be used as a helper object to view a {@link BufferGeometry | geometry} as a wireframe.
**/
@:native("THREE.WireframeGeometry") extern class WireframeGeometry<TBufferGeometry> extends BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap> {
	/**
		Create a new instance of {@link WireframeGeometry}
	**/
	function new(?geometry:TBufferGeometry);
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		An object with a property for each of the constructor parameters.
	**/
	final parameters : {
		final geometry : TBufferGeometry;
	};
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):WireframeGeometry<TBufferGeometry>;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):WireframeGeometry<TBufferGeometry>;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):WireframeGeometry<TBufferGeometry>;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:String):WireframeGeometry<TBufferGeometry>;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):WireframeGeometry<TBufferGeometry>;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):WireframeGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):WireframeGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):WireframeGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):WireframeGeometry<TBufferGeometry>;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):WireframeGeometry<TBufferGeometry>;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):WireframeGeometry<TBufferGeometry>;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):WireframeGeometry<TBufferGeometry>;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():WireframeGeometry<TBufferGeometry>;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):WireframeGeometry<TBufferGeometry>;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():WireframeGeometry<TBufferGeometry>;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):WireframeGeometry<TBufferGeometry>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, WireframeGeometry<TBufferGeometry>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, WireframeGeometry<TBufferGeometry>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, WireframeGeometry<TBufferGeometry>>):Void;
	static var prototype : WireframeGeometry<Dynamic>;
}