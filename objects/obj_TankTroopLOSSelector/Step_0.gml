if(position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left) && !obj_Game.roundStarted) {
	instance_destroy(obj_GridSmall.selectedTroop);
	obj_GridSmall.selectedTroop = noone;
	var variables = {
		scale : scale
	};
	obj_GridSmall.selectedTroop = instance_create_depth(x, y,-999, obj_TankTroopLOSPlacer, variables);
}