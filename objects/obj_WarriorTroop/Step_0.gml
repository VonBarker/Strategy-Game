//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Collision))
{
	path_end();
	while (!place_meeting(x+sign(hsp),y,obj_Collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_Collision))
{
	path_end();
	while (!place_meeting(x,y+sign(vsp),obj_Collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (!collision_point(path_get_point_x(path, 1), path_get_point_y(path, 1), obj_Collision, false, true)) path_start(path, spd, path_action_stop, false);