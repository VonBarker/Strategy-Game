if(instance_exists(obj_Troop)) target = instance_nearest(x, y, obj_Troop);
else target = noone;

spd = 0.5;
hsp = 0;
vsp = 0;

path = path_add();

pathfinding = false;

thisWarriorsAttack = noone;

attackCooldown = 180;
onCooldown = false;

hp = 10;
maxHp = 10;
attackDamage = 2;
knockback = 5;
stun = 0.5;

knockedBack = 0;
knockedBackDirection = 0;
stunnedTime = 0;
invincible = false;

wasRoundStarted = false;

scale = image_xscale;

pathfind = function() {
	if(distance_to_object(target) <= 32*scale && !onCooldown) state = attack;
	if(!pathfinding) {
		pathfinding = true;
		alarm[0] = 30;
	}
	var nextX = path_get_point_x(path, 1);
	var nextY = path_get_point_y(path, 1);
	mp_potential_step_object(nextX, nextY, spd, obj_Collision);
}

attack = function() {
	if(!pathfinding && !instance_exists(thisWarriorsAttack) && !onCooldown && instance_exists(target)) {
		var variables = {
			angle : point_direction(x, y, target.x, target.y),
			attackDamage : attackDamage,
			knockback : knockback,
			stun : stun,
			creator : self,
			xScale : image_xscale,
			yScale : image_yscale
		};
		thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_EnemyWarriorAttack, variables);
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