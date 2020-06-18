/// @description Key Spawn Conditions

//ROOM 0

if ((!instance_exists(oEnemy)) && (room = room0)) {
	instance_create_depth(x,y,"oEnemy",oKey);
	instance_destroy();
}

//ROOM 2
if ((!instance_exists(oEnemy)) && (room = room2)) {
	instance_create_depth(x,y,"oEnemy",oKey);
	instance_destroy();
}

//ROOM 5
if ((!instance_exists(oEnemy)) && (room = room5)) {
	instance_create_depth(x,y,"oEnemy",oKey);
	instance_destroy();
}

//ROOM 16
//ROOM 5
if ((!instance_exists(oEnemy)) && (room = room16)) {
	instance_create_depth(x,y,"oEnemy",oKey);
	instance_destroy();
}