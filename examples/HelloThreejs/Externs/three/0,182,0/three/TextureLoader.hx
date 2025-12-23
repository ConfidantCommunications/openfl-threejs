package three;

/**
	Class for loading a texture.
	Unlike other loaders, this one emits events instead of using predefined callbacks. So if you're interested in getting notified when things happen, you need to add listeners to the object.
**/
@:native("THREE.TextureLoader") extern class TextureLoader extends Loader<Texture<js.html.ImageElement>, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:Texture<js.html.ImageElement>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):Texture<js.html.ImageElement>;
	function setCrossOrigin(crossOrigin:String):TextureLoader;
	function setWithCredentials(value:Bool):TextureLoader;
	function setPath(path:String):TextureLoader;
	function setResourcePath(resourcePath:String):TextureLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):TextureLoader;
	function abort():TextureLoader;
	static var prototype : TextureLoader;
}