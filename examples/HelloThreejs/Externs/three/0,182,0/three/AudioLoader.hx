package three;

@:native("THREE.AudioLoader") extern class AudioLoader extends Loader<js.html.audio.AudioBuffer, String> {
	function new(?manager:LoadingManager);
	function setCrossOrigin(crossOrigin:String):AudioLoader;
	function setWithCredentials(value:Bool):AudioLoader;
	function setPath(path:String):AudioLoader;
	function setResourcePath(resourcePath:String):AudioLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):AudioLoader;
	function abort():AudioLoader;
	static var prototype : AudioLoader;
}