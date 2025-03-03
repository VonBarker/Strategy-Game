/// @description Pathfinding
if(instance_exists(obj_EnemyTroop)) {
	target = instance_nearest(x, y, obj_EnemyTroop);

	path_delete(path);
	path = path_add();
	mp_grid_path(global.grid, path, x, y, target.x, target.y, true);
}

if(pathfinding) alarm[0] = 30;