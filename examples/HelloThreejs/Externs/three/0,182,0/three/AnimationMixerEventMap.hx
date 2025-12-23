package three;

typedef AnimationMixerEventMap = {
	var loop : {
		var action : AnimationAction;
		var loopDelta : Float;
	};
	var finished : {
		var action : AnimationAction;
		var direction : Float;
	};
};