package three;

/**
	This material is defined by a MatCap (or Lit Sphere) texture, which encodes the
	material color and shading.
	
	`MeshMatcapMaterial` does not respond to lights since the matcap image file encodes
	baked lighting. It will cast a shadow onto an object that receives shadows
	(and shadow clipping works), but it will not self-shadow or receive
	shadows.
**/
@:native("THREE.MeshMatcapMaterial") extern class MeshMatcapMaterial extends Material {
	/**
		Constructs a new mesh matcap material.
	**/
	function new(?parameters:MeshMatcapMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshMatcapMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshMatcapMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshMatcapMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshMatcapMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshMatcapMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshMatcapMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshMatcapMaterial>):Void;
	/**
		Color of the material.
	**/
	var color : Color;
	/**
		The matcap map.
	**/
	var matcap : Null<Texture<Any>>;
	/**
		The color map. May optionally include an alpha channel, typically combined
		with {@link Material#transparent} or {@link Material#alphaTest}. The texture map
		color is modulated by the diffuse `color`.
	**/
	var map : Null<Texture<Any>>;
	/**
		The texture to create a bump map. The black and white values map to the
		perceived depth in relation to the lights. Bump doesn't actually affect
		the geometry of the object, only the lighting. If a normal map is defined
		this will be ignored.
	**/
	var bumpMap : Null<Texture<Any>>;
	/**
		How much the bump map affects the material. Typical range is `[0,1]`.
	**/
	var bumpScale : Float;
	/**
		The texture to create a normal map. The RGB values affect the surface
		normal for each pixel fragment and change the way the color is lit. Normal
		maps do not change the actual shape of the surface, only the lighting. In
		case the material has a normal map authored using the left handed
		convention, the `y` component of `normalScale` should be negated to compensate
		for the different handedness.
	**/
	var normalMap : Null<Texture<Any>>;
	/**
		The type of normal map.
	**/
	var normalMapType : NormalMapTypes;
	/**
		How much the normal map affects the material. Typical value range is `[0,1]`.
	**/
	var normalScale : Vector2;
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
		Renders the geometry as a wireframe.
	**/
	var wireframe : Bool;
	/**
		Controls the thickness of the wireframe.
		
		Can only be used with {@link SVGRenderer}.
	**/
	var wireframeLinewidth : Float;
	/**
		Whether the material is rendered with flat shading or not.
	**/
	var flatShading : Bool;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : MeshMatcapMaterial;
}