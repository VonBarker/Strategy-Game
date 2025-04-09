draw_self();

// Health Bar
if (obj_Game.showHealthBars = true) {
	draw_sprite_stretched(spr_HealthBarBG, 0, x - 64*image_xscale/2, y - 32*image_yscale, 64*image_xscale, 8*image_yscale);
	draw_sprite_stretched(spr_HealthBar, 0, x - 64*image_xscale/2 + 1, y - 32*image_yscale + 1, hp/maxHp * 64*image_xscale - 2, 8*image_yscale - 2);
	draw_sprite_stretched(spr_HealthBarBorder, 0, x - 64*image_xscale/2, y - 32*image_yscale, 64*image_xscale, 8*image_yscale);
}