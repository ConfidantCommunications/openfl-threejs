package three;

/**
	Object for keeping track of time. This uses
	[performance.now]{@link https://developer.mozilla.org/en-US/docs/Web/API/Performance/now}.
**/
@:native("THREE.Clock") extern class Clock {
	/**
		Create a new instance of {@link THREE.Clock | Clock}
	**/
	function new(?autoStart:Bool);
	/**
		If set, starts the clock automatically when {@link getDelta | .getDelta()} is called for the first time.
	**/
	var autoStart : Bool;
	/**
		Holds the time at which the clock's {@link start | .start()} method was last called.
	**/
	var startTime : Float;
	/**
		Holds the time at which the clock's {@link start | .start()}, {@link getElapsedTime | .getElapsedTime()} or {@link getDelta | .getDelta()} methods were last called.
	**/
	var oldTime : Float;
	/**
		Keeps track of the total time that the clock has been running.
	**/
	var elapsedTime : Float;
	/**
		Whether the clock is running or not.
	**/
	var running : Bool;
	/**
		Starts clock.
	**/
	function start():Void;
	/**
		Stops clock and sets {@link oldTime | oldTime} to the current time.
	**/
	function stop():Void;
	/**
		Get the seconds passed since the clock started and sets {@link oldTime | .oldTime} to the current time.
	**/
	function getElapsedTime():Float;
	/**
		Get the seconds passed since the time {@link oldTime | .oldTime} was set and sets {@link oldTime | .oldTime} to the current time.
	**/
	function getDelta():Float;
	static var prototype : Clock;
}