package three;

/**
	A loader for loading an image.
	Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
**/
@:native("THREE.ImageLoader") extern class ImageLoader extends Loader<js.html.ImageElement, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:js.html.ImageElement) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):js.html.ImageElement;
	function setCrossOrigin(crossOrigin:String):ImageLoader;
	function setWithCredentials(value:Bool):ImageLoader;
	function setPath(path:String):ImageLoader;
	function setResourcePath(resourcePath:String):ImageLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):ImageLoader;
	function abort():ImageLoader;
	static var prototype : ImageLoader;
}