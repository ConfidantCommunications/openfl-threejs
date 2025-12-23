package three;

/**
	A material for drawing geometry by depth. Depth is based off of the camera
	near and far plane. White is nearest, black is farthest.
**/
@:native("THREE.MeshDepthMaterial") extern class MeshDepthMaterial extends Material {
	/**
		Constructs a new mesh depth material.
	**/
	function new(?parameters:MeshDepthMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshDepthMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshDepthMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshDepthMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshDepthMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDepthMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDepthMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshDepthMaterial>):Void;
	/**
		Type for depth packing.
	**/
	var depthPacking : DepthPackingStrategies;
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
	/**
		Renders the geometry as a wireframe.
	**/
	var wireframe : Bool;
	/**
		Controls the thickness of the wireframe.
		
		WebGL and WebGPU ignore this property and always render
		1 pixel wide lines.
	**/
	var wireframeLinewidth : Float;
	static var prototype : MeshDepthMaterial;
}