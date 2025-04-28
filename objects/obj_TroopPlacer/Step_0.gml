if (mouse_check_button_pressed(mb_right) && instance_exists(obj_Grid)) {
	instance_destroy(obj_Grid.selectedTroop);
	obj_Grid.selectedTroop = noone;
}
else if (mouse_check_button_pressed(mb_right) && instance_exists(obj_GridSmall)) {
	instance_destroy(obj_GridSmall.selectedTroop);
	obj_GridSmall.selectedTroop = noone;
}