package three;

/**
	Abstract base class for controls.
**/
@:native("THREE.Controls") extern class Controls<TEventMap> extends EventDispatcher<TEventMap> {
	/**
		Creates a new instance of {@link Controls}.
	**/
	function new(object:Object3D<Object3DEventMap>, ?domElement:ts.AnyOf2<js.html.Element, js.html.svg.Element>);
	/**
		The 3D object that is managed by the controls.
	**/
	var object : Object3D<Object3DEventMap>;
	/**
		The HTML element used for event listeners. If not provided via the constructor, {@link .connect} must be called
		after `domElement` has been set.
	**/
	var domElement : Null<ts.AnyOf2<js.html.Element, js.html.svg.Element>>;
	/**
		When set to `false`, the controls will not respond to user input. Default is `true`.
	**/
	var enabled : Bool;
	/**
		Connects the controls to the DOM. This method has so called "side effects" since it adds the module's event
		listeners to the DOM.
	**/
	function connect(element:ts.AnyOf2<js.html.Element, js.html.svg.Element>):Void;
	/**
		Disconnects the controls from the DOM.
	**/
	function disconnect():Void;
	/**
		Call this method if you no longer want use to the controls. It frees all internal resources and removes all event
		listeners.
	**/
	function dispose():Void;
	/**
		Controls should implement this method if they have to update their internal state per simulation step.
	**/
	function update(delta:Float):Void;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, Controls<TEventMap>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, Controls<TEventMap>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, Controls<TEventMap>>):Void;
	static var prototype : Controls<Dynamic>;
}