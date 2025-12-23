package three;

/**
	Uniforms are global GLSL variables.
	They are passed to shader programs.
**/
@:native("THREE.Uniform") extern class Uniform<T> {
	/**
		Create a new instance of {@link THREE.Uniform | Uniform}
	**/
	function new(value:T);
	/**
		Current value of the uniform.
	**/
	var value : T;
	/**
		Returns a clone of this uniform.
	**/
	function clone():Uniform<T>;
	static var prototype : Uniform<Dynamic>;
}