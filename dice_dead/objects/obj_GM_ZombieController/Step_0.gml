if (global._Turn == "NPC") {
	
	if (timer >= 15) {

		// Replace "obj_example" with the name of your object
		var totalInstances = instance_number(obj_Zombie);
	
		if (current_zombie <= totalInstances) {
		
			var currentInstance = instance_find(obj_Zombie, current_zombie-1);
		
			if (currentInstance.zombie_AP > 0) {
			
				var _down = instance_create_layer(currentInstance.x,currentInstance.y+16,"Instances_Player",obj_ArrowDown);
				var _up = instance_create_layer(currentInstance.x,currentInstance.y-16,"Instances_Player",obj_ArrowUp);
				var _right = instance_create_layer(currentInstance.x+16,currentInstance.y,"Instances_Player",obj_ArrowRight);
				var _left = instance_create_layer(currentInstance.x-16,currentInstance.y,"Instances_Player",obj_ArrowLeft);
			
			
				if position_meeting(_down.x,_down.y,obj_Wall) {instance_destroy(_down); show_debug_message(1)}
				if position_meeting(_up.x,_up.y,obj_Wall) { instance_destroy(_up); show_debug_message(2)}
				if position_meeting(_right.x,_right.y,obj_Wall) { instance_destroy(_right); show_debug_message(3)}
				if position_meeting(_left.x,_left.y,obj_Wall) { instance_destroy(_left); show_debug_message(4)}
		
				instance_destroy(obj_WallGhost);
			
				//show_debug_message("instance_number"+string(instance_number(obj_ArrowParent)));
		
				var minDistance = -1;
				var closestObject = noone;

				// Iterate through each instance of obj_Target
				with(obj_ArrowParent) {
			
					//show_debug_message(id);
					var currentDistance = point_distance(x, y, obj_Player_v2.x, obj_Player_v2.y);
					if (minDistance == -1 || currentDistance < minDistance) {
					minDistance = currentDistance;
					closestObject = id;
					}
				}

				if (closestObject != noone) {
				show_debug_message("The closest object is " + string(closestObject) + " with a distance of " + string(minDistance));
				} else {
				show_debug_message("No target objects found.");
				}
		
				if (closestObject != noone) {
				instance_create_layer(currentInstance.x,currentInstance.y,"Instances_wall",obj_WallGhost);
				currentInstance.x = closestObject.x
				currentInstance.y = closestObject.y
				instance_destroy(obj_ArrowParent);
				}
			
			
				currentInstance.zombie_AP -= 1;
				timer = 0;

			}
			
			if (currentInstance.zombie_AP == 0) {
				
				current_zombie += 1;
				
			}
			
			
		}
		
		if (current_zombie > totalInstances) {
			
			with(obj_Zombie) {
				
				zombie_AP = irandom_range(1,6);
			}
			
			global._Turn = "Player"
			instance_create_layer(272,104,"Instances_Dice",obj_ButtonRoll);
			current_zombie = 1;
			
			
			
			
			
			
		}
	} else {
		
		timer +=1;
		
	}
	
	//for (var i = 0; i < totalInstances; i++) {
	//    var currentInstance = instance_find(obj_Zombie, i);

	



	


}