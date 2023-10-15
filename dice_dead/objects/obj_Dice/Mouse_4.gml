instance_destroy(obj_DiceSelectMode);
instance_destroy(obj_DiceMoveMode);
instance_destroy(obj_DiceShootMode);


instance_create_layer(x,y,"Instances_Top",obj_DiceSelectMode);
instance_create_layer(x,y,"Instances_Top",obj_DiceMoveMode);
instance_create_layer(x,y,"Instances_Top",obj_DiceShootMode);
