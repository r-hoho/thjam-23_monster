zombie_AP = irandom_range(1,6);

_movingX = 0;
_movingY = 0;
_moving = 0;

_drawAP = 1;

_countdown = 0;
_gameEnd = 0;

qsignal_listen("PlayDeadSound", function(){
	
	audio_play_sound(snd_ZombieTurn,1,0);
	
});