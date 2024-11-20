if(instance_exists(selectedTroop)) {
	selectedTroop.x = gridXOffset + floor(mouse_x/gridSize)*gridSize;
	selectedTroop.y = gridYOffset + floor(mouse_y/gridSize)*gridSize;
}