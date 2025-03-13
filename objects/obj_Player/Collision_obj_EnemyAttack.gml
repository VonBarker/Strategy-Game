if(!invincible) {
	invincible = true;
	alarm[3] = 30;
	//knockedBack = other.knockback;
	//stunnedTime = other.stun;
	//knockedBackDirection = other.image_angle;
	hp -= other.attackDamage;
}