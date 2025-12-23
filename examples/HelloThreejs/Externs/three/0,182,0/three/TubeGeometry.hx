package three;

/**
	Creates a tube that extrudes along a 3d curve.
**/
@:native("THREE.TubeGeometry") extern class TubeGeometry extends BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap> {
	/**
		Create a new instance of {@link TubeGeometry}
	**/
	function new(?path:Curve<Vector3>, ?tubularSegments:Float, ?radius:Float, ?radialSegments:Float, ?closed:Bool);
	/**
		A Read-only _string_ to check if `this` object type.
	**/
	@:native("override")
	var override_ : Dynamic;
	/**
		An object with a property for each of the constructor parameters.
	**/
	final parameters : {
		final path : Curve<Vector3>;
		final tubularSegments : Float;
		final radius : Float;
		final radialSegments : Float;
		final closed : Bool;
	};
	/**
		An array of {@link THREE.Vector3 | Vector3} tangents
	**/
	var tangents : Array<Vector3>;
	/**
		An array of {@link THREE.Vector3 | Vector3} normals
	**/
	var normals : Array<Vector3>;
	/**
		An array of {@link THREE.Vector3 | Vector3} binormals
	**/
	var binormals : Array<Vector3>;
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):TubeGeometry;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):TubeGeometry;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):TubeGeometry;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:String):TubeGeometry;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):TubeGeometry;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):TubeGeometry;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):TubeGeometry;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):TubeGeometry;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):TubeGeometry;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):TubeGeometry;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):TubeGeometry;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):TubeGeometry;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():TubeGeometry;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):TubeGeometry;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():TubeGeometry;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):TubeGeometry;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, TubeGeometry>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, TubeGeometry>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, TubeGeometry>):Void;
	static var prototype : TubeGeometry;
	static function fromJSON(data:{ }):TubeGeometry;
}