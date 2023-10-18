global._Turn = "Player"

qsignal_listen("End_Turn",function(){
	
	global._Turn = "NPC";
	instance_destroy(obj_Dice);
});

_gameEnd = 0;
