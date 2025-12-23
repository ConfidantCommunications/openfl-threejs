package three;

@:native("THREE.WebGLIndexedBufferRenderer") extern class WebGLIndexedBufferRenderer {
	function new(gl:js.html.webgl.RenderingContext, extensions:Dynamic, info:Dynamic);
	dynamic function setMode(value:Dynamic):Void;
	dynamic function setIndex(index:Dynamic):Void;
	dynamic function render(start:Dynamic, count:Float):Void;
	dynamic function renderInstances(start:Dynamic, count:Float, primcount:Float):Void;
	dynamic function renderMultiDraw(starts:js.lib.Int32Array, counts:js.lib.Int32Array, drawCount:Float):Void;
	static var prototype : WebGLIndexedBufferRenderer;
}