troopsPlaced = 0;
maxTroops = 5;
if (room == 1) {
	maxTroops = 2;
	TutorialDialog();
}

roundStarted = false;
roundEnded = false;

won = false;

randomize();

if (instance_exists(obj_RoundStartButton)) {
	troopCounter = instance_create_layer(obj_RoundStartButton.x - 16, obj_RoundStartButton.y - 16, "Instances", obj_Score);
	enemyTroopCounter = instance_create_layer(obj_RoundStartButton.x + 32, obj_RoundStartButton.y - 16, "Instances", obj_Score);
}

showHealthBars = false;

if (room >= 5) showHealthBars = true;