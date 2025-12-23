package three;

/**
	Use an array of {@link Bone | bones} to create a {@link Skeleton} that can be used by a {@link THREE.SkinnedMesh | SkinnedMesh}.
**/
@:native("THREE.Skeleton") extern class Skeleton {
	/**
		Creates a new Skeleton.
	**/
	function new(?bones:Array<Bone<Object3DEventMap>>, ?boneInverses:Array<Matrix4>);
	/**
		{@link http://en.wikipedia.org/wiki/Universally_unique_identifier | UUID} of this object instance.
	**/
	var uuid : String;
	/**
		The array of {@link THREE.Bone | Bones}.
	**/
	var bones : Array<Bone<Object3DEventMap>>;
	/**
		An array of {@link Matrix4 | Matrix4s} that represent the inverse of the {@link THREE.Matrix4 | matrixWorld} of the individual bones.
	**/
	var boneInverses : Array<Matrix4>;
	/**
		The array buffer holding the bone data when using a vertex texture.
	**/
	var boneMatrices : Null<js.lib.Float32Array>;
	var previousBoneMatrices : Null<js.lib.Float32Array>;
	/**
		The {@link THREE.DataTexture | DataTexture} holding the bone data when using a vertex texture.
	**/
	var boneTexture : Null<DataTexture>;
	var frame : Float;
	function init():Void;
	/**
		Generates the {@link boneInverses} array if not provided in the constructor.
	**/
	function calculateInverses():Void;
	/**
		Computes an instance of {@link THREE.DataTexture | DataTexture} in order to pass the bone data more efficiently to the shader
	**/
	function computeBoneTexture():Skeleton;
	/**
		Returns the skeleton to the base pose.
	**/
	function pose():Void;
	/**
		Updates the {@link boneMatrices} and {@link boneTexture} after changing the bones
	**/
	function update():Void;
	/**
		Returns a clone of this {@link Skeleton} object.
	**/
	function clone():Skeleton;
	/**
		Searches through the skeleton's bone array and returns the first with a matching name.
	**/
	function getBoneByName(name:String):Null<Bone<Object3DEventMap>>;
	/**
		Frees the GPU-related resources allocated by this instance
	**/
	function dispose():Void;
	function toJSON():SkeletonJSON;
	function fromJSON(json:SkeletonJSON, bones:haxe.DynamicAccess<Bone<Object3DEventMap>>):Void;
	static var prototype : Skeleton;
}