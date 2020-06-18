//CREATE
/// @description Stats
hsp = 0; //Default Movement Speed is 0 so you don't move without input
vsp = 0; //Set to 0 so you're grounded upon spawning
walkspd = 4; //Used to find movement speed when pressing buttons. Allows a sprint key to be added later!

canMove = true; //Used to detemrine if Link can accept inputs
invincibility = false;
horizontalControl = true;
verticalControl = true;

knockBackX = 0; //If hit by enemy, applies a certain knockback value to movement
knockBackY = 0; //If hit by an enemy, applies a certain knockback value to movement

//Life and Inventory
global.hearts = 6; //Life Count, 2 int per heart
global.heartsMax = 6; //Max life count
global.subweapon = 1; //Default Subweapon 
global.keys = 0; //Keys held
global.bombs = 2; //Bombs held
global.star = false; //Star held
global.starBroken = false; //Star broken, if so, no hit challenge failed
global.map = false; //true for debug purposes
global.compass = false; //true for debug purposes

//Door Management
global.Door2Unlock = false;
global.Door3Unlock = false;
global.Door4Unlock = false;
global.Door5Unlock = false;

global.Door5DiamondTrigger = false; //Detects if enemy door is spawned
global.Door5Diamond = false; //If spawned, detects if it has been unlocked

global.Door6Unlock = false;

global.BombWallOneDestroyed = false;
global.BombWallTwoDestroyed = false;

global.room8Secret = false;


hitByAttack = ds_list_create();
state = PLAYERSTATE.FREE;

enum PLAYERSTATE {
	FREE,
	STABUP,
	STABDOWN,
	STABRIGHT,
	STABLEFT,
	KNOCKBACK
}

