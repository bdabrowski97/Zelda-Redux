/// @description Room Triggers

if (room = room4) {
	instance_destroy(oRoomTrigger);
	global.Door5DiamondTrigger = true;
	instance_create_layer(955,325,"oEnemy",oDiamondDoorEnemy);
	
	
}

