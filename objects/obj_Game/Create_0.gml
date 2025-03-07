troopsPlaced = 0;
maxTroops = 5;

roundStarted = false;
roundEnded = false;

won = false;

randomize();

if (instance_exists(obj_RoundStartButton)) {
	troopCounter = instance_create_layer(obj_RoundStartButton.x - 16, obj_RoundStartButton.y - 16, "Instances", obj_Score);
	enemyTroopCounter = instance_create_layer(obj_RoundStartButton.x + 32, obj_RoundStartButton.y - 16, "Instances", obj_Score);
}