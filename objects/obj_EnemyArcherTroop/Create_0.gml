if(instance_exists(obj_Troop)) target = instance_nearest(x, y, obj_Troop);
else target = noone;

spd = 8;
hsp = 0;
vsp = 0;

path = path_add();

pathfinding = false;

thisWarriorsAttack = noone;

attackCooldown = 120;
onCooldown = false;

hp = 5;
attackDamage = 5;
knockback = 3;
stun = 0.5;

knockedBack = 0;
knockedBackDirection = 0;
stunnedTime = 0;
invincible = false;

wasRoundStarted = false;

pathfind = function() {
	if(distance_to_object(target) <= 160 && !onCooldown) state = attack;
	if(!pathfinding) {
		pathfinding = true;
		alarm[0] = 30;
	}
	invincible = false;
}

attack = function() {
	if(!pathfinding && !instance_exists(thisWarriorsAttack) && !onCooldown && instance_exists(target)) {
		var variables = {
			angle : point_direction(x, y, target.x, target.y),
			attackDamage : attackDamage,
			knockback : knockback,
			stun : stun,
			creator : self
		};
		thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_EnemyArcherAttack, variables);
		onCooldown = true;
		alarm[1] = attackCooldown;
	}
	if(pathfinding) {
		pathfinding = false;
		path_clear_points(path);
	}
	if(!instance_exists(thisWarriorsAttack) && onCooldown) state = pathfind;
}

stunned = function() {
	if(pathfinding) {
		pathfinding = false;
		path_clear_points(path);
	}
	while(knockedBack > 0) {
		hsp = lengthdir_x((knockedBack/2), knockedBackDirection);
		vsp = lengthdir_y((knockedBack/2), knockedBackDirection);
		
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
		x = x + hsp;

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
		
		knockedBack -= (knockedBack/2);
	}
	knockedBack = 0;
	state = pathfind;
}

idle = function() {
	if(pathfinding) {
		pathfinding = false;
		path_clear_points(path);
	}
}

state = idle;