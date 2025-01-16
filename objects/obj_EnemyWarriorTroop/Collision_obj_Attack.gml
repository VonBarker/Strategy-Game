if(!invincible) {
	invincible = true;
	knockedBack = other.knockback;
	stunnedTime = other.stun;
	knockedBackDirection = other.image_angle;
	hp -= other.attackDamage;
	state = stunned;
}