//If the selected troop is in the playable area it will snap to the grid
if(instance_exists(selectedTroop)) {
	if(selectedTroop.outOfBounds == false) {
		selectedTroop.x = gridXOffset + round((mouse_x + 8)/gridSize)*gridSize;
		selectedTroop.y = gridYOffset + round((mouse_y + 8)/gridSize)*gridSize;
	}
	else {
		selectedTroop.x = mouse_x;
		selectedTroop.y = mouse_y;
	}
}