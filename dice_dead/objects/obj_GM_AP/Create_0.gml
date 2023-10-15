Move_AP = 0;
Shoot_AP = 0;

qsignal_listen("Move_Mode_Select",function(){
	
	if (Move_AP >= 1) {
	    qsignal_emit("Move_Arrow_Create")		
	}
	
});

qsignal_listen("Move_End",function(){
	
	Move_AP -= 1;
	if (Move_AP >= 1) {
		qsignal_emit("Move_Arrow_Create")
	}
	
});