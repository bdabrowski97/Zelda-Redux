hsp = 0;
vsp = 0;


//Start of the Attack
if (sprite_index != sStabRight) {
	sprite_index = sStabRight;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//Use Attack Hitbox and Check for hits
mask_index = sStabRightHB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
if (hits > 0) {
	for (var i = 0; i < hits; i++) {
		//If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack,hitID) == -1) {
			ds_list_add(hitByAttack,hitID);
			with (hitID) {
				hp -= 1;
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sLinkRight;

//Shoot Sword Beam
if (image_index == 2) {
		if ((!instance_exists(oSwordBeam)) && (global.hearts == global.heartsMax)) {
		instance_create_layer(x+74,y+40,"oLink",oSwordBeam);
		with (oSwordBeam) {
			image_angle = 0;
		}
	}
}


if (AnimationEnd()) {
	sprite_index = sLinkRight;
	state = PLAYERSTATE.FREE;
}