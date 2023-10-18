Move_AP = 0;
Shoot_AP = 0;
//Reload_AP = 0;

qsignal_listen("Move_Mode_Select",function(){
	
	if (Move_AP >= 1) {
	    qsignal_emit("Move_Arrow_Create")		
	}
	
});

qsignal_listen("Move_End",function(){
	
	Move_AP -= 1;
	qsignal_emit("DiceFaceChange");
	if (Move_AP >= 1) {
		qsignal_emit("Move_Arrow_Create")
	} else { instance_destroy(obj_ButtonEndManual)};
	
});


qsignal_listen("Shoot_Mode_Select",function(){
	
	if (Shoot_AP >= 1) {
	    qsignal_emit("Shoot_LOS_Create")		
	}
	
});

qsignal_listen("Shoot_End",function(){
	
	Shoot_AP -= 1;
	qsignal_emit("AMMOFaceChange");
	
	
	if (Shoot_AP >= 1 && global.ammo >= 1) {
		qsignal_emit("Shoot_LOS_Create")
	} else { 
		instance_destroy(obj_ButtonEndManual);
		Shoot_AP = 0;
		}
	
});

qsignal_listen("Manual_End",function(){
	
	Move_AP = 0;
	Shoot_AP = 0;
	
});

