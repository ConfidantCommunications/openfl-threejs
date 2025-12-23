package three;

@:native("THREE.WebGLGeometries") extern class WebGLGeometries {
	function new(gl:js.html.webgl.RenderingContext, attributes:three.WebGLAttributes, info:WebGLInfo);
	function get(object:Object3D<Object3DEventMap>, geometry:BufferGeometry<Dynamic,Dynamic>):BufferGeometry<Dynamic,Dynamic>;
	function update(geometry:BufferGeometry<Dynamic,Dynamic>):Void;
	function getWireframeAttribute(geometry:BufferGeometry<Dynamic,Dynamic>):BufferAttribute;
	static var prototype : WebGLGeometries;
}