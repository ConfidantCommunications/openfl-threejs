package three;

@:native("THREE.WebGLUtils") extern class WebGLUtils {
	function new(gl:ts.AnyOf2<js.html.webgl.RenderingContext, js.html.webgl.WebGL2RenderingContext>, extensions:three.WebGLExtensions);
	function convert(p:Int, ?colorSpace:String):Null<Float>;
	static var prototype : WebGLUtils;
}