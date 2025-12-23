package three;

@:native("THREE.FileLoader") extern class FileLoader extends Loader<ts.AnyOf2<String, js.lib.ArrayBuffer>, String> {
	function new(?manager:LoadingManager);
	function load(url:String, ?onLoad:(data:ts.AnyOf2<String, js.lib.ArrayBuffer>) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(err:Any) -> Void):Void;
	var mimeType : String;
	var responseType : String;
	function setResponseType(value:String):FileLoader;
	function setMimeType(value:String):FileLoader;
	function setCrossOrigin(crossOrigin:String):FileLoader;
	function setWithCredentials(value:Bool):FileLoader;
	function setPath(path:String):FileLoader;
	function setResourcePath(resourcePath:String):FileLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):FileLoader;
	function abort():FileLoader;
	static var prototype : FileLoader;
}