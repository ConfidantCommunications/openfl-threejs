package three;

/**
	A material implementing toon shading.
**/
@:native("THREE.MeshToonMaterial") extern class MeshToonMaterial extends Material {
	/**
		Constructs a new mesh toon material.
	**/
	function new(?parameters:MeshToonMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshToonMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshToonMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshToonMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshToonMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshToonMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshToonMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshToonMaterial>):Void;
	/**
		Color of the material.
	**/
	var color : Color;
	/**
		The color map. May optionally include an alpha channel, typically combined
		with {@link Material#transparent} or {@link Material#alphaTest}. The texture map
		color is modulated by the diffuse `color`.
	**/
	var map : Null<Texture<Any>>;
	/**
		Gradient map for toon shading. It's required to set
		{@link Texture#minFilter} and {@link Texture#magFilter} to {@linkNearestFilter}
		when using this type of texture.
	**/
	var gradientMap : Null<Texture<Any>>;
	/**
		The light map. Requires a second set of UVs.
	**/
	var lightMap : Null<Texture<Any>>;
	/**
		Intensity of the baked light.
	**/
	var lightMapIntensity : Float;
	/**
		The red channel of this texture is used as the ambient occlusion map.
		Requires a second set of UVs.
	**/
	var aoMap : Null<Texture<Any>>;
	/**
		Intensity of the ambient occlusion effect. Range is `[0,1]`, where `0`
		disables ambient occlusion. Where intensity is `1` and the AO map's
		red channel is also `1`, ambient light is fully occluded on a surface.
	**/
	var aoMapIntensity : Float;
	/**
		Emissive (light) color of the material, essentially a solid color
		unaffected by other lighting.
	**/
	var emissive : Color;
	/**
		Intensity of the emissive light. Modulates the emissive color.
	**/
	var emissiveIntensity : Float;
	/**
		Set emissive (glow) map. The emissive map color is modulated by the
		emissive color and the emissive intensity. If you have an emissive map,
		be sure to set the emissive color to something other than black.
	**/
	var emissiveMap : Null<Texture<Any>>;
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
		Defines appearance of wireframe ends.
		
		Can only be used with {@link SVGRenderer}.
	**/
	var wireframeLinecap : String;
	/**
		Defines appearance of wireframe joints.
		
		Can only be used with {@link SVGRenderer}.
	**/
	var wireframeLinejoin : String;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : MeshToonMaterial;
}