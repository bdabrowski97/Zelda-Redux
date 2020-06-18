if (hp <= 0) { instance_destroy(); }
directionCooldown--;

//Calculate Movement
var xmove = key_right - key_left;
hsp = xmove * walkspd;

var ymove = key_down - key_up;
vsp = ymove * walkspd;


//COLLISIONS//
//Horizontal Collision
if ((place_meeting(x+hsp,y,oWall))) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp); //if not touching wall, keep moving
	}
	hsp = 0; //If touching wall, enemy stops
}

if (place_meeting(x+hsp, y, oBarrier)) {
	while (!place_meeting(x+sign(hsp),y,oBarrier)) {
		x = x + sign(hsp); //if not touching barrier, keep moving
	}
	hsp = 0; //If touching barrier, enemy stops
}
x = x + hsp; //Always put this after the Horizontal Collision Detection


//Vertical Collision
if (place_meeting(x,y+vsp,oWall))  {
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp); //if not touching wall, keep moving
	}
	vsp = 0; //If touching wall, enemy stop
}

if (place_meeting(x,y+vsp,oBarrier)) {
	while (!place_meeting(x,y+sign(vsp),oBarrier)) {
		y = y + sign(vsp); //if not touching wall, keep moving
	}
	vsp = 0; //If touching wall, enemy stop
}
y = y + vsp; //Always put this after the Vertical Collision Detection



//KNOCKBACK
if ((place_meeting(x,y-1,oLink)) && (oLink.invincibility == false)) { //Knockback Upwards
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	knockBackY = -12;
	global.hearts--;
	score -= 300;
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 60;
	}
}

if ((place_meeting(x,y+1,oLink)) && (oLink.invincibility == false)) { //Knockback Downwards
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	knockBackY = 12;
	global.hearts--;
	score -= 300;
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 60;
	}
}

if ((place_meeting(x-1,y,oLink)) && (oLink.invincibility == false)) { //Knockback Left
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	knockBackX = -12;
	global.hearts--;
	score -= 300;
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 60;
	}
}

if ((place_meeting(x+1,y,oLink)) && (oLink.invincibility == false)) { //Knockback Right
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	knockBackX = 12;
	global.hearts--;
	score -= 300;
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 60;
	}
}

if ((place_meeting(x,y,oLink)) && (oLink.invincibility == false)) { //Knockback Random (if inside enemy)
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	hitRandom = irandom_range(0,1);
		if (hitRandom == 0) {
			hitHorizontal = irandom_range(0,1);
			if (hitHorizontal == 0) {
				knockBackX = -12;
			}
			else {
				knockBackX = 12;
			}
		}
		if (hitRandom == 1) {
			hitVertical = irandom_range(0,1);
			if (hitVertical == 0) {
				knockBackY = -12;
			}
			else {
				knockBackY = 12;
		}
	global.hearts--;
	score -= 300;
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 60;
		}
	}
}




//AI MOVEMENT
if (((hsp == 0) && (vsp ==0)) || (directionCooldown == 0)) {
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	directionCooldown = 300;
	
	moveChoice = irandom_range(0,1); //decide if moving horizontal or vertical
	
	if (moveChoice == 0) { //horizontal movement
		leftOrRight = irandom_range(0,1);
		if (leftOrRight == 0) {
			key_left = 1;
			}
		if (leftOrRight == 1) {
			key_right = 1;
		}
	}
	if (moveChoice == 1) { //vertical movement
		upOrDown = irandom_range(0,1);
		if (upOrDown == 0) {
			key_up = 1;
		}
		if (upOrDown == 1) {
			key_down = 1;
		}
	}
}	

//ANIMATIONS
	if (sign(hsp) > 0) { //moving right
		image_angle = 180;
	}
	if (sign(hsp) < 0) { //moving left
		image_angle = 0;
	}
	if (sign(vsp) < 0) { //moving up
		image_angle = 270;
	}
	if (sign(vsp) > 0) { //moving down
		image_angle = 90;
	}

