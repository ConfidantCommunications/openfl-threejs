package three;

/**
	This can be used as a helper object to view the edges of a {@link THREE.BufferGeometry | geometry}.
**/
@:native("THREE.EdgesGeometry") extern class EdgesGeometry<TBufferGeometry> extends BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap> {
	/**
		Create a new instance of {@link EdgesGeometry}
	**/
	function new(?geometry:TBufferGeometry, ?thresholdAngle:Float);
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		An object with a property for each of the constructor parameters.
	**/
	final parameters : {
		final geometry : Null<TBufferGeometry>;
		final thresholdAngle : Float;
	};
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):EdgesGeometry<TBufferGeometry>;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):EdgesGeometry<TBufferGeometry>;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):EdgesGeometry<TBufferGeometry>;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:String):EdgesGeometry<TBufferGeometry>;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):EdgesGeometry<TBufferGeometry>;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):EdgesGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):EdgesGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):EdgesGeometry<TBufferGeometry>;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):EdgesGeometry<TBufferGeometry>;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):EdgesGeometry<TBufferGeometry>;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):EdgesGeometry<TBufferGeometry>;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):EdgesGeometry<TBufferGeometry>;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():EdgesGeometry<TBufferGeometry>;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):EdgesGeometry<TBufferGeometry>;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():EdgesGeometry<TBufferGeometry>;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):EdgesGeometry<TBufferGeometry>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, EdgesGeometry<TBufferGeometry>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, EdgesGeometry<TBufferGeometry>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, EdgesGeometry<TBufferGeometry>>):Void;
	static var prototype : EdgesGeometry<Dynamic>;
}