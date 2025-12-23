package three;

/**
	The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
	This renderer has way better performance than CanvasRenderer.
	
	see {@link https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js|src/renderers/WebGLRenderer.js}
**/
// @:native("THREE.WebGLRenderer") 
@:native("THREE.WebGLRenderer")
extern class WebGLRenderer {
	/**
		parameters is an optional object with properties defining the renderer's behavior.
		The constructor also accepts no parameters at all.
		In all cases, it will assume sane defaults when parameters are missing.
	**/
	function new(?parameters:WebGLRendererParameters);
	/**
		A Canvas where the renderer draws its output.
		This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
	**/
	var domElement : js.html.CanvasElement;
	/**
		Defines whether the renderer should automatically clear its output before rendering.
	**/
	var autoClear : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
	**/
	var autoClearColor : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
	**/
	var autoClearDepth : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
	**/
	var autoClearStencil : Bool;
	/**
		Debug configurations.
	**/
	var debug : WebGLDebug;
	/**
		Defines whether the renderer should sort objects. Default is true.
	**/
	var sortObjects : Bool;
	var clippingPlanes : Array<Plane>;
	var localClippingEnabled : Bool;
	var extensions : three.WebGLExtensions;
	/**
		Color space used for output to HTMLCanvasElement. Supported values are
		{@link SRGBColorSpace} and {@link LinearSRGBColorSpace}.
	**/
	var outputColorSpace : String;
	final coordinateSystem : Int;
	var toneMapping : DepthModes;
	var toneMappingExposure : Float;
	/**
		The normalized resolution scale for the transmission render target, measured in percentage of viewport
		dimensions. Lowering this value can result in significant improvements to {@link MeshPhysicalMaterial}
		transmission performance. Default is `1`.
	**/
	var transmissionResolutionScale : Float;
	var info : three.WebGLInfo;
	var shadowMap : three.WebGLShadowMap;
	var capabilities : three.WebGLCapabilities;
	var properties : three.WebGLProperties;
	var renderLists : three.WebGLRenderLists;
	var state : three.WebGLState;
	var xr : three.WebXRManager;
	/**
		Return the WebGL context.
	**/
	function getContext():ts.AnyOf2<js.html.webgl.RenderingContext, js.html.webgl.WebGL2RenderingContext>;
	function getContextAttributes():Dynamic;
	function forceContextLoss():Void;
	function forceContextRestore():Void;
	function getMaxAnisotropy():Float;
	function getPrecision():String;
	function getPixelRatio():Float;
	function setPixelRatio(value:Float):Void;
	function getSize(target:Vector2):Vector2;
	/**
		Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
	**/
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
	function getDrawingBufferSize(target:Vector2):Vector2;
	function setDrawingBufferSize(width:Float, height:Float, pixelRatio:Float):Void;
	function setEffects(effects:Null<Array<Effect>>):Void;
	function getCurrentViewport(target:Vector4):Vector4;
	/**
		Copies the viewport into target.
	**/
	function getViewport(target:Vector4):Vector4;
	/**
		Sets the viewport to render from (x, y) to (x + width, y + height).
		(x, y) is the lower-left corner of the region.
	**/
	function setViewport(x:ts.AnyOf2<Float, Vector4>, ?y:Float, ?width:Float, ?height:Float):Void;
	/**
		Copies the scissor area into target.
	**/
	function getScissor(target:Vector4):Vector4;
	/**
		Sets the scissor area from (x, y) to (x + width, y + height).
	**/
	function setScissor(x:ts.AnyOf2<Float, Vector4>, ?y:Float, ?width:Float, ?height:Float):Void;
	/**
		Returns true if scissor test is enabled; returns false otherwise.
	**/
	function getScissorTest():Bool;
	/**
		Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
	**/
	function setScissorTest(enable:Bool):Void;
	/**
		Sets the custom opaque sort function for the WebGLRenderLists. Pass null to use the default painterSortStable function.
	**/
	function setOpaqueSort(method:Null<(a:Dynamic, b:Dynamic) -> Float>):Void;
	/**
		Sets the custom transparent sort function for the WebGLRenderLists. Pass null to use the default reversePainterSortStable function.
	**/
	function setTransparentSort(method:Null<(a:Dynamic, b:Dynamic) -> Float>):Void;
	/**
		Returns a THREE.Color instance with the current clear color.
	**/
	function getClearColor(target:Color):Color;
	/**
		Sets the clear color, using color for the color and alpha for the opacity.
	**/
	function setClearColor(color:ColorRepresentation, ?alpha:Float):Void;
	/**
		Returns a float with the current clear alpha. Ranges from 0 to 1.
	**/
	function getClearAlpha():Float;
	function setClearAlpha(alpha:Float):Void;
	/**
		Tells the renderer to clear its color, depth or stencil drawing buffer(s).
		Arguments default to true
	**/
	function clear(?color:Bool, ?depth:Bool, ?stencil:Bool):Void;
	function clearColor():Void;
	function clearDepth():Void;
	function clearStencil():Void;
	function clearTarget(renderTarget:WebGLRenderTarget<Texture<Any>>, color:Bool, depth:Bool, stencil:Bool):Void;
	function resetGLState():Void;
	function dispose():Void;
	function renderBufferDirect(camera:Camera, scene:Scene<Object3DEventMap>, geometry:BufferGeometry<haxe.DynamicAccess<ts.AnyOf2<BufferAttribute, InterleavedBufferAttribute>>, BufferGeometryEventMap>, material:Material, object:Object3D<Object3DEventMap>, geometryGroup:Dynamic):Void;
	/**
		A build in function that can be used instead of requestAnimationFrame. For WebXR projects this function must be used.
	**/
	function setAnimationLoop(callback:Null<XRFrameRequestCallback>):Void;
	function animate(callback:() -> Void):Void;
	/**
		Compiles all materials in the scene with the camera. This is useful to precompile shaders before the first
		rendering. If you want to add a 3D object to an existing scene, use the third optional parameter for applying the
		target scene.
		Note that the (target) scene's lighting should be configured before calling this method.
	**/
	dynamic function compile(scene:Object3D<Object3DEventMap>, camera:Camera, ?targetScene:Scene<Object3DEventMap>):js.lib.Set<Material>;
	/**
		Asynchronous version of {@link compile}(). The method returns a Promise that resolves when the given scene can be
		rendered without unnecessary stalling due to shader compilation.
		This method makes use of the KHR_parallel_shader_compile WebGL extension.
	**/
	dynamic function compileAsync(scene:Object3D<Object3DEventMap>, camera:Camera, ?targetScene:Scene<Object3DEventMap>):js.lib.Promise<Object3D<Object3DEventMap>>;
	/**
		Render a scene or an object using a camera.
		The render is done to a previously specified {@link WebGLRenderTarget#renderTarget .renderTarget} set by calling
		{@link WebGLRenderer#setRenderTarget .setRenderTarget} or to the canvas as usual.
		
		By default render buffers are cleared before rendering but you can prevent this by setting the property
		{@link WebGLRenderer#autoClear autoClear} to false. If you want to prevent only certain buffers being cleared
		you can set either the {@link WebGLRenderer#autoClearColor autoClearColor},
		{@link WebGLRenderer#autoClearStencil autoClearStencil} or {@link WebGLRenderer#autoClearDepth autoClearDepth}
		properties to false. To forcibly clear one ore more buffers call {@link WebGLRenderer#clear .clear}.
	**/
	function render(scene:Object3D<Object3DEventMap>, camera:Camera):Void;
	/**
		Returns the current active cube face.
	**/
	function getActiveCubeFace():Float;
	/**
		Returns the current active mipmap level.
	**/
	function getActiveMipmapLevel():Float;
	/**
		Returns the current render target. If no render target is set, null is returned.
	**/
	function getRenderTarget():Null<WebGLRenderTarget<Texture<Any>>>;
	function getCurrentRenderTarget():Null<WebGLRenderTarget<Texture<Any>>>;
	/**
		Sets the active render target.
	**/
	function setRenderTarget(renderTarget:Null<ts.AnyOf2<WebGLRenderTarget<Texture<Any>>, WebGLRenderTarget<Array<Texture<Any>>>>>, ?activeCubeFace:Float, ?activeMipmapLevel:Float):Void;
	function readRenderTargetPixels(renderTarget:ts.AnyOf2<WebGLRenderTarget<Texture<Any>>, WebGLRenderTarget<Array<Texture<Any>>>>, x:Float, y:Float, width:Float, height:Float, buffer:TypedArray, ?activeCubeFaceIndex:Float, ?textureIndex:Float):Void;
	function readRenderTargetPixelsAsync(renderTarget:ts.AnyOf2<WebGLRenderTarget<Texture<Any>>, WebGLRenderTarget<Array<Texture<Any>>>>, x:Float, y:Float, width:Float, height:Float, buffer:TypedArray, ?activeCubeFaceIndex:Float, ?textureIndex:Float):js.lib.Promise<TypedArray>;
	/**
		Copies a region of the currently bound framebuffer into the selected mipmap level of the selected texture.
		This region is defined by the size of the destination texture's mip level, offset by the input position.
	**/
	function copyFramebufferToTexture(texture:Texture<Any>, ?position:Vector2, ?level:Float):Void;
	/**
		Copies the pixels of a texture in the bounds [srcRegion]{@link Box3} in the destination texture starting from the
		given position. 2D Texture, 3D Textures, or a mix of the two can be used as source and destination texture
		arguments for copying between layers of 3d textures
		
		The `depthTexture` and `texture` property of render targets are supported as well.
		
		When using render target textures as `srcTexture` and `dstTexture`, you must make sure both render targets are
		initialized e.g. via {@link .initRenderTarget}().
	**/
	function copyTextureToTexture(srcTexture:Texture<Any>, dstTexture:Texture<Any>, ?srcRegion:ts.AnyOf2<Box3, Box2>, ?dstPosition:ts.AnyOf2<Vector2, Vector3>, ?srcLevel:Float, ?dstLevel:Float):Void;
	/**
		Initializes the given WebGLRenderTarget memory. Useful for initializing a render target so data can be copied
		into it using {@link WebGLRenderer.copyTextureToTexture} before it has been rendered to.
	**/
	function initRenderTarget(target:WebGLRenderTarget<Texture<Any>>):Void;
	/**
		Initializes the given texture. Can be used to preload a texture rather than waiting until first render (which can cause noticeable lags due to decode and GPU upload overhead).
	**/
	function initTexture(texture:Texture<Any>):Void;
	/**
		Can be used to reset the internal WebGL state.
	**/
	function resetState():Void;
	var vr : Bool;
	var shadowMapEnabled : Bool;
	var shadowMapType : CullFace;
	var shadowMapCullFace : CullFace;
	function supportsFloatTextures():Dynamic;
	function supportsHalfFloatTextures():Dynamic;
	function supportsStandardDerivatives():Dynamic;
	function supportsCompressedTextureS3TC():Dynamic;
	function supportsCompressedTexturePVRTC():Dynamic;
	function supportsBlendMinMax():Dynamic;
	function supportsVertexTextures():Dynamic;
	function supportsInstancedArrays():Dynamic;
	function enableScissorTest(boolean:Dynamic):Dynamic;
	static var prototype : WebGLRenderer;
}