//Horizontal Collision
if (place_meeting(x+hsp,y,obj_OutOfBounds))
{
	path_end();
	while (!place_meeting(x+sign(hsp),y,obj_OutOfBounds))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_OutOfBounds))
{
	path_end();
	while (!place_meeting(x,y+sign(vsp),obj_OutOfBounds))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (pathfinding && !collision_point(path_get_point_x(path, 1), path_get_point_y(path, 1), obj_OutOfBounds, false, true)) path_start(path, spd, path_action_stop, false);

state();