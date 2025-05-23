if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && !typing) {
	typing = true;
	alarm[0] = 10;
}
else if (!position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && typing) typing = false;

if (!typing && text = "") keyboard_string = "";
if (!typing) {
	keyboard_string = previousKeyboard_string;
	typingMarker = "";
}
previousKeyboard_string = keyboard_string;

if (typing && keyboard_check_pressed(vk_enter)) {
	typing = false
	if (string_count("dev skip ", text) > 0) {
		try {
		var levelNumber = string_split(text,"dev skip ", true);
		if (room_exists(real(levelNumber[0]) + 1)) room_goto(real(levelNumber[0]) + 1);
		}
		catch( _exception) {
			show_debug_message(_exception.message);
		}
	}
	else if (text == "^^vv<><>ba") {
		obj_Game.maxTroops = 999;
	}
	else if (text == "DEBUG#$% TOGGLE") {
		obj_Settings.debugMode = !obj_Settings.debugMode;
	}
	text = "";
	keyboard_string = "";
}

if (typing) image_index = 1;
else if (!typing && text = "")image_index = 0;