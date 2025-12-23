package three;

/**
	JavaScript events for custom objects
**/
@:native("THREE.EventDispatcher") extern class EventDispatcher<TEventMap> {
	/**
		Creates {@link THREE.EventDispatcher | EventDispatcher} object.
	**/
	function new();
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, EventDispatcher<TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, EventDispatcher<TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, EventDispatcher<TEventMap>>):Void;
	/**
		Fire an event type.
	**/
	function dispatchEvent<T>(event:Dynamic):Void;
	static var prototype : EventDispatcher<Dynamic>;
}