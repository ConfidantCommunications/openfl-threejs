package;

import openfl.display.Sprite;
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
		

		if( stage.stage3Ds.length > 0 )
			{
				var stage3D:Stage3D = stage.stage3Ds[0];
				stage3D.addEventListener( Event.CONTEXT3D_CREATE, myContext3DHandler );
				stage3D.requestContext3D( );
			}
	
			
	}
	private function myContext3DHandler ( event : Event ) : Void {
		var targetStage3D : Stage3D = cast event.target;
		// InitAll3DResources( targetStage3D.context3D );
		// StartRendering( targetStage3D.context3D );
		var webGLRenderContext:Dynamic = @:privateAccess targetStage3D.context3D.gl;
		/* cn.getContextAttributes = function() {
			return {
				alpha:1
			}
		} */
		init(webGLRenderContext);
	}
	public function init(context3D:Context3D):Void
	{
		trace("init");
		var width = stage.stageWidth;
		var height = stage.stageHeight;


		// var stage3DManager = Stage3DManager.getInstance(stage);
		
		// init
		
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
			// context: untyped stage3DManager.getFreeStage3DProxy().context3D,
			// context: untyped stage3DManager.getFreeStage3DProxy().requestContext3D(),
			powerPreference: "high-performance",
			failIfMajorPerformanceCaveat: false,
			alpha: true
		});
		
		// var renderer = new THREE.WebGLRenderer( { antialias: true } );
		renderer.setSize( width, height );
		renderer.setAnimationLoop( cast animate );
		
		// , stage3DManager:Stage3DManager
		// document.body.appendChild( renderer.domElement );


		// var threeView = new ThreeView(scene, renderer, stage3DManager);
		// addChild(threeView);
	}
	// animation
	
	private function animate( time ) {
	
		mesh.rotation.x = time / 2000;
		mesh.rotation.y = time / 1000;
	
		renderer.render( scene, camera );
	
	}
}

