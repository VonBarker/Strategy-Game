draw_self();

// Health Bar
if (obj_Game.showHealthBars = true) {
	if (hp > (maxHp/3)*2) healthColor = 0;
	else if (hp > (maxHp/4)) healthColor = 1;
	else healthColor = 2;
	
	draw_sprite_stretched(spr_HealthBarBG, 0, x - 64*image_xscale/2, y - 32*image_yscale, 64*image_xscale, 8*image_yscale);
	draw_sprite_stretched(spr_HealthBar, healthColor, x - 64*image_xscale/2 + 1, y - 32*image_yscale + 1, hp/maxHp * 64*image_xscale - 2, 8*image_yscale - 2);
	draw_sprite_stretched(spr_HealthBarBorder, 0, x - 64*image_xscale/2, y - 32*image_yscale, 64*image_xscale, 8*image_yscale);
}