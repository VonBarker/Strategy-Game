if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && obj_Game.troopsPlaced != 0 || keyboard_check_pressed(vk_space) && obj_Game.troopsPlaced != 0 ) {
	obj_Game.roundStarted = true;
	instance_destroy(obj_TroopPlacer);
	instance_destroy(obj_TroopDeleter);
}

if(obj_Game.roundEnded && position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) || obj_Game.roundEnded &&  keyboard_check_pressed(vk_space)) room_restart();
if(obj_Game.roundEnded && position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) || obj_Game.roundEnded &&  keyboard_check_pressed(vk_space) && obj_Game.won) {
	room_goto_next();
	obj_Game.won = false;
}