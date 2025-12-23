package three;

/**
	A material for non-shiny surfaces, without specular highlights.
	
	The material uses a non-physically based [Lambertian](https://en.wikipedia.org/wiki/Lambertian_reflectance)
	model for calculating reflectance. This can simulate some surfaces (such
	as untreated wood or stone) well, but cannot simulate shiny surfaces with
	specular highlights (such as varnished wood). `MeshLambertMaterial` uses per-fragment
	shading.
	
	Due to the simplicity of the reflectance and illumination models,
	performance will be greater when using this material over the
	{@link MeshPhongMaterial}, {@link MeshStandardMaterial} or
	{@link MeshPhysicalMaterial}, at the cost of some graphical accuracy.
**/
@:native("THREE.MeshLambertMaterial") extern class MeshLambertMaterial extends Material {
	/**
		Constructs a new mesh lambert material.
	**/
	function new(?parameters:MeshLambertMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshLambertMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshLambertMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshLambertMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshLambertMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshLambertMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshLambertMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshLambertMaterial>):Void;
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
		Specular map used by the material.
	**/
	var specularMap : Null<Texture<Any>>;
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
		The environment map.
	**/
	var envMap : Null<Texture<Any>>;
	/**
		The rotation of the environment map in radians.
	**/
	var envMapRotation : Euler;
	/**
		How to combine the result of the surface's color with the environment map, if any.
		
		When set to `MixOperation`, the {@link MeshBasicMaterial#reflectivity} is used to
		blend between the two colors.
	**/
	var combine : Side;
	/**
		How much the environment map affects the surface.
		The valid range is between `0` (no reflections) and `1` (full reflections).
	**/
	var reflectivity : Float;
	/**
		The index of refraction (IOR) of air (approximately 1) divided by the
		index of refraction of the material. It is used with environment mapping
		modes {@link CubeRefractionMapping} and {@link EquirectangularRefractionMapping}.
		The refraction ratio should not exceed `1`.
	**/
	var refractionRatio : Float;
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
		Whether the material is rendered with flat shading or not.
	**/
	var flatShading : Bool;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : MeshLambertMaterial;
}