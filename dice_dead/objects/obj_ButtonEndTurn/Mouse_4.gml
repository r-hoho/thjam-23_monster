if visible {

	qsignal_emit("End_Turn");

	instance_destroy(obj_ArrowParent);
	instance_destroy(obj_LOSParent);
	instance_destroy(obj_DiceMoveMode);
	instance_destroy(obj_DiceShootMode);
	instance_destroy(obj_DiceSelectMode);
	instance_destroy(obj_DiceReloadMode);

	instance_destroy();

}