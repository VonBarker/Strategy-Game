if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && !obj_Game.roundStarted && instance_exists(obj_Grid)) {
	instance_destroy(obj_Grid.selectedTroop);
	obj_Grid.selectedTroop = noone;
	var variables = {
		scale : scale
	};
	obj_Grid.selectedTroop = instance_create_depth(x, y, -999, obj_TroopDeleter, variables);
}
else if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && !obj_Game.roundStarted && instance_exists(obj_GridSmall)) {
	instance_destroy(obj_GridSmall.selectedTroop);
	obj_GridSmall.selectedTroop = noone;
	var variables = {
		scale : scale
	};
	obj_GridSmall.selectedTroop = instance_create_depth(x, y, -999, obj_TroopDeleter, variables);
}