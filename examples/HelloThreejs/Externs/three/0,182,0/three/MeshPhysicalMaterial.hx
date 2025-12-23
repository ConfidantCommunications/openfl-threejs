package three;

/**
	An extension of the {@link MeshStandardMaterial}, providing more advanced
	physically-based rendering properties:
	
	- Anisotropy: Ability to represent the anisotropic property of materials
	as observable with brushed metals.
	- Clearcoat: Some materials — like car paints, carbon fiber, and wet surfaces — require
	a clear, reflective layer on top of another layer that may be irregular or rough.
	Clearcoat approximates this effect, without the need for a separate transparent surface.
	- Iridescence: Allows to render the effect where hue varies  depending on the viewing
	angle and illumination angle. This can be seen on soap bubbles, oil films, or on the
	wings of many insects.
	- Physically-based transparency: One limitation of {@link Material#opacity} is that highly
	transparent materials are less reflective. Physically-based transmission provides a more
	realistic option for thin, transparent surfaces like glass.
	- Advanced reflectivity: More flexible reflectivity for non-metallic materials.
	- Sheen: Can be used for representing cloth and fabric materials.
	
	As a result of these complex shading features, `MeshPhysicalMaterial` has a
	higher performance cost, per pixel, than other three.js materials. Most
	effects are disabled by default, and add cost as they are enabled. For
	best results, always specify an environment map when using this material.
**/
@:native("THREE.MeshPhysicalMaterial") extern class MeshPhysicalMaterial extends MeshStandardMaterial {
	function new(?parameters:MeshPhysicalMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshPhysicalMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshPhysicalMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshPhysicalMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshPhysicalMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshPhysicalMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshPhysicalMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshPhysicalMaterial>):Void;
	/**
		The rotation of the anisotropy in tangent, bitangent space, measured in radians
		counter-clockwise from the tangent. When `anisotropyMap` is present, this
		property provides additional rotation to the vectors in the texture.
	**/
	var anisotropyRotation : Float;
	/**
		Red and green channels represent the anisotropy direction in `[-1, 1]` tangent,
		bitangent space, to be rotated by `anisotropyRotation`. The blue channel
		contains strength as `[0, 1]` to be multiplied by `anisotropy`.
	**/
	var anisotropyMap : Null<Texture<Any>>;
	/**
		The red channel of this texture is multiplied against `clearcoat`,
		for per-pixel control over a coating's intensity.
	**/
	var clearcoatMap : Null<Texture<Any>>;
	/**
		Roughness of the clear coat layer, from `0.0` to `1.0`.
	**/
	var clearcoatRoughness : Float;
	/**
		The green channel of this texture is multiplied against
		`clearcoatRoughness`, for per-pixel control over a coating's roughness.
	**/
	var clearcoatRoughnessMap : Null<Texture<Any>>;
	/**
		How much `clearcoatNormalMap` affects the clear coat layer, from
		`(0,0)` to `(1,1)`.
	**/
	var clearcoatNormalScale : Vector2;
	/**
		Can be used to enable independent normals for the clear coat layer.
	**/
	var clearcoatNormalMap : Null<Texture<Any>>;
	/**
		Index-of-refraction for non-metallic materials, from `1.0` to `2.333`.
	**/
	var ior : Float;
	static var prototype : MeshPhysicalMaterial;
}