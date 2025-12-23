package three;

@:native("THREE.BufferGeometryLoader") extern class BufferGeometryLoader extends Loader<ts.AnyOf2<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, InstancedBufferGeometry>, String> {
	function new(?manager:LoadingManager);
	function parse(json:Any):ts.AnyOf2<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, InstancedBufferGeometry>;
	function setCrossOrigin(crossOrigin:String):BufferGeometryLoader;
	function setWithCredentials(value:Bool):BufferGeometryLoader;
	function setPath(path:String):BufferGeometryLoader;
	function setResourcePath(resourcePath:String):BufferGeometryLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):BufferGeometryLoader;
	function abort():BufferGeometryLoader;
	static var prototype : BufferGeometryLoader;
}