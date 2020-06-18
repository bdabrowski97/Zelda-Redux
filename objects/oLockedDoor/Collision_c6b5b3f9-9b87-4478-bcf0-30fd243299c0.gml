/// @description Unlock Door
if (global.keys > 0) {
	global.keys--;
	score += 500;
	instance_destroy();
}