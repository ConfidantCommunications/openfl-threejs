package three;

/**
	Create a {@link AudioAnalyser} object, which uses an {@link https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode | AnalyserNode} to analyse audio data.
	This uses the {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API | Web Audio API}.
**/
@:native("THREE.AudioAnalyser") extern class AudioAnalyser {
	/**
		Create a new {@link {@link AudioAnalyser} | AudioAnalyser}.
	**/
	function new(audio:Audio<js.html.audio.AudioNode>, ?fftSize:Float);
	/**
		An {@link https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode | AnalyserNode} used to analyze audio.
	**/
	var analyser : js.html.audio.AnalyserNode;
	/**
		A Uint8Array with size determined by {@link https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/frequencyBinCount | analyser.frequencyBinCount} used to hold analysis data.
	**/
	var data : js.lib.Uint8Array;
	/**
		Uses the Web Audio's {@link https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode/getByteFrequencyData | getByteFrequencyData} method
	**/
	function getFrequencyData():js.lib.Uint8Array;
	/**
		Get the average of the frequencies returned by the {@link AudioAnalyser.getFrequencyData | getFrequencyData} method.
	**/
	function getAverageFrequency():Float;
	static var prototype : AudioAnalyser;
}