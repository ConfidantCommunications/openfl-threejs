package;

import openfl.display.Sprite;
import openfl.display.*;
import openfl.display3D.Context3D;
import openfl.display.Stage3D;
import openfl.events.Event;
import three.*;

import Stage3DManager;

class Main extends Sprite
{
	var scene:Scene<Dynamic>;//<TEventMap>
	var mesh:Mesh<Dynamic, Dynamic, Dynamic>;
	var camera:PerspectiveCamera;
	var renderer:Dynamic;//WebGLRenderer;
	public function new()
	{
		super();
		

		if( stage.stage3Ds.length > 0 ) {
			var stage3D:Stage3D = stage.stage3Ds[0];
			stage3D.addEventListener( Event.CONTEXT3D_CREATE, myContext3DHandler );
			stage3D.requestContext3D( );
		}
			
	}
	private function myContext3DHandler ( event : Event ) : Void {
		var targetStage3D : Stage3D = cast event.target;
		var webGLRenderContext:Dynamic = @:privateAccess targetStage3D.context3D.gl;
		init(webGLRenderContext);
		// addGraphics();
	}
	public function init(context3D:Context3D):Void
	{
		trace("init");
		var width = stage.stageWidth;
		var height = stage.stageHeight;

		
		camera = new PerspectiveCamera( 70, width / height, 0.01, 10 );
		camera.position.z = 1;
		
		
		scene = new Scene(); 
		
		var geometry = new BoxGeometry( 0.2, 0.2, 0.2 );
		var material = new MeshNormalMaterial();

		var width = stage.stageWidth;
		var height = stage.stageHeight;
		trace("stage size: " + width + "x" + height);
		
		mesh = new Mesh<Dynamic, Dynamic, Dynamic>( geometry, material );
		scene.add( untyped mesh );

		renderer = untyped new WebGLRenderer({
			antialias: true,
			context: context3D,
			powerPreference: "high-performance",
			failIfMajorPerformanceCaveat: false,
			alpha: true
		});
		
		renderer.setSize( width, height );
		renderer.setAnimationLoop( cast animate );
	}
	private function addGraphics():Void
	{
		var spr:Sprite = new Sprite();
		spr.graphics.beginFill(0x4545CD, 1);
		spr.graphics.drawRect(0, 0, 100,100);
		spr.graphics.endFill();
		addChild(spr);
	}
	
	private function animate( time ) {
	
		mesh.rotation.x = time / 2000;
		mesh.rotation.y = time / 1000;
	
		renderer.render( scene, camera );
	
	}
}

