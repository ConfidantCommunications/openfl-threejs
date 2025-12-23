package three;

/**
	Base class for implementing loaders.
**/
@:native("THREE.Loader") extern class Loader<TData, TUrl> {
	function new(?manager:LoadingManager);
	var crossOrigin : String;
	var withCredentials : Bool;
	var path : String;
	var resourcePath : String;
	var manager : LoadingManager;
	var requestHeader : haxe.DynamicAccess<String>;
	function load(url:TUrl, onLoad:(data:TData) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):Void;
	function loadAsync(url:TUrl, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void):js.lib.Promise<TData>;
	function setCrossOrigin(crossOrigin:String):Loader<TData, TUrl>;
	function setWithCredentials(value:Bool):Loader<TData, TUrl>;
	function setPath(path:String):Loader<TData, TUrl>;
	function setResourcePath(resourcePath:String):Loader<TData, TUrl>;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):Loader<TData, TUrl>;
	function abort():Loader<TData, TUrl>;
	static var prototype : Loader<Dynamic, Dynamic>;
	static var DEFAULT_MATERIAL_NAME : String;
}