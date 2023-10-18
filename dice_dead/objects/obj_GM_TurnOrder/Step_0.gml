if (instance_number(obj_Zombie) <= 0 ) {

	_gameEnd += 1;
	
	if (_gameEnd >= 60) {room_goto(rm_End)}

}