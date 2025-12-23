package three;

/**
	This class generates a Prefiltered, Mipmapped Radiance Environment Map (PMREM) from a cubeMap environment texture.
**/
@:native("THREE.PMREMGenerator") extern class PMREMGenerator {
	/**
		This constructor creates a new PMREMGenerator.
	**/
	function new(renderer:WebGLRenderer);
	/**
		Generates a PMREM from a supplied Scene, which can be faster than using an image if networking bandwidth is low
	**/
	function fromScene(scene:Scene<Object3DEventMap>, ?sigma:Float, ?near:Float, ?far:Float, ?options:PMREMGeneratorOptions):WebGLRenderTarget<Texture<Any>>;
	/**
		Generates a PMREM from an equirectangular texture, which can be either LDR or HDR. The ideal input image size is
		1k (1024 x 512), as this matches best with the 256 x 256 cubemap output. The smallest supported equirectangular
		image size is 64 x 32.
	**/
	function fromEquirectangular(equirectangular:Texture<Any>, ?renderTarget:WebGLRenderTarget<Texture<Any>>):WebGLRenderTarget<Texture<Any>>;
	/**
		Generates a PMREM from an cubemap texture, which can be either LDR or HDR. The ideal input cube size is
		256 x 256, as this matches best with the 256 x 256 cubemap output. The smallest supported cube size is 16 x 16.
	**/
	function fromCubemap(cubemap:CubeTexture<Any>, ?renderTarget:WebGLRenderTarget<Texture<Any>>):WebGLRenderTarget<Texture<Any>>;
	/**
		Pre-compiles the cubemap shader
	**/
	function compileCubemapShader():Void;
	/**
		Pre-compiles the equirectangular shader
	**/
	function compileEquirectangularShader():Void;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	static var prototype : PMREMGenerator;
}