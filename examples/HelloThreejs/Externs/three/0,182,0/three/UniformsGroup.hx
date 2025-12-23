package three;

@:native("THREE.UniformsGroup") extern class UniformsGroup extends EventDispatcher<{ var dispose : { }; }> {
	function new();
	final isUniformsGroup : Bool;
	var id : Float;
	var usage : Usage;
	var uniforms : Array<ts.AnyOf2<Uniform<Dynamic>, Array<Uniform<Dynamic>>>>;
	function add(uniform:ts.AnyOf2<Uniform<Dynamic>, Array<Uniform<Dynamic>>>):UniformsGroup;
	function remove(uniform:ts.AnyOf2<Uniform<Dynamic>, Array<Uniform<Dynamic>>>):UniformsGroup;
	function setName(name:String):UniformsGroup;
	function setUsage(value:Usage):UniformsGroup;
	function dispose():UniformsGroup;
	function copy(source:UniformsGroup):UniformsGroup;
	function clone():UniformsGroup;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, UniformsGroup>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, UniformsGroup>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, UniformsGroup>):Void;
	static var prototype : UniformsGroup;
}