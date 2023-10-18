global._Turn = "Player"

qsignal_listen("End_Turn",function(){
	
	global._Turn = "NPC";
	//audio_play_sound(snd_ZombieTurn,1,0);
	instance_destroy(obj_Dice);
	
});

_gameEnd = 0;
