/// @description Spawn Particles
if (spawnParticles == true) {
	//move up-right
	instance_create_layer(x,y,"oLink",oSwordBeamParticle);
	with (oSwordBeamParticle) { image_angle = 45}
	//move up-left
	instance_create_layer(x,y,"oLink",oSwordBeamParticle2);
	with (oSwordBeamParticle2) { image_angle = 135}
	//move down-left
	instance_create_layer(x,y,"oLink",oSwordBeamParticle3);
	with (oSwordBeamParticle3) { image_angle = 225}
	//mode down-right
	instance_create_layer(x,y,"oLink",oSwordBeamParticle4);
	with (oSwordBeamParticle4) { image_angle = 315}
}