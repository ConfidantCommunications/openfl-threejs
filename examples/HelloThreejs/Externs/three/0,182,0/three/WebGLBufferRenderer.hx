package three;

@:native("THREE.WebGLBufferRenderer") extern class WebGLBufferRenderer {
	function new(gl:js.html.webgl.RenderingContext, extensions:WebGLExtensions, info:WebGLInfo);
	dynamic function setMode(value:Dynamic):Void;
	dynamic function render(start:Dynamic, count:Float):Void;
	dynamic function renderInstances(start:Dynamic, count:Float, primcount:Float):Void;
	dynamic function renderMultiDraw(starts:js.lib.Int32Array, counts:js.lib.Int32Array, drawCount:Float):Void;
	static var prototype : WebGLBufferRenderer;
}