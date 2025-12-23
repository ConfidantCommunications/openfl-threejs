package three;

/**
	This material can receive shadows, but otherwise is completely transparent.
	
	```js
	const geometry = new THREE.PlaneGeometry( 2000, 2000 );
	geometry.rotateX( - Math.PI / 2 );
	
	const material = new THREE.ShadowMaterial();
	material.opacity = 0.2;
	
	const plane = new THREE.Mesh( geometry, material );
	plane.position.y = -200;
	plane.receiveShadow = true;
	scene.add( plane );
	```
**/
@:native("THREE.ShadowMaterial") extern class ShadowMaterial extends Material {
	/**
		Constructs a new shadow material.
	**/
	function new(?parameters:ShadowMaterialParameters);
	/**
		This flag can be used for type testing.
	**/
	final isShadowMaterial : Bool;
	/**
		This method can be used to set default values from parameter objects.
		It is a generic implementation so it can be used with different types
		of materials.
	**/
	function setValues(?values:ShadowMaterialParameters):Void;
	/**
		Returns a new material with copied values from this instance.
	**/
	function clone():ShadowMaterial;
	/**
		Copies the values of the given material to this instance.
	**/
	function copy(source:Material):ShadowMaterial;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShadowMaterial>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShadowMaterial>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, ShadowMaterial>):Void;
	/**
		Color of the material.
	**/
	var color : Color;
	/**
		Whether the material is affected by fog or not.
	**/
	var fog : Bool;
	static var prototype : ShadowMaterial;
}