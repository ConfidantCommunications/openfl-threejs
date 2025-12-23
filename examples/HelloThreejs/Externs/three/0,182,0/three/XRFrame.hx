package three;

typedef XRViewerPose = {
	var views:Array<XRView>;
}
typedef XRView = {
	var eye:String;
	var projectionMatrix:Dynamic;
	var transform:Dynamic;
	var isFirstPersonObserver:Bool;
	var recommendedViewportScale:Float;
	function requestViewportScale(val:Float):Void;
}
@:native("THREE.XRFrame") extern class XRFrame {
	public function getHitTestResultsForTransientInput(hitSource:Dynamic):Array<Dynamic>;
	public function getHitTestResults(hitSource:Dynamic):Array<Dynamic>;
	public function getViewerPose(refSpace:Dynamic):XRViewerPose;//pose has views
	public var session:XRSession;
}