package three;

@:native("THREE.CubeTextureLoader") extern class CubeTextureLoader extends Loader<CubeTexture<Any>, haxe.ds.ReadOnlyArray<String>> {
	function new(?manager:LoadingManager);
	function load(url:haxe.ds.ReadOnlyArray<String>, ?onLoad:(data:CubeTexture<Any>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):CubeTexture<Any>;
	function setCrossOrigin(crossOrigin:String):CubeTextureLoader;
	function setWithCredentials(value:Bool):CubeTextureLoader;
	function setPath(path:String):CubeTextureLoader;
	function setResourcePath(resourcePath:String):CubeTextureLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):CubeTextureLoader;
	function abort():CubeTextureLoader;
	static var prototype : CubeTextureLoader;
}