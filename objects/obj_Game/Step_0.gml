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