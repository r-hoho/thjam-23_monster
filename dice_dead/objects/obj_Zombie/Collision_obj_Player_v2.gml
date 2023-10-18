instance_destroy(obj_GM_ZombieController);


qsignal_emit("PlayDeadSound");

obj_Player_v2.visible = false;
_drawAP = 0;

sprite_index = spr_PlayerDead;
image_speed = 1;