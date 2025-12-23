package three;

typedef CubeCameraRenderer = {
	var coordinateSystem : CoordinateSystem;
	function getRenderTarget():Null<RenderTarget<Texture<Any>>>;
	function getActiveCubeFace():Float;
	function getActiveMipmapLevel():Float;
	var xr : {
		var enabled : Bool;
	};
	function setRenderTarget(renderTarget:Null<WebGLCubeRenderTarget>, ?activeCubeFace:Float, ?activeMipmapLevel:Float):Void;
	function render(scene:Object3D<Object3DEventMap>, camera:Camera):Void;
};