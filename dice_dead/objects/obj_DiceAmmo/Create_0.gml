//Active_AP = 0;

qsignal_listen("AMMOFaceChange",function(){
	
	var _d = instance_create_depth(x,y,depth-1,obj_DiceFaceChange);
	_d.image_xscale = 1.9;
	_d.image_yscale = 1.9;
	
});


