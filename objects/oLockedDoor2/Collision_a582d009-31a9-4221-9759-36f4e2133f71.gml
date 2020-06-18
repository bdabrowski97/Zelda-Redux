/// @description Unlock Door
if (global.keys > 0) {
	global.keys--;
	global.Door2Unlock = true;
	score += 500;
	instance_destroy();
}