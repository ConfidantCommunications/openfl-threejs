package three;

@:native("THREE.CompressedTextureLoader") extern class CompressedTextureLoader extends Loader<CompressedTexture<CompressedTextureImageData>, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:CompressedTexture<CompressedTextureImageData>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):CompressedTexture<CompressedTextureImageData>;
	function setCrossOrigin(crossOrigin:String):CompressedTextureLoader;
	function setWithCredentials(value:Bool):CompressedTextureLoader;
	function setPath(path:String):CompressedTextureLoader;
	function setResourcePath(resourcePath:String):CompressedTextureLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):CompressedTextureLoader;
	function abort():CompressedTextureLoader;
	static var prototype : CompressedTextureLoader;
}