package three;

/**
	A material for rendering point primitives.
	
	Materials define the appearance of renderable 3D objects.
	
	```js
	const vertices = [];
	
	for ( let i = 0; i < 10000; i ++ ) {
	 	const x = THREE.MathUtils.randFloatSpread( 2000 );
	 	const y = THREE.MathUtils.randFloatSpread( 2000 );
	 	const z = THREE.MathUtils.randFloatSpread( 2000 );
	
	 	vertices.push( x, y, z );
	}
	
	const geometry = new THREE.BufferGeometry();
	geometry.setAttribute( 'position', new THREE.Float32BufferAttribute( vertices, 3 ) );
	const material = new THREE.PointsMaterial( { color: 0x888888 } );
	const points = new THREE.Points( geometry, material );
	scene.add( points );
	```
**/
@:native("THREE.PointsMaterial") extern class PointsMaterial extends Material {
	/**
		Constructs a new points material.
	**/
	function new(?parameters:PointsMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isPointsMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:PointsMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():PointsMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):PointsMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointsMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointsMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PointsMaterial>):Void;
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
		Defines the size of the points in pixels.
		
		Might be capped if the value exceeds hardware dependent parameters like [gl.ALIASED_POINT_SIZE_RANGE](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/getParamete).
	**/
	var size : Float;
	/**
		Specifies whether size of individual points is attenuated by the camera depth (perspective camera only).
	**/
	var sizeAttenuation : Bool;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : PointsMaterial;
}