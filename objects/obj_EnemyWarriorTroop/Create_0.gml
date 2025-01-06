if(instance_exists(obj_Troop)) target = instance_nearest(x, y, obj_Troop);
else target = noone;

spd = 8;
hsp = 0;
vsp = 0;

path = path_add();

pathfinding = false;

thisWarriorsAttack = noone;

attackCooldown = 90;
onCooldown = false;

pathfind = function() {
	if(!pathfinding) {
		pathfinding = true;
		alarm[0] = 15;
	}
	if(distance_to_object(target) <= 48 && !onCooldown) state = attack;
}

attack = function() {
	if(!pathfinding && !instance_exists(thisWarriorsAttack) && !onCooldown) {
		var variables = {
			angle : point_direction(x, y, target.x, target.y),
			creator : self
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

idle = function() {
	if(pathfinding) {
		pathfinding = false;
		path_clear_points(path);
	}
}

state = idle;