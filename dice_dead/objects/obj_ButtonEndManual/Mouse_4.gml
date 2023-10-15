instance_destroy(obj_ArrowParent);
instance_destroy(obj_LOSParent);

qsignal_emit("Manual_End");
instance_destroy();
