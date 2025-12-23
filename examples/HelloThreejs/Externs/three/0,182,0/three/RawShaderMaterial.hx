package three;

/**
	This class works just like {@link ShaderMaterial}, except that definitions
	of built-in uniforms and attributes are not automatically prepended to the
	GLSL shader code.
	
	`RawShaderMaterial` can only be used with {@link WebGLRenderer}.
**/
@:native("THREE.RawShaderMaterial") extern class RawShaderMaterial extends ShaderMaterial {
	/**
		This flag can be used for type testing.
	**/
	final isRawShaderMaterial : Bool;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():RawShaderMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):RawShaderMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, RawShaderMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, RawShaderMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, RawShaderMaterial>):Void;
	static var prototype : RawShaderMaterial;
}