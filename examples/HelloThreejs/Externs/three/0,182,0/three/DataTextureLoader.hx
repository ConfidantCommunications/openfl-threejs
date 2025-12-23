package three;

@:native("THREE.DataTextureLoader") extern class DataTextureLoader extends Loader<DataTexture, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:DataTexture, texData:Dynamic) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):DataTexture;
	function setCrossOrigin(crossOrigin:String):DataTextureLoader;
	function setWithCredentials(value:Bool):DataTextureLoader;
	function setPath(path:String):DataTextureLoader;
	function setResourcePath(resourcePath:String):DataTextureLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):DataTextureLoader;
	function abort():DataTextureLoader;
	static var prototype : DataTextureLoader;
}