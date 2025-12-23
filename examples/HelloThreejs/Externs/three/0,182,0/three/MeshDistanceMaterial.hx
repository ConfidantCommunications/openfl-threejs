package three;

/**
	A material used internally for implementing shadow mapping with
	point lights.
	
	Can also be used to customize the shadow casting of an object by assigning
	an instance of `MeshDistanceMaterial` to {@link Object3D#customDistanceMaterial}.
	The following examples demonstrates this approach in order to ensure
	transparent parts of objects do not cast shadows.
**/
@:native("THREE.MeshDistanceMaterial") extern class MeshDistanceMaterial extends Material {
	/**
		Constructs a new mesh distance material.
	**/
	function new(?parameters:MeshDistanceMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshDistanceMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshDistanceMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshDistanceMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshDistanceMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDistanceMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDistanceMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDistanceMaterial>):Void;
	/**
		The color map. May optionally include an alpha channel, typically combined
		with {@link Material#transparent} or {@link Material#alphaTest}.
	**/
	var map : Null<Texture<Any>>;
	/**
		The alpha map is a grayscale texture that controls the opacity across the
		surface (black: fully transparent; white: fully opaque).
		
		Only the color of the texture is used, ignoring the alpha channel if one
		exists. For RGB and RGBA textures, the renderer will use the green channel
		when sampling this texture due to the extra bit of precision provided for
		green in DXT-compressed and uncompressed RGB 565 formats. Luminance-only and
		luminance/alpha textures will also still work as expected.
	**/
	var alphaMap : Null<Texture<Any>>;
	/**
		The displacement map affects the position of the mesh's vertices. Unlike
		other maps which only affect the light and shade of the material the
		displaced vertices can cast shadows, block other objects, and otherwise
		act as real geometry. The displacement texture is an image where the value
		of each pixel (white being the highest) is mapped against, and
		repositions, the vertices of the mesh.
	**/
	var displacementMap : Null<Texture<Any>>;
	/**
		How much the displacement map affects the mesh (where black is no
		displacement, and white is maximum displacement). Without a displacement
		map set, this value is not applied.
	**/
	var displacementScale : Float;
	/**
		The offset of the displacement map's values on the mesh's vertices.
		The bias is added to the scaled sample of the displacement map.
		Without a displacement map set, this value is not applied.
	**/
	var displacementBias : Float;
	static var prototype : MeshDistanceMaterial;
}