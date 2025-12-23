package three;

/**
	Serves as a base class for the other shadow classes.
**/
@:native("THREE.LightShadow") extern class LightShadow<TCamera> {
	/**
		Create a new instance of {@link LightShadow}
	**/
	function new(camera:TCamera);
	/**
		The light's view of the world.
	**/
	var camera : TCamera;
	/**
		Shadow map bias, how much to add or subtract from the normalized depth when deciding whether a surface is in shadow.
	**/
	var bias : Float;
	/**
		Defines how much the position used to query the shadow map is offset along the object normal.
	**/
	var normalBias : Float;
	/**
		Setting this to values greater than 1 will blur the edges of the shadow.toi
	**/
	var radius : Float;
	/**
		The amount of samples to use when blurring a VSM shadow map.
	**/
	var blurSamples : Float;
	/**
		A {@link THREE.Vector2 | Vector2} defining the width and height of the shadow map.
	**/
	var mapSize : Vector2;
	/**
		The depth map generated using the internal camera; a location beyond a pixel's depth is in shadow. Computed internally during rendering.
	**/
	var map : Null<WebGLRenderTarget<Texture<Any>>>;
	/**
		The distribution map generated using the internal camera; an occlusion is calculated based on the distribution of depths. Computed internally during rendering.
	**/
	var mapPass : Null<WebGLRenderTarget<Texture<Any>>>;
	/**
		Model to shadow camera space, to compute location and depth in shadow map.
		Stored in a {@link Matrix4 | Matrix4}.
	**/
	var matrix : Matrix4;
	/**
		Enables automatic updates of the light's shadow. If you do not require dynamic lighting / shadows, you may set this to `false`.
	**/
	var autoUpdate : Bool;
	/**
		When set to `true`, shadow maps will be updated in the next `render` call.
		If you have set {@link autoUpdate} to `false`, you will need to set this property to `true` and then make a render call to update the light's shadow.
	**/
	var needsUpdate : Bool;
	/**
		Used internally by the renderer to get the number of viewports that need to be rendered for this shadow.
	**/
	function getViewportCount():Float;
	/**
		Copies value of all the properties from the {@link {@link LightShadow} | source} to this Light.
	**/
	function copy(source:LightShadow<Camera>):LightShadow<TCamera>;
	/**
		Creates a new {@link LightShadow} with the same properties as this one.
	**/
	function clone(?recursive:Bool):LightShadow<TCamera>;
	/**
		Serialize this LightShadow.
	**/
	function toJSON():{ };
	/**
		Gets the shadow cameras frustum
	**/
	function getFrustum():Frustum;
	/**
		Update the matrices for the camera and shadow, used internally by the renderer.
	**/
	function updateMatrices(light:Light<Null<LightShadow<Camera>>>):Void;
	function getViewport(viewportIndex:Float):Vector4;
	/**
		Used internally by the renderer to extend the shadow map to contain all viewports
	**/
	function getFrameExtents():Vector2;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	static var prototype : LightShadow<Dynamic>;
}