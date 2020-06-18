/// @description Restore Health
global.hearts += 2;
if (global.hearts > global.heartsMax) {
	global.hearts = global.heartsMax;	
}
score += 10;
instance_destroy();
