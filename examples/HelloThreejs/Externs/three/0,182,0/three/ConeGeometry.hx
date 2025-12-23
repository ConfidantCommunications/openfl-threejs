package three;

/**
	A class for generating cone geometries.
**/
@:native("THREE.ConeGeometry") extern class ConeGeometry extends CylinderGeometry {
	/**
		Create a new instance of {@link ConeGeometry}
	**/
	function new(?radius:Float, ?height:Float, ?radialSegments:Float, ?heightSegments:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float);
	/**
		Set the {@link THREE.BufferGeometry.index | .index} buffer.
	**/
	function setIndex(index:Null<ts.AnyOf2<Array<Float>, BufferAttribute>>):ConeGeometry;
	function setIndirect(indirect:Null<Dynamic>, ?indirectOffset:ts.AnyOf2<Float, Array<Float>>):ConeGeometry;
	/**
		Sets an {@link attributes | attribute} to this geometry with the specified name.
	**/
	function setAttribute<K>(name:K, attribute:ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>):ConeGeometry;
	/**
		Deletes the  {@link attributes | attribute} with the specified name.
	**/
	function deleteAttribute(name:String):ConeGeometry;
	/**
		Applies the matrix transform to the geometry.
	**/
	function applyMatrix4(matrix:Matrix4):ConeGeometry;
	/**
		Applies the rotation represented by the quaternion to the geometry.
	**/
	function applyQuaternion(quaternion:Quaternion):ConeGeometry;
	/**
		Rotate the geometry about the X axis. This is typically done as a one time operation, and not during a loop.
	**/
	function rotateX(angle:Float):ConeGeometry;
	/**
		Rotate the geometry about the Y axis.
	**/
	function rotateY(angle:Float):ConeGeometry;
	/**
		Rotate the geometry about the Z axis.
	**/
	function rotateZ(angle:Float):ConeGeometry;
	/**
		Translate the geometry.
	**/
	function translate(x:Float, y:Float, z:Float):ConeGeometry;
	/**
		Scale the geometry data.
	**/
	function scale(x:Float, y:Float, z:Float):ConeGeometry;
	/**
		Rotates the geometry to face a point in space.
	**/
	function lookAt(vector:Vector3):ConeGeometry;
	/**
		Center the geometry based on the bounding box.
	**/
	function center():ConeGeometry;
	/**
		Defines a geometry by creating a `position` attribute based on the given array of points. The array can hold
		instances of {@link Vector2} or {@link Vector3}. When using two-dimensional data, the `z` coordinate for all
		vertices is set to `0`.
		
		If the method is used with an existing `position` attribute, the vertex data are overwritten with the data from
		the array. The length of the array must match the vertex count.
	**/
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):ConeGeometry;
	/**
		Creates a clone of this BufferGeometry
	**/
	function clone():ConeGeometry;
	/**
		Copies another BufferGeometry to this BufferGeometry.
	**/
	function copy(source:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>):ConeGeometry;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ConeGeometry>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ConeGeometry>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ConeGeometry>):Void;
	static var prototype : ConeGeometry;
	static function fromJSON(data:{ }):ConeGeometry;
}