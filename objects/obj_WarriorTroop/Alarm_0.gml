target = instance_nearest(x, y, obj_EnemyTroop);

path_clear_points(path);
path_add_point(path, x, y, spd);
if(point_direction(target.x, target.y, x, y) < 90 || point_direction(target.x, target.y, x, y) > 270) destinationX = target.x - sin(point_direction(target.x, target.y, x, y))*48;
else destinationX = target.x + sin(point_direction(target.x, target.y, x, y))*48;
if(point_direction(target.x, target.y, x, y) < 180) destinationY = target.y - cos(point_direction(target.x, target.y, x, y))*48;
else destinationY = target.y + cos(point_direction(target.x, target.y, x, y))*48;
path_add_point(path, destinationX, destinationY, spd);

if(collision_point(path_get_point_x(path, 1), path_get_point_y(path, 1), obj_OutOfBounds, false, true)){
	if(x < 304) path_change_point(path,1, path_get_point_x(path, 1) + point_distance(x, y, inst_OutOfBounds_Left.x + inst_OutOfBounds_Left.sprite_width*inst_OutOfBounds_Left.image_xscale/2, y), path_get_point_y(path, 1), spd);
	else path_change_point(path,1, path_get_point_x(path, 1) - point_distance(x, y, inst_OutOfBounds_Right.x - inst_OutOfBounds_Right.sprite_width*inst_OutOfBounds_Right.image_xscale/2, y), path_get_point_y(path, 1), spd);
	if(y < 128) path_change_point(path,1, path_get_point_x(path, 1), path_get_point_y(path, 1) + point_distance(x, y, x, inst_OutOfBounds_Top.y + inst_OutOfBounds_Top.sprite_height*inst_OutOfBounds_Top.image_yscale/2), spd);
	else path_change_point(path,1, path_get_point_x(path, 1), path_get_point_y(path, 1) - point_distance(x, y, x, inst_OutOfBounds_Bottom.y - inst_OutOfBounds_Bottom.sprite_height*inst_OutOfBounds_Bottom.image_yscale/2), spd);
}


path_start(path, spd, path_action_stop, false);

alarm[0] = 15;