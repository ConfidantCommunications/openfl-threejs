package three;

typedef AnimationClipJSON = {
	var name : String;
	var duration : Float;
	var tracks : Array<KeyframeTrackJSON>;
	var uuid : String;
	var blendMode : AnimationBlendMode;
};