package three;

/**
	Camera that uses {@link https://en.wikipedia.org/wiki/Perspective_(graphical) | perspective projection}.
	This projection mode is designed to mimic the way the human eye sees
**/
@:native("THREE.PerspectiveCamera") extern class PerspectiveCamera extends Camera {
	/**
		Creates a new {@link PerspectiveCamera}.
	**/
	function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float);
	/**
		Read-only flag to check if a given object is of type {@link Camera}.
	**/
	final isPerspectiveCamera : Bool;
	/**
		Gets or sets the zoom factor of the camera.
	**/
	var zoom : Float;
	/**
		Camera frustum vertical field of view, from bottom to top of view, in degrees.
	**/
	var fov : Float;
	/**
		Camera frustum aspect ratio, usually the canvas width / canvas height.
	**/
	var aspect : Float;
	/**
		Camera frustum near plane.
	**/
	var near : Float;
	/**
		Camera frustum far plane.
	**/
	var far : Float;
	/**
		Object distance used for stereoscopy and depth-of-field effects.
	**/
	var focus : Float;
	/**
		Frustum window specification or null.
		This is set using the {@link setViewOffset | .setViewOffset} method and cleared using {@link clearViewOffset | .clearViewOffset}.
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
		Film size used for the larger axis.
		This parameter does not influence the projection matrix unless {@link filmOffset | .filmOffset} is set to a nonzero value.
	**/
	var filmGauge : Float;
	/**
		Horizontal off-center offset in the same unit as {@link filmGauge | .filmGauge}.
	**/
	var filmOffset : Float;
	/**
		Returns the focal length of the current {@link .fov | fov} in respect to {@link filmGauge | .filmGauge}.
	**/
	function getFocalLength():Float;
	/**
		Sets the FOV by focal length in respect to the current {@link filmGauge | .filmGauge}.
	**/
	function setFocalLength(focalLength:Float):Void;
	/**
		Returns the current vertical field of view angle in degrees considering {@link zoom | .zoom}.
	**/
	function getEffectiveFOV():Float;
	/**
		Returns the width of the image on the film
	**/
	function getFilmWidth():Float;
	/**
		Returns the height of the image on the film
	**/
	function getFilmHeight():Float;
	/**
		Computes the 2D bounds of the camera's viewable rectangle at a given distance along the viewing direction.
		Sets minTarget and maxTarget to the coordinates of the lower-left and upper-right corners of the view rectangle.
	**/
	function getViewBounds(distance:Float, minTarget:Vector2, maxTarget:Vector2):Void;
	/**
		Computes the width and height of the camera's viewable rectangle at a given distance along the viewing direction.
		Copies the result into the target Vector2, where x is width and y is height.
	**/
	function getViewSize(distance:Float, target:Vector2):Vector2;
	/**
		Sets an offset in a larger frustum.
	**/
	function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float):Void;
	/**
		Removes any offset set by the {@link setViewOffset | .setViewOffset} method.
	**/
	function clearViewOffset():Void;
	/**
		Updates the camera projection matrix
	**/
	function updateProjectionMatrix():Void;
	function setLens(focalLength:Float, ?frameHeight:Float):Void;
	/**
		Convert the object to three.js {@link https://github.com/mrdoob/three.js/wiki/JSON-Object-Scene-format-4 | JSON Object/Scene format}.
	**/
	function toJSON(?meta:JSONMeta):PerspectiveCameraJSON;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):PerspectiveCamera;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PerspectiveCamera;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PerspectiveCamera;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):PerspectiveCamera;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):PerspectiveCamera;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):PerspectiveCamera;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):PerspectiveCamera;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):PerspectiveCamera;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):PerspectiveCamera;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):PerspectiveCamera;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PerspectiveCamera;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):PerspectiveCamera;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():PerspectiveCamera;
	/**
		Removes all child objects.
	**/
	function clear():PerspectiveCamera;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):PerspectiveCamera;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):PerspectiveCamera;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):PerspectiveCamera;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, PerspectiveCamera>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, PerspectiveCamera>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, PerspectiveCamera>):Void;
	static var prototype : PerspectiveCamera;
}