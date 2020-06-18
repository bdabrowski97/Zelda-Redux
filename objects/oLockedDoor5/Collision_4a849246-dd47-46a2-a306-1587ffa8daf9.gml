/// @description Unlock Door
if (global.keys > 0) {
	global.keys--;
	global.Door5Unlock = true;
	score += 500;
	instance_destroy();
}