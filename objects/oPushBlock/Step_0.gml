/// @description Detect Push

//Can Push Block?
if (place_meeting(x+1,y,oWall)) { cannotPushRight = true;}
	else {cannotPushRight = false;}
if (place_meeting(x-1,y,oWall)) {cannotPushLeft = true;}
	else {cannotPushLeft = false;}
if (place_meeting(x,y+1,oWall)) {cannotPushDown = true;}
	else {cannotPushDown = false;}
if (place_meeting(x,y-1,oWall)) {cannotPushUp = true;}
	else {cannotPushUp = false;}




//PUSH BLOCK
//Push Right
if (place_meeting(x-1,y,oLink) && (keyboard_check(vk_right)) && (cannotPushRight == false)) {
	x += 1;
}

//Push Left
if (place_meeting(x+1,y,oLink) && (keyboard_check(vk_left)) && (cannotPushLeft == false)) {
	x -= 1;	
}

//Push Up
if (place_meeting(x,y+1,oLink) && (keyboard_check(vk_up)) && (cannotPushUp == false)) {
	y -= 1;
}

//Push Down
if (place_meeting(x,y-1,oLink) && (keyboard_check(vk_down)) && (cannotPushDown == false)) {
	y += 1;
}


