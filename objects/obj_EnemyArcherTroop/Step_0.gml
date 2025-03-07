if(obj_Game.roundStarted && !wasRoundStarted) {
	state = pathfind;
	alarm[1] = random_range(0,60);
}
wasRoundStarted = obj_Game.roundStarted;

//Horizontal Collision
if(place_meeting(x+hsp,y,obj_Collision))
{
	path_end();
	while (!place_meeting(x+sign(hsp),y,obj_Collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}


//Vertical Collision
if(place_meeting(x,y+vsp,obj_Collision))
{
	path_end();
	while (!place_meeting(x,y+sign(vsp),obj_Collision))
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