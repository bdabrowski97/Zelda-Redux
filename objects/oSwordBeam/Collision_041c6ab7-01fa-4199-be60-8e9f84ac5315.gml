/// @description Damage enemy, delete itself, spawn particles
with (other) {
	hp--;	
}
score += 10;
spawnParticles = true;
instance_destroy();