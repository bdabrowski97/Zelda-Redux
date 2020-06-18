/// @description Item Drops
itemChance = irandom_range(0,10);
if (itemChance >= 7) {
	instance_create_layer(x,y,"oEnemy",oHeart);
}
if (itemChance <= 3) {
	instance_create_layer(x,y,"oEnemy",oBombPickUp);
}
score += 30;