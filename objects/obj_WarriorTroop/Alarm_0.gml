/// @description Pathfinding
if(instance_exists(obj_EnemyTroop)) target = instance_nearest(x, y, obj_EnemyTroop);

path_clear_points(path);
path_add_point(path, x, y, spd);
if(point_direction(target.x, target.y, x, y) < 90 || point_direction(target.x, target.y, x, y) > 270) destinationX = target.x - sin(point_direction(target.x, target.y, x, y))*48;
else destinationX = target.x + sin(point_direction(target.x, target.y, x, y))*48;
if(point_direction(target.x, target.y, x, y) < 180) destinationY = target.y - cos(point_direction(target.x, target.y, x, y))*48;
else destinationY = target.y + cos(point_direction(target.x, target.y, x, y))*48;
path_add_point(path, destinationX, destinationY, spd);

path_start(path, spd, path_action_stop, false);

if(pathfinding) alarm[0] = 15;