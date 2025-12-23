package three;

typedef WebXRSpaceEventMap = {
	var select : {
		var data : XRInputSource;
	};
	var selectstart : {
		var data : XRInputSource;
	};
	var selectend : {
		var data : XRInputSource;
	};
	var squeeze : {
		var data : XRInputSource;
	};
	var squeezestart : {
		var data : XRInputSource;
	};
	var squeezeend : {
		var data : XRInputSource;
	};
	var connected : {
		var data : XRInputSource;
	};
	var disconnected : {
		var data : XRInputSource;
	};
	var pinchend : {
		var handedness : XRHandedness;
		var target : WebXRController;
	};
	var pinchstart : {
		var handedness : XRHandedness;
		var target : WebXRController;
	};
	var move : { };
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