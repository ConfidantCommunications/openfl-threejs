package three;

typedef WebXRManagerEventMap = {
	var sessionstart : { };
	var sessionend : { };
	var planeadded : {
		var data : XRPlane;
	};
	var planeremoved : {
		var data : XRPlane;
	};
	var planechanged : {
		var data : XRPlane;
	};
	var planesdetected : {
		var data : XRPlaneSet;
	};
};