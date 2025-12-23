package three;

@:native("THREE.ObjectLoader") extern class ObjectLoader extends Loader<Object3D<Object3DEventMap>, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:Object3D<Object3DEventMap>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):Void;
	function parse(json:Any, ?onLoad:(object:Object3D<Object3DEventMap>) -> Void):Object3D<Object3DEventMap>;
	function parseAsync(json:Any):js.lib.Promise<Object3D<Object3DEventMap>>;
	function parseGeometries(json:Any):haxe.DynamicAccess<ts.AnyOf2<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, InstancedBufferGeometry>>;
	function parseMaterials(json:Any, textures:haxe.DynamicAccess<Texture<Any>>):haxe.DynamicAccess<Material>;
	function parseAnimations(json:Any):haxe.DynamicAccess<AnimationClip>;
	function parseImages(json:Any, ?onLoad:() -> Void):haxe.DynamicAccess<Source<Any>>;
	function parseImagesAsync(json:Any):js.lib.Promise<haxe.DynamicAccess<Source<Any>>>;
	function parseTextures(json:Any, images:haxe.DynamicAccess<Source<Any>>):haxe.DynamicAccess<Texture<Any>>;
	function parseObject(data:Any, geometries:haxe.DynamicAccess<ts.AnyOf2<BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, InstancedBufferGeometry>>, materials:haxe.DynamicAccess<Material>, animations:haxe.DynamicAccess<AnimationClip>):Object3D<Object3DEventMap>;
	function setCrossOrigin(crossOrigin:String):ObjectLoader;
	function setWithCredentials(value:Bool):ObjectLoader;
	function setPath(path:String):ObjectLoader;
	function setResourcePath(resourcePath:String):ObjectLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):ObjectLoader;
	function abort():ObjectLoader;
	static var prototype : ObjectLoader;
}