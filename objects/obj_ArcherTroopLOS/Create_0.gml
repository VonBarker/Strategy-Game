obj_Game.troopsPlaced +=1;
spd = 0.5;

thisWarriorsAttack = noone;

attackCooldown = 180;
onCooldown = false;

hp = 5;
maxHp = 5;
healthColor = 0;

attackDamage = 5;
knockback = 0;
stun = 0;

invincible = false;

scale = image_xscale;

target = noone;
targetX = x;
targetY = y;

path = path_add();

if (instance_exists(obj_EnemyTroop)) {
	target = obj_EnemyTroop;
	targetX = target.x;
	targetY = target.y;
}

visionCollisionObjects = [obj_Wall];

startX = x;
startY = y;

walkingPoint = noone;

sightRadius = 96;

idleState = function() {
	sightRadius = 96;
	if (obj_Game.roundStarted) alarm[1] = 1;
}

createPathState = function() {
	alarm[0] = 10;
	state = followPathState;
}

followPathState = function() {
	var previousX = x;
	var previousY = y;
	var nextPathX = path_get_point_x(path, 1);
	var nextPathY = path_get_point_y(path, 1);
	mp_potential_step_object(nextPathX, nextPathY, 0.5, obj_Collision);
	if(distance_to_object(target) <= 32*scale && !onCooldown) state = attackState;
}

attackState = function() {
	if(!instance_exists(thisWarriorsAttack) && !onCooldown && instance_exists(target)) {
		var variables = {
			angle : point_direction(x, y, target.x, target.y),
			attackDamage : attackDamage,
			knockback : knockback,
			stun : stun,
			creator : self,
			xScale : image_xscale,
			yScale : image_yscale
		};
		thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_ArcherAttack, variables);
		onCooldown = true;
		alarm[2] = attackCooldown;
	}
	if(!instance_exists(thisWarriorsAttack) && onCooldown) state = createPathState;
}

returnToStartState = function() {
	targetX = startX;
	targetY = startY;
	state = createPathState;
}

state = idleState;