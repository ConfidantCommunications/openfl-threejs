package three;

/**
	A material that maps the normal vectors to RGB colors.
**/
@:native("THREE.MeshNormalMaterial") extern class MeshNormalMaterial extends Material {
	/**
		Constructs a new mesh normal material.
	**/
	function new(?parameters:MeshNormalMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isMeshNormalMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:MeshNormalMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():MeshNormalMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):MeshNormalMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshNormalMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshNormalMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, MeshNormalMaterial>):Void;
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
		Renders the geometry as a wireframe.
	**/
	var wireframe : Bool;
	/**
		Controls the thickness of the wireframe.
		
		WebGL and WebGPU ignore this property and always render
		1 pixel wide lines.
	**/
	var wireframeLinewidth : Float;
	/**
		Whether the material is rendered with flat shading or not.
	**/
	var flatShading : Bool;
	static var prototype : MeshNormalMaterial;
}