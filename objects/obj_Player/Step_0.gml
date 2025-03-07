var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyAttack = mouse_check_button(mb_left);
var keyRangedAttack = mouse_check_button(mb_right);

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
		creator : self
	};
	thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_WarriorAttack, variables);
	onCooldown = true;
	alarm[1] = attackCooldown;
}

if (keyRangedAttack && !rangeOnCooldown) {
	var variables = {
		angle : point_direction(x, y, mouse_x, mouse_y),
		attackDamage : attackDamage/2,
		knockback : knockback/2,
		stun : stun,
		creator : self
	};
	thisWarriorsAttack = instance_create_layer(x, y, "Instances", obj_ArcherAttack, variables);
	rangeOnCooldown = true;
	alarm[2] = rangedAttackCooldown;
}

if (hp <= 0) instance_destroy();