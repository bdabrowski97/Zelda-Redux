//Calculate Movement
var xmove = key_right - key_left;
hsp = (xmove * walkspd);
knockBackX = 0;

var ymove = key_down - key_up;
vsp = (ymove * walkspd);
knockBackY = 0;

//ANIMATIONS && ATTACKS
if ((hsp == 0) && (vsp == 0)) {
	//Standing Attacks and Idle
	image_speed = 0;
	if ((sprite_index == sLinkDown) && (key_sword)) {
		image_speed = 1;
		state = PLAYERSTATE.STABDOWN;
	}
	if ((sprite_index == sLinkUp) && (key_sword)) {
		image_speed = 1;
		state = PLAYERSTATE.STABUP;
	}
	if ((sprite_index == sLinkRight) && (key_sword)) {
		image_speed = 1;
		state = PLAYERSTATE.STABRIGHT;
	}
	if ((sprite_index == sLinkLeft) && (key_sword)) {
		image_speed = 1;
		state = PLAYERSTATE.STABLEFT;
	}
	
}
else  {
	//Walking Animations and Moving Attacks
	if (sign(hsp) > 0) {
		sprite_index = sLinkRight;
		image_speed = 1;
		if (key_sword) { state = PLAYERSTATE.STABRIGHT; }
	}
	if (sign(hsp) < 0) {
		sprite_index = sLinkLeft;
		image_speed = 1;
		if (key_sword) { state = PLAYERSTATE.STABLEFT; }
	}
	if (sign(vsp) < 0) {
		sprite_index = sLinkUp;
		image_speed = 1;
		if (key_sword) { state = PLAYERSTATE.STABUP; }
	}
	if (sign(vsp) > 0) {
		sprite_index = sLinkDown;
		image_speed = 1;
		if (key_sword) { state = PLAYERSTATE.STABDOWN; }
	}

}