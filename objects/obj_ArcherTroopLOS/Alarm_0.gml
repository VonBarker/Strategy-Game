/// @description Pathfinding

path_delete(path);
path = path_add();

mp_grid_path(global.grid, path, x, y, targetX, targetY, true);

if (state == followPathState) alarm[0] = 10;