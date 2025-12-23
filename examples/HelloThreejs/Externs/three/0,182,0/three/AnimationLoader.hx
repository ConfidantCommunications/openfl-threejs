package three;

@:native("THREE.AnimationLoader") extern class AnimationLoader extends Loader<Array<AnimationClip>, String> {
	function new(?manager:LoadingManager);
	function parse(json:haxe.ds.ReadOnlyArray<Any>):Array<AnimationClip>;
	function setCrossOrigin(crossOrigin:String):AnimationLoader;
	function setWithCredentials(value:Bool):AnimationLoader;
	function setPath(path:String):AnimationLoader;
	function setResourcePath(resourcePath:String):AnimationLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):AnimationLoader;
	function abort():AnimationLoader;
	static var prototype : AnimationLoader;
}