_moving = 0;
_movingX = 0;
_movingY = 0;

#region Movement Signal

qsignal_listen("Move_Right",function() {
	
	_movingX = x+16;
	_movingY = y;
	_moving = 1;
	audio_play_sound(snd_PlayerJump,1,0);
	
	instance_destroy(obj_ArrowParent);
	//qsignal_emit("Move_End")
	

});

qsignal_listen("Move_Left",function() {
	
	_movingX = x-16;
	_movingY = y;
	_moving = 1;
	audio_play_sound(snd_PlayerJump,1,0);
	
	instance_destroy(obj_ArrowParent);
	//qsignal_emit("Move_End")

});

qsignal_listen("Move_Up",function() {
	
	_movingX = x;
	_movingY = y-16;
    _moving = 1;
	audio_play_sound(snd_PlayerJump,1,0);
	
	instance_destroy(obj_ArrowParent);
	//qsignal_emit("Move_End")

});

qsignal_listen("Move_Down",function() {
	
	_movingX = x;
	_movingY = y+16;
    _moving = 1;
	audio_play_sound(snd_PlayerJump,1,0);
	
	instance_destroy(obj_ArrowParent);
	//qsignal_emit("Move_End")

});

#endregion


#region Shoot Signal

qsignal_listen("Shoot_Up",function() {
	
	instance_destroy(obj_LOSParent);
	
	
	audio_play_sound(snd_Shoot,1,0);
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 0;
	_bullet.target_x = x;
	_bullet.target_y = y-500;
	qsignal_emit("Shoot_End")
});


qsignal_listen("Shoot_Down",function() {
	
	instance_destroy(obj_LOSParent);
	
	audio_play_sound(snd_Shoot,1,0);
	_bullet = instance_create_layer(x,y,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 180;
	_bullet.target_x = x;
	_bullet.target_y = y+500;
	qsignal_emit("Shoot_End")
});

qsignal_listen("Shoot_Left",function() {
	
	instance_destroy(obj_LOSParent);
	
	audio_play_sound(snd_Shoot,1,0);
	_bullet = instance_create_layer(x,y-2,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 90;
	_bullet.target_x = x-500;
	_bullet.target_y = y;
	qsignal_emit("Shoot_End")
});

qsignal_listen("Shoot_Right",function() {
	
	instance_destroy(obj_LOSParent);
	
	audio_play_sound(snd_Shoot,1,0);
	_bullet = instance_create_layer(x,y-2,"Instances_Player",obj_Bullet);
	_bullet.image_angle = 270;
	_bullet.target_x = x+500;
	_bullet.target_y = y;
	qsignal_emit("Shoot_End")
});


#endregion


qsignal_listen("Shoot_Mode_Select",function(){
	
	sprite_index = spr_PlayerShoot;
	image_speed = 1;
});

qsignal_listen("Shoot_End",function(){
	
	sprite_index = spr_Player;
	
	
});