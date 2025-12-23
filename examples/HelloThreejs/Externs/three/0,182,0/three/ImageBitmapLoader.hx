package three;

@:native("THREE.ImageBitmapLoader") extern class ImageBitmapLoader extends Loader<js.html.ImageBitmap, String> {
	function new(?manager:LoadingManager);
	final isImageBitmapLoader : Bool;
	var options : js.html.ImageBitmapOptions;
	function setOptions(options:js.html.ImageBitmapOptions):ImageBitmapLoader;
	function load(url:String, ?onLoad:(data:js.html.ImageBitmap) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):Void;
	function setCrossOrigin(crossOrigin:String):ImageBitmapLoader;
	function setWithCredentials(value:Bool):ImageBitmapLoader;
	function setPath(path:String):ImageBitmapLoader;
	function setResourcePath(resourcePath:String):ImageBitmapLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):ImageBitmapLoader;
	function abort():ImageBitmapLoader;
	static var prototype : ImageBitmapLoader;
}