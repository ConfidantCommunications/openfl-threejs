package three;

/**
	A class for generating a two-dimensional ring geometry.
**/
@:native("THREE.RingGeometry") extern class RingGeometry extends BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap> {
	/**
		Create a new instance of {@link RingGeometry}
	**/
	function new(?innerRadius:Float, ?outerRadius:Float, ?thetaSegments:Float, ?phiSegments:Float, ?thetaStart:Float, ?thetaLength:Float);
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		An object with a property for each of the constructor parameters.
	**/
	final parameters : {
		final innerRadius : Float;
		final outerRadius : Float;
		final thetaSegments : Float;
		final phiSegments : Float;
		final thetaStart : Float;
		final thetaLength : Float;
	};
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):RingGeometry;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):RingGeometry;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):RingGeometry;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:String):RingGeometry;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):RingGeometry;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):RingGeometry;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):RingGeometry;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):RingGeometry;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):RingGeometry;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):RingGeometry;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):RingGeometry;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):RingGeometry;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():RingGeometry;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):RingGeometry;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():RingGeometry;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):RingGeometry;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, RingGeometry>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, RingGeometry>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, RingGeometry>):Void;
	static var prototype : RingGeometry;
	static function fromJSON(data:{ }):RingGeometry;
}