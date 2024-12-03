if(mouse_check_button_pressed(mb_right)) {
	instance_destroy(obj_Grid.selectedTroop);
	obj_Grid.selectedTroop = noone;
}