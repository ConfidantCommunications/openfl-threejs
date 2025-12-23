package three;

/**
	Create a positional audio object.
	This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web Audio API}.
**/
@:native("THREE.PositionalAudio") extern class PositionalAudio extends Audio<js.html.audio.PannerNode> {
	/**
		Create a new instance of {@link PositionalAudio}
	**/
	function new(listener:AudioListener);
	/**
		The PositionalAudio's {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode | PannerNode}.
	**/
	var panner : js.html.audio.PannerNode;
	/**
		Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/refDistance | panner.refDistance}.
	**/
	function getRefDistance():Float;
	/**
		Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/refDistance | panner.refDistance}.
	**/
	function setRefDistance(value:Float):PositionalAudio;
	/**
		Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/rolloffFactor | panner.rolloffFactor}.
	**/
	function getRolloffFactor():Float;
	/**
		Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/rolloffFactor | panner.rolloffFactor}.
	**/
	function setRolloffFactor(value:Float):PositionalAudio;
	/**
		Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/distanceModel | panner.distanceModel}.
	**/
	function getDistanceModel():String;
	/**
		Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/distanceModel | panner.distanceModel}.
	**/
	function setDistanceModel(value:String):PositionalAudio;
	/**
		Returns the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/maxDistance | panner.maxDistance}.
	**/
	function getMaxDistance():Float;
	/**
		Sets the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/maxDistance | panner.maxDistance}.
	**/
	function setMaxDistance(value:Float):PositionalAudio;
	/**
		This method can be used in order to transform an omnidirectional sound into a {@link https://developer.mozilla.org/en-US/docs/Web/API/PannerNode | directional sound}.
	**/
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float):PositionalAudio;
	/**
		Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'audioNode'.
	**/
	function setNodeSource(audioNode:js.html.audio.AudioScheduledSourceNode):PositionalAudio;
	/**
		Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement | HTMLMediaElement} as the source of this audio.
	**/
	function setMediaElementSource(mediaElement:js.html.MediaElement):PositionalAudio;
	/**
		Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/MediaStream | MediaStream} as the source of this audio.
	**/
	function setMediaStreamSource(mediaStream:js.html.MediaStream):PositionalAudio;
	/**
		Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'buffer'.
	**/
	function setBuffer(audioBuffer:js.html.audio.AudioBuffer):PositionalAudio;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, starts playback.
	**/
	function play(?delay:Float):PositionalAudio;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, pauses playback.
	**/
	function pause():PositionalAudio;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, stops playback.
	**/
	function stop(?delay:Float):PositionalAudio;
	/**
		Connect to the {@link THREE.Audio.source | Audio.source}
	**/
	function connect():PositionalAudio;
	/**
		Disconnect from the {@link THREE.Audio.source | Audio.source}
	**/
	function disconnect():PositionalAudio;
	/**
		Defines the detuning of oscillation in cents.
	**/
	function setDetune(value:Float):PositionalAudio;
	/**
		Applies a single filter node to the audio.
	**/
	function setFilter(filter:js.html.audio.AudioNode):PositionalAudio;
	/**
		Applies an array of filter nodes to the audio.
	**/
	function setFilters(value:Array<js.html.audio.AudioNode>):PositionalAudio;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, set the {@link Audio.playbackRate | playbackRate} to `value`.
	**/
	function setPlaybackRate(value:Float):PositionalAudio;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loop | source.loop} to `value` (whether playback should loop).
	**/
	function setLoop(value:Bool):PositionalAudio;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopStart | source.loopStart} to `value`.
	**/
	function setLoopStart(value:Float):PositionalAudio;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopEnd | source.loopEnd} to `value`.
	**/
	function setLoopEnd(value:Float):PositionalAudio;
	/**
		Set the volume.
	**/
	function setVolume(value:Float):PositionalAudio;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PositionalAudio;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PositionalAudio;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PositionalAudio;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PositionalAudio;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PositionalAudio;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PositionalAudio;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PositionalAudio;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PositionalAudio;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PositionalAudio;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PositionalAudio;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PositionalAudio;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PositionalAudio;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PositionalAudio;
	/**
		Removes all child objects.
	**/
	function clear():PositionalAudio;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PositionalAudio;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PositionalAudio;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):PositionalAudio;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PositionalAudio>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PositionalAudio>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PositionalAudio>):Void;
	static var prototype : PositionalAudio;
}