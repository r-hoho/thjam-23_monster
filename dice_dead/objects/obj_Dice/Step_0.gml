if (dice_moving == 1) {
	
	// Initialize the trajectory variables
	var startX = x; // initial x-coordinate
	var startY = y; // initial y-coordinate
	var endX = 293; // final x-coordinate
	var endY = 138; // final y-coordinate
	
	speed = 0.1; // adjust the speed as needed
	var tolerance = 0.75; // adjust the tolerance value as needed

	// Set the initial and final scale values
	var startScale = 1; // initial scale value
	var endScale = 10; // final scale value


	// Use the lerp function to update the position gradually
	x = lerp(startX, endX, speed);
	y = lerp(startY, endY, speed);

	// Use the lerp function to update the scale gradually
	image_xscale = lerp(startScale, endScale, speed);
	image_yscale = lerp(startScale, endScale, speed);
	
	// Check if the object is within the tolerance range of the target position
	if (abs(x - endX) <= tolerance && abs(y - endY) <= tolerance) {
		instance_destroy();
		var _dice = instance_create_layer(294,138,"Instances_Dice",obj_DiceAP);
		_dice.sprite_index = spr_Dice
		_dice.image_index = obj_GM_AP.Move_AP -1;
		_dice.image_xscale = 1.9;
		_dice.image_yscale = 1.9;
		
    // Additional actions can be added here when the object is within the tolerance range of the target position
	}
}

