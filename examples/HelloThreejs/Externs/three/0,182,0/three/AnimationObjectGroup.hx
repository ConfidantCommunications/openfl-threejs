package three;

/**
	A group of objects that receives a shared animation state.
	
	Usage:
	
	- Add objects you would otherwise pass as 'root' to the
	constructor or the .clipAction method of AnimationMixer.
	- Instead pass this object as 'root'.
	- You can also add and remove objects later when the mixer is running.
	
	Note:
	
	- Objects of this class appear as one object to the mixer,
	so cache control of the individual objects must be done on the group.
	
	Limitation:
	
	- The animated properties must be compatible among the all objects in the group.
	- A single property can either be controlled through a target group or directly, but not both.
**/
@:native("THREE.AnimationObjectGroup") extern class AnimationObjectGroup {
	/**
		Constructs a new animation group.
	**/
	function new(args:haxe.extern.Rest<Object3D<Object3DEventMap>>);
	/**
		This flag can be used for type testing.
	**/
	final isAnimationObjectGroup : Bool;
	/**
		The UUID of the 3D object.
	**/
	final uuid : String;
	/**
		Adds an arbitrary number of objects to this animation group.
	**/
	function add(args:haxe.extern.Rest<Object3D<Object3DEventMap>>):Void;
	/**
		Removes an arbitrary number of objects to this animation group
	**/
	function remove(args:haxe.extern.Rest<Object3D<Object3DEventMap>>):Void;
	/**
		Deallocates all memory resources for the passed 3D objects of this animation group.
	**/
	function uncache(args:haxe.extern.Rest<Object3D<Object3DEventMap>>):Void;
	static var prototype : AnimationObjectGroup;
}