obj_GM_AP.Move_AP = local_AP;
qsignal_emit("Move_Mode_Select")

instance_destroy(local_Dice);
instance_destroy(obj_DiceMoveMode);
instance_destroy(obj_DiceShootMode);
instance_destroy(obj_DiceSelectMode);

instance_create_layer(256,y,"Instances_Top",obj_ButtonEndManual);
