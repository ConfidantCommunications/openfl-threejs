package three;

/**
	Create a non-positional ( global ) {@link Audio} object.
	This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web {@link Audio} API}.
**/
@:native("THREE.Audio") extern class Audio<NodeType> extends Object3D<Object3DEventMap> {
	/**
		Create a new instance of {@link Audio}
	**/
	function new(listener:AudioListener);
	/**
		A reference to the listener object of this audio.
	**/
	var listener : AudioListener;
	/**
		The {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext} of the {@link AudioListener | listener} given in the constructor.
	**/
	var context : js.html.audio.AudioContext;
	/**
		A {@link https://developer.mozilla.org/en-US/docs/Web/API/GainNode | GainNode} created using
		{@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createGain | AudioContext.createGain}().
	**/
	var gain : js.html.audio.GainNode;
	/**
		Whether to start playback automatically.
	**/
	var autoplay : Bool;
	var buffer : Null<js.html.audio.AudioBuffer>;
	/**
		Modify pitch, measured in cents. +/- 100 is a semitone. +/- 1200 is an octave.
	**/
	var detune : Float;
	var loop : Bool;
	var loopStart : Float;
	var loopEnd : Float;
	/**
		An offset to the time within the {@link Audio} buffer that playback should begin.
		Same as the {@link Audio.offset | offset} parameter of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/start | AudioBufferSourceNode.start()}.
	**/
	var offset : Float;
	/**
		Overrides the duration of the audio. Same as the {@link Audio.duration | duration} parameter of
		{@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/start | AudioBufferSourceNode.start()}.
	**/
	var duration : Null<Float>;
	/**
		Speed of playback.
	**/
	var playbackRate : Float;
	/**
		Whether the {@link Audio} is currently playing.
	**/
	var isPlaying : Bool;
	/**
		Whether playback can be controlled using the {@link Audio.play | play}(), {@link Audio.pause | pause}() etc. methods.
	**/
	var hasPlaybackControl : Bool;
	/**
		Type of the {@link Audio} source.
	**/
	var sourceType : String;
	/**
		An {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode | AudioBufferSourceNode} created using
		{@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createBufferSource | AudioContext.createBufferSource()}.
	**/
	var source : Null<js.html.audio.AudioScheduledSourceNode>;
	/**
		Represents an array of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioNode | AudioNodes}.
		Can be used to apply a variety of low-order filters to create more complex sound effects.
		In most cases, the array contains instances of {@link https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode | BiquadFilterNodes}.
		Filters are set via {@link THREE.Audio.setFilter | Audio.setFilter} or {@link THREE.Audio.setFilters | Audio.setFilters}.
	**/
	var filters : Array<js.html.audio.AudioNode>;
	/**
		Return the {@link Audio.gain | gainNode}.
	**/
	function getOutput():NodeType;
	/**
		Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'audioNode'.
	**/
	function setNodeSource(audioNode:js.html.audio.AudioScheduledSourceNode):Audio<NodeType>;
	/**
		Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement | HTMLMediaElement} as the source of this audio.
	**/
	function setMediaElementSource(mediaElement:js.html.MediaElement):Audio<NodeType>;
	/**
		Applies the given object of type {@link https://developer.mozilla.org/en-US/docs/Web/API/MediaStream | MediaStream} as the source of this audio.
	**/
	function setMediaStreamSource(mediaStream:js.html.MediaStream):Audio<NodeType>;
	/**
		Setup the {@link Audio.source | source} to the audioBuffer, and sets {@link Audio.sourceType | sourceType} to 'buffer'.
	**/
	function setBuffer(audioBuffer:js.html.audio.AudioBuffer):Audio<NodeType>;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, starts playback.
	**/
	function play(?delay:Float):Audio<NodeType>;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is true, pauses playback.
	**/
	function pause():Audio<NodeType>;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, stops playback.
	**/
	function stop(?delay:Float):Audio<NodeType>;
	/**
		Called automatically when playback finished.
	**/
	function onEnded():Void;
	/**
		Connect to the {@link THREE.Audio.source | Audio.source}
	**/
	function connect():Audio<NodeType>;
	/**
		Disconnect from the {@link THREE.Audio.source | Audio.source}
	**/
	function disconnect():Audio<NodeType>;
	/**
		Returns the detuning of oscillation in cents.
	**/
	function getDetune():Float;
	/**
		Defines the detuning of oscillation in cents.
	**/
	function setDetune(value:Float):Audio<NodeType>;
	/**
		Returns the first element of the {@link Audio.filters | filters} array.
	**/
	function getFilter():js.html.audio.AudioNode;
	/**
		Applies a single filter node to the audio.
	**/
	function setFilter(filter:js.html.audio.AudioNode):Audio<NodeType>;
	/**
		Returns the {@link Audio.filters | filters} array.
	**/
	function getFilters():Array<js.html.audio.AudioNode>;
	/**
		Applies an array of filter nodes to the audio.
	**/
	function setFilters(value:Array<js.html.audio.AudioNode>):Audio<NodeType>;
	/**
		Return the value of {@link Audio.playbackRate | playbackRate}.
	**/
	function getPlaybackRate():Float;
	/**
		If {@link Audio.hasPlaybackControl | hasPlaybackControl} is enabled, set the {@link Audio.playbackRate | playbackRate} to `value`.
	**/
	function setPlaybackRate(value:Float):Audio<NodeType>;
	/**
		Return the value of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loop | source.loop} (whether playback should loop).
	**/
	function getLoop():Bool;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loop | source.loop} to `value` (whether playback should loop).
	**/
	function setLoop(value:Bool):Audio<NodeType>;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopStart | source.loopStart} to `value`.
	**/
	function setLoopStart(value:Float):Audio<NodeType>;
	/**
		Set {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode/loopEnd | source.loopEnd} to `value`.
	**/
	function setLoopEnd(value:Float):Audio<NodeType>;
	/**
		Return the current volume.
	**/
	function getVolume():Float;
	/**
		Set the volume.
	**/
	function setVolume(value:Float):Audio<NodeType>;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):Audio<NodeType>;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Audio<NodeType>;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Audio<NodeType>;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):Audio<NodeType>;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):Audio<NodeType>;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):Audio<NodeType>;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):Audio<NodeType>;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):Audio<NodeType>;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):Audio<NodeType>;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):Audio<NodeType>;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Audio<NodeType>;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):Audio<NodeType>;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():Audio<NodeType>;
	/**
		Removes all child objects.
	**/
	function clear():Audio<NodeType>;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):Audio<NodeType>;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):Audio<NodeType>;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):Audio<NodeType>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Audio<NodeType>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Audio<NodeType>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Audio<NodeType>>):Void;
	static var prototype : Audio<Dynamic>;
}