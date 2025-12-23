package three;

/**
	This holds a reference to a real property in the scene graph; used internally.
**/
@:native("THREE.PropertyBinding") extern class PropertyBinding {
	/**
		Constructs a new property binding.
	**/
	function new(rootNode:ts.AnyOf2<Object3D<Object3DEventMap>, Skeleton>, path:String, ?parsedPath:Dynamic);
	/**
		The object path to the animated property.
	**/
	var path : String;
	/**
		An object holding information about the path.
	**/
	var parsedPath : Dynamic;
	/**
		The object owns the animated property.
	**/
	var node : Null<Dynamic>;
	/**
		The root node.
	**/
	var rootNode : ts.AnyOf2<Object3D<Object3DEventMap>, Skeleton>;
	/**
		Creates a getter / setter pair for the property tracked by this binding.
	**/
	function bind():Void;
	/**
		Unbinds the property.
	**/
	function unbind():Void;
	static var prototype : PropertyBinding;
	/**
		Factory method for creating a property binding from the given parameters.
	**/
	static function create(root:Dynamic, path:String, ?parsedPath:Dynamic):ts.AnyOf2<PropertyBinding, three.propertybinding.Composite>;
	/**
		Replaces spaces with underscores and removes unsupported characters from
		node names, to ensure compatibility with parseTrackName().
	**/
	static function sanitizeNodeName(name:String):String;
	/**
		Parses the given track name (an object path to an animated property) and
		returns an object with information about the path. Matches strings in the following forms:
		
		- nodeName.property
		- nodeName.property[accessor]
		- nodeName.material.property[accessor]
		- uuid.property[accessor]
		- uuid.objectName[objectIndex].propertyName[propertyIndex]
		- parentName/nodeName.property
		- parentName/parentName/nodeName.property[index]
		- .bone[Armature.DEF_cog].position
		- scene:helium_balloon_model:helium_balloon_model.position
	**/
	static function parseTrackName(trackName:String):ParseTrackNameResults;
	/**
		Searches for a node in the hierarchy of the given root object by the given
		node name.
	**/
	static function findNode(root:Dynamic, nodeName:ts.AnyOf2<String, Float>):Null<Dynamic>;
}