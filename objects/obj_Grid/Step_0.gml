if(instance_exists(selectedTroop) && selectedTroop.outOfBounds == false) {
	selectedTroop.x = gridXOffset + round(mouse_x/gridSize)*gridSize;
	selectedTroop.y = gridYOffset + round(mouse_y/gridSize)*gridSize;
}
else {
	selectedTroop.x = mouse_x;
	selectedTroop.y = mouse_y;
}