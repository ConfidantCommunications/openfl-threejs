package three;

/**
	Create a {@link Texture} to apply to a surface or as a reflection or refraction map.
**/
@:native("THREE.Texture") extern class Texture<TImage> extends EventDispatcher<{ var dispose : { }; }> {
	/**
		This creates a new {@link THREE.Texture | Texture} object.
	**/
	@:overload(function(image:TImage, mapping:Mapping, wrapS:Wrapping, wrapT:Wrapping, magFilter:MagnificationTextureFilter, minFilter:MinificationTextureFilter, format:PixelFormat, type:TextureDataType, anisotropy:Float):Texture<TImage> { })
	function new(?image:TImage, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float, ?colorSpace:ColorSpace);
	/**
		Read-only flag to check if a given object is of type {@link Texture}.
	**/
	final isTexture : Bool;
	/**
		Unique number for this {@link Texture} instance.
	**/
	final id : Float;
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		Optional name of the object
	**/
	var name : String;
	/**
		The data definition of a texture. A reference to the data source can be shared across textures.
		This is often useful in context of spritesheets where multiple textures render the same data
		but with different {@link Texture} transformations.
	**/
	var source : Source<TImage>;
	/**
		The width of the texture in pixels.
	**/
	final width : Float;
	/**
		The height of the texture in pixels.
	**/
	final height : Float;
	/**
		The depth of the texture in pixels.
	**/
	final depth : Float;
	/**
		An image object, typically created using the {@link THREE.TextureLoader.load | TextureLoader.load()} method.
	**/
	var image : TImage;
	/**
		Array of user-specified mipmaps
	**/
	var mipmaps : ts.AnyOf3<Array<CompressedTextureMipmap>, Array<CubeTexture<Any>>, Array<js.html.CanvasElement>>;
	/**
		How the image is applied to the object.
	**/
	var mapping : AnyMapping;
	/**
		Lets you select the uv attribute to map the texture to. `0` for `uv`, `1` for `uv1`, `2` for `uv2` and `3` for
		`uv3`.
	**/
	var channel : Float;
	/**
		This defines how the {@link Texture} is wrapped *horizontally* and corresponds to **U** in UV mapping.
	**/
	var wrapS : Wrapping;
	/**
		This defines how the {@link Texture} is wrapped *vertically* and corresponds to **V** in UV mapping.
	**/
	var wrapT : Wrapping;
	/**
		How the {@link Texture} is sampled when a texel covers more than one pixel.
	**/
	var magFilter : MagnificationTextureFilter;
	/**
		How the {@link Texture} is sampled when a texel covers less than one pixel.
	**/
	var minFilter : MinificationTextureFilter;
	/**
		The number of samples taken along the axis through the pixel that has the highest density of texels.
	**/
	var anisotropy : Float;
	/**
		These define how elements of a 2D texture, or texels, are read by shaders.
	**/
	var format : Int;
	/**
		This must correspond to the {@link Texture.format | .format}.
	**/
	var type : TextureDataType;
	/**
		The GPU Pixel Format allows the developer to specify how the data is going to be stored on the GPU.
	**/
	var internalFormat : Null<PixelFormatGPU>;
	/**
		The uv-transform matrix for the texture.
	**/
	var matrix : Matrix3;
	/**
		Whether is to update the texture's uv-transform {@link matrix | .matrix}.
	**/
	var matrixAutoUpdate : Bool;
	/**
		How much a single repetition of the texture is offset from the beginning, in each direction **U** and **V**.
	**/
	var offset : Vector2;
	/**
		How many times the texture is repeated across the surface, in each direction **U** and **V**.
	**/
	var repeat : Vector2;
	/**
		The point around which rotation occurs.
	**/
	var center : Vector2;
	/**
		How much the texture is rotated around the center point, in radians.
	**/
	var rotation : Float;
	/**
		Whether to generate mipmaps, _(if possible)_ for a texture.
	**/
	var generateMipmaps : Bool;
	/**
		If set to `true`, the alpha channel, if present, is multiplied into the color channels when the texture is uploaded to the GPU.
	**/
	var premultiplyAlpha : Bool;
	/**
		If set to `true`, the texture is flipped along the vertical axis when uploaded to the GPU.
	**/
	var flipY : Bool;
	/**
		Specifies the alignment requirements for the start of each pixel row in memory.
	**/
	var unpackAlignment : Float;
	/**
		The {@link Textures | {@link Texture} constants} page for details of other color spaces.
	**/
	var colorSpace : String;
	/**
		Indicates whether a texture belongs to a render target or not
	**/
	var isRenderTargetTexture : Bool;
	/**
		Indicates if a texture should be handled like a texture array.
	**/
	var isArrayTexture : Bool;
	/**
		An object that can be used to store custom data about the texture.
	**/
	var userData : haxe.DynamicAccess<Dynamic>;
	/**
		This can be used to only update a subregion or specific rows of the texture (for example, just the
		first 3 rows). Use the `addUpdateRange()` function to add ranges to this array.
	**/
	var updateRanges : Array<{
		var start : Float;
		var count : Float;
	}>;
	/**
		This starts at `0` and counts how many times {@link needsUpdate | .needsUpdate} is set to `true`.
	**/
	var version : Float;
	/**
		Indicates whether this texture should be processed by PMREMGenerator or not (only relevant for render target
		textures)
	**/
	var pmremVersion : Float;
	/**
		Set this to `true` to trigger an update next time the texture is used. Particularly important for setting the wrap mode.
	**/
	var needsUpdate : Bool;
	/**
		Indicates whether this texture should be processed by {@link THREE.PMREMGenerator} or not.
	**/
	var needsPMREMUpdate : Bool;
	var renderTarget : Null<RenderTarget<Texture<Any>>>;
	/**
		A callback function, called when the texture is updated _(e.g., when needsUpdate has been set to true and then the texture is used)_.
	**/
	@:optional
	dynamic function onUpdate(texture:Texture<Any>):Void;
	/**
		Transform the **UV** based on the value of this texture's
		{@link offset | .offset},
		{@link repeat | .repeat},
		{@link wrapS | .wrapS},
		{@link wrapT | .wrapT} and
		{@link flipY | .flipY} properties.
	**/
	function transformUv(uv:Vector2):Vector2;
	/**
		Update the texture's **UV-transform** {@link matrix | .matrix} from the texture properties
		{@link offset | .offset},
		{@link repeat | .repeat},
		{@link rotation | .rotation} and
		{@link center | .center}.
	**/
	function updateMatrix():Void;
	/**
		Adds a range of data in the data texture to be updated on the GPU.
	**/
	function addUpdateRange(start:Float, count:Float):Void;
	/**
		Clears the update ranges.
	**/
	function clearUpdateRanges():Void;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():Texture<TImage>;
	function copy(source:Texture<TImage>):Texture<TImage>;
	/**
		Sets this texture's properties based on `values`.
	**/
	function setValues(values:TextureParameters):Void;
	/**
		Convert the texture to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:ts.AnyOf2<String, { }>):TextureJSON;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Texture<TImage>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Texture<TImage>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Texture<TImage>>):Void;
	static var prototype : Texture<Dynamic>;
	/**
		The Global default value for {@link anisotropy | .anisotropy}.
	**/
	static var DEFAULT_ANISOTROPY : Float;
	/**
		The Global default value for {@link Texture.image | .image}.
	**/
	static var DEFAULT_IMAGE : Dynamic;
	/**
		The Global default value for {@link mapping | .mapping}.
	**/
	static var DEFAULT_MAPPING : Mapping;
}