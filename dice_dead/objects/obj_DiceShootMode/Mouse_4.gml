if (global.ammo == 0) {
	var _noammo = instance_create_layer(x+35,y,"Instances_Top",obj_NoAmmo);
	_noammo.depth = -1;
	
}


if (global.ammo >= 1) {

	obj_GM_AP.Shoot_AP = local_AP;
	qsignal_emit("Shoot_Mode_Select")

	instance_destroy(local_Dice);
	instance_destroy(obj_DiceMoveMode);
	instance_destroy(obj_DiceShootMode);
	instance_destroy(obj_DiceSelectMode);
	instance_destroy(obj_DiceReloadMode);

	instance_create_layer(256,y,"Instances_Top",obj_ButtonEndManual);
}