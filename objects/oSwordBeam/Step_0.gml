/// @description Shoot Sword

//Shoot Up
if (image_angle == 90) {
	y -= 10;
}
//Shoot Down
if (image_angle == 270) {
	y += 10;
}
//Shoot Right
if (image_angle == 0) {
	x += 10;
}
//Shoot Left
if (image_angle == 180) {
	x -= 10;
}


//If Link dies, the sword despawns
if (!instance_exists(oLink)) {
	instance_destroy();
}
