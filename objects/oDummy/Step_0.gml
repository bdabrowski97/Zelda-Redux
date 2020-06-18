/// @description BASIC ENEMY KNOCKBACK
//KNOCKBACK
if ((place_meeting(x,y-1,oLink)) && (oLink.invincibility == false)) { //Knockback Upwards
	with (oLink) {
	state = PLAYERSTATE.KNOCKBACK;
	knockBackY = -12;
	global.hearts--;
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
	invincibility = true;
	alarm[0] = 10;
	alarm[1] = 600;
		}
	}
}