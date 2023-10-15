instance_destroy(obj_DiceSelectMode);
instance_destroy(obj_DiceMoveMode);
instance_destroy(obj_DiceShootMode);
instance_destroy(obj_DiceReloadMode);


instance_create_layer(x,y,"Instances_Top",obj_DiceSelectMode);

var _MoveMode = instance_create_layer(x,y,"Instances_Top",obj_DiceMoveMode);
_MoveMode.local_AP = dice_value;
_MoveMode.local_Dice = self;


var _ShootMode = instance_create_layer(x,y,"Instances_Top",obj_DiceShootMode);
_ShootMode.local_AP = dice_value;
_ShootMode.local_Dice = self;

var _ReloadMode = instance_create_layer(x,y,"Instances_Top",obj_DiceReloadMode);
_ReloadMode.local_AP = dice_value;
_ReloadMode.local_Dice = self;
