package three;

typedef Effect = {
	function setSize(width:Float, height:Float):Void;
	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget<Texture<Any>>, readBuffer:WebGLRenderTarget<Texture<Any>>, deltaTime:Float, maskActive:Bool):Void;
};