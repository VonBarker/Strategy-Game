if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) {
	obj_Game.roundStarted = true;
	instance_destroy(obj_TroopPlacer);
	instance_destroy(obj_TroopDeleter);
}