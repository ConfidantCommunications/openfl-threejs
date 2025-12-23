package three;

/**
	A material for rendering line primitives.
	
	Materials define the appearance of renderable 3D objects.
	
	```js
	const material = new THREE.LineDashedMaterial( {
	 	color: 0xffffff,
	 	scale: 1,
	 	dashSize: 3,
	 	gapSize: 1,
	} );
	```
**/
@:native("THREE.LineDashedMaterial") extern class LineDashedMaterial extends LineBasicMaterial {
	function new(?parameters:LineDashedMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isLineDashedMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:LineDashedMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():LineDashedMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):LineDashedMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineDashedMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineDashedMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, LineDashedMaterial>):Void;
	/**
		The scale of the dashed part of a line.
	**/
	var scale : Float;
	/**
		The size of the dash. This is both the gap with the stroke.
	**/
	var dashSize : Float;
	/**
		The size of the gap.
	**/
	var gapSize : Float;
	static var prototype : LineDashedMaterial;
}