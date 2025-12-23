package three;

typedef RenderItem = {
	var id : Float;
	var object : Object3D<Object3DEventMap>;
	var geometry : Null<BufferGeometry<Dynamic,Dynamic>>;//Attributes, TEventMap
	var material : Material;
	var program : WebGLProgram;
	var groupOrder : Float;
	var renderOrder : Float;
	var z : Float;
	var group : Null<Group<Object3DEventMap>>;
};