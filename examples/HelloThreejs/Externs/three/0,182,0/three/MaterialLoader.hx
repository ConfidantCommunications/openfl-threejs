package three;

@:native("THREE.MaterialLoader") extern class MaterialLoader extends Loader<Material, String> {
	function new(?manager:LoadingManager);
	var textures : haxe.DynamicAccess<Texture<Any>>;
	function parse(json:Any):Material;
	function setTextures(textures:haxe.DynamicAccess<Texture<Any>>):MaterialLoader;
	function createMaterialFromType(type:String):Material;
	function setCrossOrigin(crossOrigin:String):MaterialLoader;
	function setWithCredentials(value:Bool):MaterialLoader;
	function setPath(path:String):MaterialLoader;
	function setResourcePath(resourcePath:String):MaterialLoader;
	function setRequestHeader(requestHeader:haxe.DynamicAccess<String>):MaterialLoader;
	function abort():MaterialLoader;
	static var prototype : MaterialLoader;
	@:native("createMaterialFromType")
	static function createMaterialFromType_(type:String):Material;
}