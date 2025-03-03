/// @description Pathfinding
if(instance_exists(obj_EnemyTroop)) {
	target = instance_nearest(x, y, obj_EnemyTroop);
	targetX = target.x;
	targetY = target.y;
}
else {
	targetX = 480;
	targetY = 160;
}

path_delete(path);
path = path_add();
mp_grid_path(global.grid, path, x, y, targetX, targetY, true);

if(pathfinding) alarm[0] = 30;