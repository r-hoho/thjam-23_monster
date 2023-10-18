if (global.ammo == 0) {
	audio_play_sound(snd_NoAmmo,1,0);
	var _noammo = instance_create_layer(x+35,y,"Instances_Top",obj_NoAmmo);
	_noammo.depth = -1;
	
}


if (global.ammo >= 1) {

	obj_GM_AP.Shoot_AP = 1;
	qsignal_emit("Shoot_Mode_Select")
	audio_play_sound(snd_ChooseShoot,1,0);
	
	local_Dice.dice_moving = 2;

	//instance_destroy(local_Dice);
	instance_destroy(obj_DiceMoveMode);
	instance_destroy(obj_DiceShootMode);
	instance_destroy(obj_DiceSelectMode);
	instance_destroy(obj_DiceReloadMode);

	instance_create_layer(256,y,"Instances_Top",obj_ButtonEndManual);
}