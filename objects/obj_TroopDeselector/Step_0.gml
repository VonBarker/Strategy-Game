if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left)) {
	obj_Grid.selectedTroop = noone;
	instance_destroy(obj_TroopPlacer);
}