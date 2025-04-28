var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyAttack = mouse_check_button(mb_left);
var keyRangedAttack = mouse_check_button(mb_right);

if (!obj_Game.roundStarted) {
	keyUp = 0;
	keyDown = 0;
	keyLeft = 0;
	keyRight = 0;
	keyAttack = 0;
	keyRangedAttack = 0;
}

if (keyRight - keyLeft != 0 && keyDown - keyUp != 0) var spd = defaultSpd/14*10;
else spd = defaultSpd
hsp = (keyRight - keyLeft)*spd;
vsp = (keyDown - keyUp)*spd;

//Horizontal Collision
if(place_meeting(x+hsp,y,obj_Collision)) {
	path_end();
	while (!place_meeting(x+sign(hsp),y,obj_Collision))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_Collision)) {
	path_end();
	while (!place_meeting(x,y+sign(vsp),obj_Collision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (keyAttack && !onCooldown) {
	var variables = {
		angle : point_direction(x, y, mouse_x, mouse_y),
		attackDamage : attackDamage,
		knockback : knockback,
		stun : stun,
		creator : self,
		xScale : image_xscale,
		yScale : image_yscale
	};
	thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_WarriorAttack, variables);
	onCooldown = true;
	alarm[1] = attackCooldown;
	attackCooldownCounter = 0;
}

if (keyRangedAttack && !rangeOnCooldown) {
	var variables = {
		angle : point_direction(x, y, mouse_x, mouse_y),
		attackDamage : attackDamage/2,
		knockback : knockback/2,
		stun : stun,
		creator : self,
		xScale : image_xscale,
		yScale : image_yscale
	};
	thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_ArcherAttack, variables);
	rangeOnCooldown = true;
	alarm[2] = rangedAttackCooldown;
	rangedAttackCooldownCounter = 0;
}

if (hp <= 0) instance_destroy();
else if (hp > maxHp) hp = maxHp;
if (attackCooldownCounter < 60) attackCooldownCounter++;
if (rangedAttackCooldownCounter < 120) rangedAttackCooldownCounter++;