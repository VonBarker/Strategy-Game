if(roundStarted && !instance_exists(obj_Troop)) {
	roundStarted = false;
	roundEnded = true;
	won = false;
}
if(roundStarted && !instance_exists(obj_EnemyTroop)) {
	roundStarted = false;
	roundEnded = true;
	won = true;
}