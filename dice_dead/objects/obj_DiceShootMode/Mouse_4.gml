obj_GM_AP.Shoot_AP = local_AP;
qsignal_emit("Shoot_Mode_Select")

instance_destroy(local_Dice);
instance_destroy(obj_DiceMoveMode);
instance_destroy(obj_DiceShootMode);
instance_destroy(obj_DiceSelectMode);
