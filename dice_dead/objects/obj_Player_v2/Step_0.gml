if (_moving == 1) {
    
	// Initialize the trajectory variables
	var startX = x; // initial x-coordinate
	var startY = y; // initial y-coordinate
	var endX = _movingX; // final x-coordinate
	var endY = _movingY; // final y-coordinate
	
	speed = 0.2; // adjust the speed as needed

	// Use the lerp function to update the position gradually
	x = lerp(startX, endX, speed);
	y = lerp(startY, endY, speed);
	

	var tolerance = 1;
	
	if (abs(x - endX) <= tolerance && abs(y - endY) <= tolerance) {
		
		_moving = 0;
		x = _movingX
		y = _movingY
		speed = 0;
		show_debug_message("X")
		qsignal_emit("Move_End")	

	}
}
