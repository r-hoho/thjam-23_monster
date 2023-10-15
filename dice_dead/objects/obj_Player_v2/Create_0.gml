qsignal_listen("Move_Right",function() {
	
	x = x+16;
	instance_destroy(obj_ArrowParent);

});

qsignal_listen("Move_Left",function() {
	
	x = x-16;
	instance_destroy(obj_ArrowParent);

});

qsignal_listen("Move_Up",function() {
	
	y = y-16;
	instance_destroy(obj_ArrowParent);

});

qsignal_listen("Move_Down",function() {
	
	y = y+16;
	instance_destroy(obj_ArrowParent);

});