package three;

/**
	Camera that uses {@link https://en.wikipedia.org/wiki/Orthographic_projection | orthographic projection}.
	In this projection mode, an object's size in the rendered image stays constant regardless of its distance from the camera.
	This can be useful for rendering 2D scenes and UI elements, amongst other things.
**/
@:native("THREE.OrthographicCamera") extern class OrthographicCamera extends Camera {
	/**
		Creates a new {@link OrthographicCamera}.
	**/
	function new(?left:Float, ?right:Float, ?top:Float, ?bottom:Float, ?near:Float, ?far:Float);
	/**
		Read-only flag to check if a given object is of type {@link OrthographicCamera}.
	**/
	final isOrthographicCamera : Bool;
	/**
		Gets or sets the zoom factor of the camera.
	**/
	var zoom : Float;
	/**
		Set by {@link setViewOffset | .setViewOffset()}.
	**/
	var view : Null<{
		var enabled : Bool;
		var fullWidth : Float;
		var fullHeight : Float;
		var offsetX : Float;
		var offsetY : Float;
		var width : Float;
		var height : Float;
	}>;
	/**
		Camera frustum left plane.
	**/
	var left : Float;
	/**
		Camera frustum right plane.
	**/
	var right : Float;
	/**
		Camera frustum top plane.
	**/
	var top : Float;
	/**
		Camera frustum bottom plane.
	**/
	var bottom : Float;
	/**
		Camera frustum near plane.`.
	**/
	var near : Float;
	/**
		Camera frustum far plane.
	**/
	var far : Float;
	/**
		Updates the camera projection matrix
	**/
	function updateProjectionMatrix():Void;
	/**
		Sets an offset in a larger {@link https://en.wikipedia.org/wiki/Viewing_frustum | viewing frustum}
	**/
	function setViewOffset(fullWidth:Float, fullHeight:Float, offsetX:Float, offsetY:Float, width:Float, height:Float):Void;
	/**
		Removes any offset set by the {@link setViewOffset | .setViewOffset} method.
	**/
	function clearViewOffset():Void;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):OrthographicCameraJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):OrthographicCamera;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):OrthographicCamera;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):OrthographicCamera;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):OrthographicCamera;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):OrthographicCamera;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):OrthographicCamera;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):OrthographicCamera;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):OrthographicCamera;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):OrthographicCamera;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):OrthographicCamera;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):OrthographicCamera;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):OrthographicCamera;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():OrthographicCamera;
	/**
		Removes all child objects.
	**/
	function clear():OrthographicCamera;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):OrthographicCamera;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):OrthographicCamera;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):OrthographicCamera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, OrthographicCamera>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, OrthographicCamera>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, OrthographicCamera>):Void;
	static var prototype : OrthographicCamera;
}