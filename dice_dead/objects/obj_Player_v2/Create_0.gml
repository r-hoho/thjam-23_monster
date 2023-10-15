#region Movement Signal

qsignal_listen("Move_Right",function() {
	
	x = x+16;
	instance_destroy(obj_ArrowParent);
	qsignal_emit("Move_End")
	

});

qsignal_listen("Move_Left",function() {
	
	x = x-16;
	instance_destroy(obj_ArrowParent);
	qsignal_emit("Move_End")

});

qsignal_listen("Move_Up",function() {
	
	y = y-16;
	instance_destroy(obj_ArrowParent);
	qsignal_emit("Move_End")

});

qsignal_listen("Move_Down",function() {
	
	y = y+16;
	instance_destroy(obj_ArrowParent);
	qsignal_emit("Move_End")

});

#endregion


#region Shoot Signal

qsignal_listen("Shoot_Up",function() {
	
	instance_destroy(obj_LOSParent);
	
	
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 0;
	_bullet.target_x = x;
	_bullet.target_y = y-500;
	qsignal_emit("Shoot_End")
});


qsignal_listen("Shoot_Down",function() {
	
	instance_destroy(obj_LOSParent);
	
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 180;
	_bullet.target_x = x;
	_bullet.target_y = y+500;
	qsignal_emit("Shoot_End")
});

qsignal_listen("Shoot_Left",function() {
	
	instance_destroy(obj_LOSParent);
	
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 90;
	_bullet.target_x = x-500;
	_bullet.target_y = y;
	qsignal_emit("Shoot_End")
});

qsignal_listen("Shoot_Right",function() {
	
	instance_destroy(obj_LOSParent);
	
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 270;
	_bullet.target_x = x+500;
	_bullet.target_y = y;
	qsignal_emit("Shoot_End")
});


#endregion