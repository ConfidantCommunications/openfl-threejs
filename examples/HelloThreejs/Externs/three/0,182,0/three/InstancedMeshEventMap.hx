package three;

typedef InstancedMeshEventMap = {
	var dispose : { };
	/**
		Fires when the object has been added to its parent object.
	**/
	var added : { };
	/**
		Fires when the object has been removed from its parent object.
	**/
	var removed : { };
	/**
		Fires when a new child object has been added.
	**/
	var childadded : {
		var child : Object3D<Object3DEventMap>;
	};
	/**
		Fires when a new child object has been removed.
	**/
	var childremoved : {
		var child : Object3D<Object3DEventMap>;
	};
};