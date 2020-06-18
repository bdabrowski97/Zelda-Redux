/// @description Movement/Controls/Collisions

//debug
//	if (keyboard_check_pressed(ord("O"))) { global.keys++;}
//	if (keyboard_check_pressed(ord("P"))) { global.keys--;}

//CONTROLS//
//Movement Controls
if (canMove == true) {
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);
}

//Combat Controls
key_sword = keyboard_check_pressed(ord("Z"));
key_sub = keyboard_check_pressed(ord("X"));
bombs = keyboard_check_pressed(ord(1));
boomerang = keyboard_check_pressed(ord(2));
///////

//Apply Knockback to movement
hsp += knockBackX;
vsp += knockBackY;

//COLLISIONS//
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp); //if not touching wall, keep moving
	}
	hsp = 0; //If touching wall, you stop
}
x = x + hsp; //Always put this after the Horizontal Collision Detection

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp); //if not touching wall, keep moving
	}
	vsp = 0; //If touching wall, you stop
}
y = y + vsp; //Always put this after the Vertical Collision Detection

//Decreseas Knockback
knockBackX = 0;
knockBackY = 0;


//Subweapon Switching
if (bombs) { global.subweapon = 1;}
if (boomerang) { global.subweapon = 2;}

//Place Bomb
if ((global.bombs > 0) && (global.subweapon == 1) && (key_sub)) {
	if (sprite_index == sLinkLeft) {
		instance_create_layer(x-24,y+30,"oLink",oActiveBomb);
		global.bombs--;
	}
	if (sprite_index == sLinkRight) {
		instance_create_layer(x+85,y+30,"oLink",oActiveBomb);
		global.bombs--;
	}
	if (sprite_index == sLinkDown) {
		instance_create_layer(x+32,y+64,"oLink",oActiveBomb);
		global.bombs--;
	}
	if (sprite_index == sLinkUp) {
		instance_create_layer(x+32,y-32,"oLink",oActiveBomb);
		global.bombs--;
	}
}

//Hearts
if (global.hearts <= 0) {
	instance_destroy();	
}

//Manage Door5Enemy Lock
if ((global.Door5DiamondTrigger == true) && (room == room5) && (global.Door5Diamond == false)) {
	instance_create_depth(64,320,0,oDiamondDoorEnemy)	
	with (oDiamondDoorEnemy) {
		image_angle = 180;
	}
}

	switch (state) {
		case PLAYERSTATE.FREE: PLAYERSTATE_FREE(); break;
		case PLAYERSTATE.STABDOWN: PLAYERSTATE_STABDOWN(); break;
		case PLAYERSTATE.STABUP: PLAYERSTATE_STABUP(); break;
		case PLAYERSTATE.STABRIGHT: PLAYERSTATE_STABRIGHT(); break;
		case PLAYERSTATE.STABLEFT: PLAYERSTATE_STABLEFT(); break;
		case PLAYERSTATE.KNOCKBACK: PLAYERSTATE_KNOCKBACK(); break;
	}

