package three;

@:native("THREE.XRHandSpace") extern class XRHandSpace extends Group<WebXRSpaceEventMap> {
	final joints : {
		@:optional
		var wrist : XRJointSpace;
		@:optional
		@:native("thumb-metacarpal")
		var thumb_metacarpal : XRJointSpace;
		@:optional
		@:native("thumb-phalanx-proximal")
		var thumb_phalanx_proximal : XRJointSpace;
		@:optional
		@:native("thumb-phalanx-distal")
		var thumb_phalanx_distal : XRJointSpace;
		@:optional
		@:native("thumb-tip")
		var thumb_tip : XRJointSpace;
		@:optional
		@:native("index-finger-metacarpal")
		var index_finger_metacarpal : XRJointSpace;
		@:optional
		@:native("index-finger-phalanx-proximal")
		var index_finger_phalanx_proximal : XRJointSpace;
		@:optional
		@:native("index-finger-phalanx-intermediate")
		var index_finger_phalanx_intermediate : XRJointSpace;
		@:optional
		@:native("index-finger-phalanx-distal")
		var index_finger_phalanx_distal : XRJointSpace;
		@:optional
		@:native("index-finger-tip")
		var index_finger_tip : XRJointSpace;
		@:optional
		@:native("middle-finger-metacarpal")
		var middle_finger_metacarpal : XRJointSpace;
		@:optional
		@:native("middle-finger-phalanx-proximal")
		var middle_finger_phalanx_proximal : XRJointSpace;
		@:optional
		@:native("middle-finger-phalanx-intermediate")
		var middle_finger_phalanx_intermediate : XRJointSpace;
		@:optional
		@:native("middle-finger-phalanx-distal")
		var middle_finger_phalanx_distal : XRJointSpace;
		@:optional
		@:native("middle-finger-tip")
		var middle_finger_tip : XRJointSpace;
		@:optional
		@:native("ring-finger-metacarpal")
		var ring_finger_metacarpal : XRJointSpace;
		@:optional
		@:native("ring-finger-phalanx-proximal")
		var ring_finger_phalanx_proximal : XRJointSpace;
		@:optional
		@:native("ring-finger-phalanx-intermediate")
		var ring_finger_phalanx_intermediate : XRJointSpace;
		@:optional
		@:native("ring-finger-phalanx-distal")
		var ring_finger_phalanx_distal : XRJointSpace;
		@:optional
		@:native("ring-finger-tip")
		var ring_finger_tip : XRJointSpace;
		@:optional
		@:native("pinky-finger-metacarpal")
		var pinky_finger_metacarpal : XRJointSpace;
		@:optional
		@:native("pinky-finger-phalanx-proximal")
		var pinky_finger_phalanx_proximal : XRJointSpace;
		@:optional
		@:native("pinky-finger-phalanx-intermediate")
		var pinky_finger_phalanx_intermediate : XRJointSpace;
		@:optional
		@:native("pinky-finger-phalanx-distal")
		var pinky_finger_phalanx_distal : XRJointSpace;
		@:optional
		@:native("pinky-finger-tip")
		var pinky_finger_tip : XRJointSpace;
	};
	final inputState : XRHandInputState;
	/**
		Applies the rotation represented by the quaternion to the object.
	**/
	function applyQuaternion(quaternion:Quaternion):XRHandSpace;
	/**
		Rotate an object along an axis in object space.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):XRHandSpace;
	/**
		Rotate an object along an axis in world space.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):XRHandSpace;
	/**
		Rotates the object around _x_ axis in local space.
	**/
	function rotateX(angle:Float):XRHandSpace;
	/**
		Rotates the object around _y_ axis in local space.
	**/
	function rotateY(angle:Float):XRHandSpace;
	/**
		Rotates the object around _z_ axis in local space.
	**/
	function rotateZ(angle:Float):XRHandSpace;
	/**
		Translate an object by distance along an axis in object space
	**/
	function translateOnAxis(axis:Vector3, distance:Float):XRHandSpace;
	/**
		Translates object along x axis in object space by {@link distance} units.
	**/
	function translateX(distance:Float):XRHandSpace;
	/**
		Translates object along _y_ axis in object space by {@link distance} units.
	**/
	function translateY(distance:Float):XRHandSpace;
	/**
		Translates object along _z_ axis in object space by {@link distance} units.
	**/
	function translateZ(distance:Float):XRHandSpace;
	/**
		Adds another {@link Object3D} as child of this {@link Object3D}.
	**/
	function add(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRHandSpace;
	/**
		Removes a {@link Object3D} as child of this {@link Object3D}.
	**/
	function remove(object:haxe.extern.Rest<Object3D<Object3DEventMap>>):XRHandSpace;
	/**
		Removes this object from its current parent.
	**/
	function removeFromParent():XRHandSpace;
	/**
		Removes all child objects.
	**/
	function clear():XRHandSpace;
	/**
		Adds a {@link Object3D} as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D<Object3DEventMap>):XRHandSpace;
	/**
		Returns a clone of `this` object and optionally all descendants.
	**/
	function clone(?recursive:Bool):XRHandSpace;
	/**
		Copies the given object into this object.
	**/
	function copy(object:Object3D<Object3DEventMap>, ?recursive:Bool):XRHandSpace;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRHandSpace>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRHandSpace>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, XRHandSpace>):Void;
	static var prototype : XRHandSpace;
}