package three;

/**
	Represents the data {@link Source} of a texture.
**/
@:native("THREE.Source") extern class Source<TData> {
	/**
		Create a new instance of {@link Source}
	**/
	function new(data:TData);
	/**
		Flag to check if a given object is of type {@link Source}.
	**/
	final isSource : Bool;
	final id : Float;
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		The actual data of a texture.
	**/
	var data : TData;
	/**
		This property is only relevant when {@link .needsUpdate} is set to `true` and provides more control on how
		texture data should be processed.
		When `dataReady` is set to `false`, the engine performs the memory allocation (if necessary) but does not
		transfer the data into the GPU memory.
	**/
	var dataReady : Bool;
	/**
		This starts at `0` and counts how many times {@link needsUpdate | .needsUpdate} is set to `true`.
	**/
	var version : Float;
	function getSize(target:Vector3):Vector3;
	/**
		When the property is set to `true`, the engine allocates the memory for the texture (if necessary) and triggers
		the actual texture upload to the GPU next time the source is used.
	**/
	var needsUpdate : Bool;
	/**
		Convert the data {@link Source} to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:ts.AnyOf2<String, { }>):SourceJSON;
	static var prototype : Source<Dynamic>;
}