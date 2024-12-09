if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left)) {
	instance_destroy(obj_Grid.selectedTroop);
	obj_Grid.selectedTroop = noone;
	obj_Grid.selectedTroop = instance_create_depth(x, y,-999, obj_WarriorTroopPlacer);
}