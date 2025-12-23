package three;

/**
	Handles and keeps track of loaded and pending data.
**/
@:native("THREE.LoadingManager") extern class LoadingManager {
	function new(?onLoad:() -> Void, ?onProgress:(url:String, loaded:Float, total:Float) -> Void, ?onError:(url:String) -> Void);
	/**
		Will be called when loading of an item starts.
	**/
	@:optional
	dynamic function onStart(url:String, loaded:Float, total:Float):Void;
	/**
		Will be called when all items finish loading.
		The default is a function with empty body.
	**/
	dynamic function onLoad():Void;
	/**
		Will be called for each loaded item.
		The default is a function with empty body.
	**/
	dynamic function onProgress(url:String, loaded:Float, total:Float):Void;
	/**
		Will be called when item loading fails.
		The default is a function with empty body.
	**/
	dynamic function onError(url:String):Void;
	var abortController : js.html.AbortController;
	dynamic function itemStart(url:String):Void;
	dynamic function itemEnd(url:String):Void;
	dynamic function itemError(url:String):Void;
	/**
		Given a URL, uses the URL modifier callback (if any) and returns a resolved URL.
		If no URL modifier is set, returns the original URL.
	**/
	dynamic function resolveURL(url:String):String;
	/**
		If provided, the callback will be passed each resource URL before a request is sent.
		The callback may return the original URL, or a new URL to override loading behavior.
		This behavior can be used to load assets from .ZIP files, drag-and-drop APIs, and Data URIs.
	**/
	dynamic function setURLModifier(?callback:(url:String) -> String):LoadingManager;
	dynamic function addHandler(regex:js.lib.RegExp, loader:Loader<Any, String>):LoadingManager;
	dynamic function removeHandler(regex:js.lib.RegExp):LoadingManager;
	dynamic function getHandler(file:String):Null<Loader<Any, String>>;
	dynamic function abort():LoadingManager;
	static var prototype : LoadingManager;
}