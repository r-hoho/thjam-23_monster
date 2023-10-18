instance_destroy(obj_ArrowParent);
instance_destroy(obj_LOSParent);

qsignal_emit("Manual_End");

audio_play_sound(snd_EndAction,1,0);


instance_destroy();
