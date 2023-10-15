qsignal_listen("Move_Arrow_Create",function() {
	
    instance_create_layer(obj_Player_v2.x,obj_Player_v2.y+16,"Instances_Player",obj_ArrowDown);
	instance_create_layer(obj_Player_v2.x,obj_Player_v2.y-16,"Instances_Player",obj_ArrowUp);
	instance_create_layer(obj_Player_v2.x+16,obj_Player_v2.y,"Instances_Player",obj_ArrowRight);
	instance_create_layer(obj_Player_v2.x-16,obj_Player_v2.y,"Instances_Player",obj_ArrowLeft);
	
});

qsignal_listen("shoot_mode",function() {
	
    instance_create_layer(obj_Player_v2.x,obj_Player_v2.y+16,"Instances_Player",obj_LOSDown);
	instance_create_layer(obj_Player_v2.x,obj_Player_v2.y-16,"Instances_Player",obj_LOSUp);
	instance_create_layer(obj_Player_v2.x+16,obj_Player_v2.y,"Instances_Player",obj_LOSRight);
	instance_create_layer(obj_Player_v2.x-16,obj_Player_v2.y,"Instances_Player",obj_LOSLeft);
	
});