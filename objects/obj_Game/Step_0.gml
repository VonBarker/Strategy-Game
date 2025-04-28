var middleClick = mouse_check_button_pressed(mb_middle);

if(roundStarted && !instance_exists(obj_Troop)) {
	roundStarted = false;
	roundEnded = true;
	won = false;
	
	instance_create_depth(0, 0, -999, obj_RoundEndScreen);
}
if(roundStarted && !instance_exists(obj_EnemyTroop)) {
	roundStarted = false;
	roundEnded = true;
	won = true;
	
	instance_create_depth(0, 0, -999, obj_RoundEndScreen);
}

if (instance_exists(obj_RoundStartButton)) {
	troopCounter.number = instance_number(obj_Troop);
	enemyTroopCounter.number = instance_number(obj_EnemyTroop);
}

if (room >= 7 && middleClick) {
	obj_Troop.startX = mouse_x;
	obj_Troop.startY = mouse_y;
}