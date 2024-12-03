if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left)) {
	obj_Grid.selectedTroop = instance_create_layer(x, y,"Instances", obj_WarriorTroopPlacer);
}