/// @description 
if (!instance_exists(oEnemy)) {
	instance_destroy();	
}

if ((room = room4) && (!instance_exists(oEnemy))) {
	global.Door5Diamond = true;
}

if ((room = room5) && (global.Door5Diamond == true)) {
	instance_destroy();	
}
	



