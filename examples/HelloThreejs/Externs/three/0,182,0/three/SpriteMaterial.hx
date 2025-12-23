package three;

/**
	A material for rendering instances of {@link Sprite}.
	
	```js
	const map = new THREE.TextureLoader().load( 'textures/sprite.png' );
	const material = new THREE.SpriteMaterial( { map: map, color: 0xffffff } );
	
	const sprite = new THREE.Sprite( material );
	sprite.scale.set(200, 200, 1)
	scene.add( sprite );
	```
**/
@:native("THREE.SpriteMaterial") extern class SpriteMaterial extends Material {
	/**
		Constructs a new sprite material.
	**/
	function new(?parameters:SpriteMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isSpriteMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:SpriteMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():SpriteMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):SpriteMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpriteMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpriteMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, SpriteMaterial>):Void;
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
		The rotation of the sprite in radians.
	**/
	var rotation : Float;
	/**
		Specifies whether size of the sprite is attenuated by the camera depth (perspective camera only).
	**/
	var sizeAttenuation : Bool;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : SpriteMaterial;
}