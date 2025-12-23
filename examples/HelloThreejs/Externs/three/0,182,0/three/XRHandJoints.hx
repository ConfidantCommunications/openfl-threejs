package three;

typedef XRHandJoints = {
	var wrist : XRJointSpace;
	@:native("thumb-metacarpal")
	var thumb_metacarpal : XRJointSpace;
	@:native("thumb-phalanx-proximal")
	var thumb_phalanx_proximal : XRJointSpace;
	@:native("thumb-phalanx-distal")
	var thumb_phalanx_distal : XRJointSpace;
	@:native("thumb-tip")
	var thumb_tip : XRJointSpace;
	@:native("index-finger-metacarpal")
	var index_finger_metacarpal : XRJointSpace;
	@:native("index-finger-phalanx-proximal")
	var index_finger_phalanx_proximal : XRJointSpace;
	@:native("index-finger-phalanx-intermediate")
	var index_finger_phalanx_intermediate : XRJointSpace;
	@:native("index-finger-phalanx-distal")
	var index_finger_phalanx_distal : XRJointSpace;
	@:native("index-finger-tip")
	var index_finger_tip : XRJointSpace;
	@:native("middle-finger-metacarpal")
	var middle_finger_metacarpal : XRJointSpace;
	@:native("middle-finger-phalanx-proximal")
	var middle_finger_phalanx_proximal : XRJointSpace;
	@:native("middle-finger-phalanx-intermediate")
	var middle_finger_phalanx_intermediate : XRJointSpace;
	@:native("middle-finger-phalanx-distal")
	var middle_finger_phalanx_distal : XRJointSpace;
	@:native("middle-finger-tip")
	var middle_finger_tip : XRJointSpace;
	@:native("ring-finger-metacarpal")
	var ring_finger_metacarpal : XRJointSpace;
	@:native("ring-finger-phalanx-proximal")
	var ring_finger_phalanx_proximal : XRJointSpace;
	@:native("ring-finger-phalanx-intermediate")
	var ring_finger_phalanx_intermediate : XRJointSpace;
	@:native("ring-finger-phalanx-distal")
	var ring_finger_phalanx_distal : XRJointSpace;
	@:native("ring-finger-tip")
	var ring_finger_tip : XRJointSpace;
	@:native("pinky-finger-metacarpal")
	var pinky_finger_metacarpal : XRJointSpace;
	@:native("pinky-finger-phalanx-proximal")
	var pinky_finger_phalanx_proximal : XRJointSpace;
	@:native("pinky-finger-phalanx-intermediate")
	var pinky_finger_phalanx_intermediate : XRJointSpace;
	@:native("pinky-finger-phalanx-distal")
	var pinky_finger_phalanx_distal : XRJointSpace;
	@:native("pinky-finger-tip")
	var pinky_finger_tip : XRJointSpace;
};