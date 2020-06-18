font_get_fontname(fontTest);
draw_text(100, 5, "LEGEND OF ZELDA REDUX WIP \n R to Reboot");
font_get_fontname(fontTest);

//Draw BlackBars
draw_sprite(sBlackBar,0,0,608);

//Item Boxes
draw_sprite(sGUIBox, 0, 864, 680); //Subweapon Box
draw_sprite(sGUIBoxSword, 0, 770, 680); //Sword Box
draw_sprite(sSword,0, 772, 690);


//Sword and Subweapons Inside Item Boxes
if (global.subweapon == 1) {draw_sprite(sBombGUI, 0, 864,700);}
if (global.subweapon == 2) {draw_sprite(sBoomerang, 0, 864, 690);}



//Keys
draw_sprite(sKey, 0, 675, 675);
draw_text(675,675,global.keys);

//Bombs
draw_sprite(sBomb, 0, 640, 710);
draw_text(625,675,global.bombs);

//Score Display
if (score < 0) {
	score = 0;
}

draw_text(90,720,"Score");
draw_text(140,720,score);

//Draw Map
if (global.map == true) {
	draw_sprite(sMapNone,0,500,690);
}

if (global.compass == true) {
	if (room = room0) {draw_sprite(sMap0,0,500,690);}
	if (room == room1) {draw_sprite(sMap1,0,500,690);}
	if (room == room2) {draw_sprite(sMap2,0,500,690);}
	if (room == room3) {draw_sprite(sMap3,0,500,690);}
	if (room == room4) {draw_sprite(sMap4,0,500,690);}
	if (room == room5) {draw_sprite(sMap5,0,500,690);}
	if (room == room6) {draw_sprite(sMap6,0,500,690);}
	if (room == room7) {draw_sprite(sMap7,0,500,690);}
	if (room == room8) {draw_sprite(sMap8,0,500,690);}
	if (room == room9) {draw_sprite(sMap9,0,500,690);}
	if (room == room10) {draw_sprite(sMap10,0,500,690);}
	if (room == room11) {draw_sprite(sMap11,0,500,690);}
	if (room == room12) {draw_sprite(sMap12,0,500,690);}
	if (room == room13) {draw_sprite(sMap13,0,500,690);}
	if (room == room14) {draw_sprite(sMap14,0,500,690);}
	if (room == room15) {draw_sprite(sMap15,0,500,690);}
	if (room == room16) {draw_sprite(sMap16,0,500,690);}
	
}

// DEBUG ROOM DISPLAY //
roomName = room;
draw_text(90, 740, "Room");
draw_text(140,740, room_get_name(roomName));
//debug for secret detection: draw_text(180,720,global.room8Secret);


//Draw Health
draw_sprite(sLife,0,164,650);

//Draw Mario Star
if (global.star == true) {
	draw_sprite(sStar, 0, 356, 690);		
	if (global.hearts != global.heartsMax) {
		global.star = false;
		global.starBroken = true;
	}
}
if (global.starBroken == true) {
	draw_sprite(sStarBroken, 0, 356, 690);	
}




if (global.hearts == 8) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHeart, 0, 164, 690);
draw_sprite(sHeart, 0, 228, 690);
draw_sprite(sHeart, 0, 292, 690);
}

if (global.hearts == 7) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHeart, 0, 164, 690);
draw_sprite(sHeart, 0, 228, 690);
draw_sprite(sHalfHeart, 0, 292, 690);
}

if (global.hearts == 6) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHeart, 0, 164, 690);
draw_sprite(sHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts == 5) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHeart, 0, 164, 690);
draw_sprite(sHalfHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts == 4) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHeart, 0, 164, 690);
draw_sprite(sEmptyHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts == 3) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sHalfHeart, 0, 164, 690);
draw_sprite(sEmptyHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts == 2) {
draw_sprite(sHeart, 0, 100, 690);
draw_sprite(sEmptyHeart, 0, 164, 690);
draw_sprite(sEmptyHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts == 1) {
draw_sprite(sHalfHeart, 0, 100, 690);
draw_sprite(sEmptyHeart, 0, 164, 690);
draw_sprite(sEmptyHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}

if (global.hearts <= 0) {
draw_sprite(sEmptyHeart, 0, 100, 690);
draw_sprite(sEmptyHeart, 0, 164, 690);
draw_sprite(sEmptyHeart, 0, 228, 690);
	if (global.heartsMax == 8) {draw_sprite(sEmptyHeart, 0, 292, 690);}
}
