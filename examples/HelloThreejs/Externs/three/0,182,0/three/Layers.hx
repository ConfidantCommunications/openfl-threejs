package three;

/**
	A {@link THREE.Layers | Layers} object assigns an {@link THREE.Object3D | Object3D} to 1 or more of 32 layers numbered `0` to `31` - internally the
	layers are stored as a {@link https://en.wikipedia.org/wiki/Mask_(computing) | bit mask}, and
	by default all Object3Ds are a member of layer `0`.
**/
@:native("THREE.Layers") extern class Layers {
	/**
		Create a new Layers object, with membership initially set to layer 0.
	**/
	function new();
	/**
		A bit mask storing which of the 32 layers this layers object is currently a member of.
	**/
	var mask : Float;
	/**
		Set membership to `layer`, and remove membership all other layers.
	**/
	function set(layer:Float):Void;
	/**
		Add membership of this `layer`.
	**/
	function enable(layer:Float):Void;
	/**
		Add membership to all layers.
	**/
	function enableAll():Void;
	/**
		Toggle membership of `layer`.
	**/
	function toggle(layer:Float):Void;
	/**
		Remove membership of this `layer`.
	**/
	function disable(layer:Float):Void;
	/**
		Remove membership from all layers.
	**/
	function disableAll():Void;
	/**
		Returns true if this and the passed `layers` object have at least one layer in common.
	**/
	function test(layers:Layers):Bool;
	/**
		Returns true if the given layer is enabled.
	**/
	function isEnabled(layer:Float):Bool;
	static var prototype : Layers;
}