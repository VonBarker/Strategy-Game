//Horizontal Collision
if (place_meeting(x+hsp,y,obj_OutOfBounds))
{
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
	while (!place_meeting(x,y+sign(vsp),obj_OutOfBounds))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;