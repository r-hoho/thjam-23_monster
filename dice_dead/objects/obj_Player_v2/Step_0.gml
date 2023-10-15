if (_mode == "move") {
    instance_create_layer(x,y+16,"Instances_Player",obj_ArrowDown);
	instance_create_layer(x,y-16,"Instances_Player",obj_ArrowUp);
	instance_create_layer(x+16,y,"Instances_Player",obj_ArrowRight);
	instance_create_layer(x-16,y,"Instances_Player",obj_ArrowLeft);
	_mode = "idle"
	
}