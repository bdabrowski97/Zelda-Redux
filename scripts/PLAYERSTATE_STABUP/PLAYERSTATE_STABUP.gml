hsp = 0;
vsp = 0;

//Start of the Attack
if (sprite_index != sStabUp) {
	sprite_index = sStabUp;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//Use Attack Hitbox and Check for hits
mask_index = sStabUpHB; //has the sword be the hitbox being used
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
if (hits > 0) {
	for (var i = 0; i < hits; i++) {
		//If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack,hitID) == -1) { //checks if an instance is already in the list or not.
			ds_list_add(hitByAttack,hitID); //Adds them if not in the list. This is used to make the enemy be hit only once.
			with (hitID) { //this applies the damage to the enemy that was hit
				hp -= 1;
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sLinkUp; //returns collision detection to the original sprite

//Shoot Sword Beam
if (image_index == 2) {
	if ((!instance_exists(oSwordBeam)) && (global.hearts == global.heartsMax)) {
		instance_create_layer(x+23,y-13,"oLink",oSwordBeam);
		with (oSwordBeam) {
			image_angle = 90;
		}
	}
}

if (AnimationEnd()) {
	sprite_index = sLinkUp;
	state = PLAYERSTATE.FREE;
}

