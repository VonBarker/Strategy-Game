if(obj_Game.roundStarted && !wasRoundStarted) {
	state = pathfind;
	alarm[1] = random_range(0,90);
}
wasRoundStarted = obj_Game.roundStarted;

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

if(hp <= 0) {
	instance_destroy();
}

state();