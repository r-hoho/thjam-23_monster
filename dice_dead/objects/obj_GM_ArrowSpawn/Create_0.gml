qsignal_listen("move_mode",function() {
	
    instance_create_layer(obj_Player_v2.x,obj_Player_v2.y+16,"Instances_Player",obj_ArrowDown);
	instance_create_layer(obj_Player_v2.x,obj_Player_v2.y-16,"Instances_Player",obj_ArrowUp);
	instance_create_layer(obj_Player_v2.x+16,obj_Player_v2.y,"Instances_Player",obj_ArrowRight);
	instance_create_layer(obj_Player_v2.x-16,obj_Player_v2.y,"Instances_Player",obj_ArrowLeft);
	
});