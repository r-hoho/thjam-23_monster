global.ammo += local_AP;
qsignal_emit("Reload_Mode_Select")

local_Dice.dice_moving = 3;

//instance_destroy(local_Dice);
instance_destroy(obj_DiceMoveMode);
instance_destroy(obj_DiceShootMode);
instance_destroy(obj_DiceSelectMode);
instance_destroy(obj_DiceReloadMode);


