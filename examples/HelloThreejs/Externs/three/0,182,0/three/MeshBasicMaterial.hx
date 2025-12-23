package three;

/**
	A material for drawing geometries in a simple shaded (flat or wireframe) way.
	
	This material is not affected by lights.
**/
@:native("THREE.MeshBasicMaterial") extern class MeshBasicMaterial extends Material {
	/**
		Constructs a new mesh basic material.
	**/
	function new(?parameters:MeshBasicMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshBasicMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshBasicMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshBasicMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshBasicMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshBasicMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshBasicMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshBasicMaterial>):Void;
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
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : MeshBasicMaterial;
}