//Draw Menu
font_get_fontname(fontTest);
draw_text(100,180,"Arrow keys to scroll through menu, enter to select");
for (var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = tryAgain[i];
	//Shows Highlighted Option in Menu
	if (menu_cursor = i) {
		draw_text_color(100,200,tryAgain[i],c_lime,c_lime,c_lime,c_lime,1);
	}
	else {
		draw_text_color(100,200,tryAgain[i],c_gray,c_gray,c_gray,c_gray,1);
	}
}