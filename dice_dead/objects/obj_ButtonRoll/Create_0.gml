d1_x1 = 243;
d1_x2 = 246;



qsignal_listen("DiceRoll",function(){
	
	var _d1 = instance_create_depth(350,-30,99,obj_Dice);
		_d1.lerp_target_x = irandom_range(d1_x1,d1_x2)
		_d1.lerp_target_y = 17
		
	var _d2 = instance_create_depth(350,-30,99,obj_Dice);
		_d2.lerp_target_x = irandom_range(d1_x1,d1_x2)
		_d2.lerp_target_y = 45
		
	var _d3 = instance_create_depth(350,-30,99,obj_Dice);
		_d3.lerp_target_x = irandom_range(d1_x1,d1_x2)
		_d3.lerp_target_y = 70
	
	
});