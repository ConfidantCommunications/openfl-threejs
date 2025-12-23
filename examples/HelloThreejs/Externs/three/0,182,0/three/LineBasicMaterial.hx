package three;

/**
	A material for rendering line primitives.
	
	Materials define the appearance of renderable 3D objects.
	
	```js
	const material = new THREE.LineBasicMaterial( { color: 0xffffff } );
	```
**/
@:native("THREE.LineBasicMaterial") extern class LineBasicMaterial extends Material {
	/**
		Constructs a new line basic material.
	**/
	function new(?parameters:LineBasicMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isLineBasicMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:LineBasicMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():LineBasicMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):LineBasicMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineBasicMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineBasicMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineBasicMaterial>):Void;
	/**
		Color of the material.
	**/
	var color : Color;
	/**
		Sets the color of the lines using data from a texture. The texture map
		color is modulated by the diffuse `color`.
	**/
	var map : Null<Texture<Any>>;
	/**
		Controls line thickness or lines.
		
		Can only be used with {@link SVGRenderer}. WebGL and WebGPU
		ignore this setting and always render line primitives with a
		width of one pixel.
	**/
	var linewidth : Float;
	/**
		Defines appearance of line ends.
		
		Can only be used with {@link SVGRenderer}.
	**/
	var linecap : String;
	/**
		Defines appearance of line joints.
		
		Can only be used with {@link SVGRenderer}.
	**/
	var linejoin : String;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : LineBasicMaterial;
}