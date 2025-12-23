package three;

/**
	This contains methods for setting up an {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext}.
	Used internally by the {@link AudioListener | AudioListener} and {@link AudioLoader | AudioLoader} classes.
	This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web Audio API}.
**/
@:native("THREE.AudioContext") @valueModuleOnly extern class AudioContext {
	/**
		Return the value of the variable `context` in the outer scope, if defined, otherwise set it to a new {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext}.
	**/
	static function getContext():js.html.audio.AudioContext;
	/**
		Set the variable `context` in the outer scope to `value`.
	**/
	static function setContext(context:js.html.audio.AudioContext):Void;
}