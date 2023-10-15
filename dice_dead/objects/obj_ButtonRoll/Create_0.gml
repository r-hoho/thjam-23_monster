d1_x1 = 242;
d1_x2 = 260;



qsignal_listen("DiceRoll",function(){
	
	instance_create_depth(irandom_range(d1_x1,d1_x2),17,99,obj_Dice);
	instance_create_depth(irandom_range(d1_x1,d1_x2),45,99,obj_Dice);
	instance_create_depth(irandom_range(d1_x1,d1_x2),70,99,obj_Dice);
	
});