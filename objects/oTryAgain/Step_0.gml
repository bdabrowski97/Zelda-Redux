

//Keyboard Controls
if (menu_control) {
	if (keyboard_check_pressed(vk_up)) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down)) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}

	if (keyboard_check_pressed(vk_enter)) {
		menu_comitted = menu_cursor;
		menu_control = false;
	}
}
if (menu_comitted != -1) {
		switch (menu_comitted) {
			case 1: game_restart(); break;
			case 0: game_end(); break;
	}
}
