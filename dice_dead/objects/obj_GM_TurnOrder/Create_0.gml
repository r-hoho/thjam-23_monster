global._Turn = "Player"

qsignal_listen("End_Turn",function(){
	
	global._Turn = "NPC";
});
