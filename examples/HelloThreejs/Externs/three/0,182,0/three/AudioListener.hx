package three;

/**
	The {@link AudioListener} represents a virtual {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioListener | listener} of the all positional and non-positional audio effects in the scene.
	A three.js application usually creates a single instance of {@link AudioListener}  * @remarks
	It is a mandatory constructor parameter for audios entities like {@link Audio | Audio} and {@link PositionalAudio | PositionalAudio}.
	In most cases, the listener object is a child of the camera
	So the 3D transformation of the camera represents the 3D transformation of the listener.
**/
@:native("THREE.AudioListener") extern class AudioListener extends Object3D<Object3DEventMap> {
	/**
		Create a new AudioListener.
	**/
	function new();
	/**
		The {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext | AudioContext} of the {@link {@link AudioListener} | listener} given in the constructor.
	**/
	var context : js.html.audio.AudioContext;
	/**
		A {@link https://developer.mozilla.org/en-US/docs/Web/API/GainNode | GainNode} created using
		{@link https://developer.mozilla.org/en-US/docs/Web/API/AudioContext/createGain | AudioContext.createGain()}.
	**/
	var gain : js.html.audio.GainNode;
	var filter : js.html.audio.AudioNode;
	/**
		Time delta value for audio entities. Use in context of {@link https://developer.mozilla.org/en-US/docs/Web/API/AudioParam/linearRampToValueAtTime | AudioParam.linearRampToValueAtTimeDefault()}.
	**/
	var timeDelta : Float;
	/**
		Return the {@link AudioListener.gain | gainNode}.
	**/
	function getInput():js.html.audio.GainNode;
	/**
		Set the {@link AudioListener.filter | filter} property to `null`.
	**/
	function removeFilter():AudioListener;
	/**
		Returns the value of the {@link AudioListener.filter | filter} property.
	**/
	function getFilter():js.html.audio.AudioNode;
	/**
		Set the {@link AudioListener.filter | filter} property to `value`.
	**/
	function setFilter(value:js.html.audio.AudioNode):AudioListener;
	/**
		Return the volume.
	**/
	function getMasterVolume():Float;
	/**
		Set the volume.
	**/
	function setMasterVolume(value:Float):AudioListener;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):AudioListener;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AudioListener;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AudioListener;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):AudioListener;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):AudioListener;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):AudioListener;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):AudioListener;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):AudioListener;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):AudioListener;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):AudioListener;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):AudioListener;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):AudioListener;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():AudioListener;
	/**
		Removes all child objects.
	**/
	function clear():AudioListener;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):AudioListener;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):AudioListener;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):AudioListener;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, AudioListener>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, AudioListener>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, AudioListener>):Void;
	static var prototype : AudioListener;
}