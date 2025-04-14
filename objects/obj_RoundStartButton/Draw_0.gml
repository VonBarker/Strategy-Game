draw_self();

// Cooldown Bars
if (obj_Game.showHealthBars = true) {
	draw_sprite_stretched(spr_BarBackground, 0,x - sprite_width/2, y - 48, 64*image_xscale, 8*image_yscale);
	if (instance_exists(obj_Player)) draw_sprite_stretched(spr_BarColor, 3, x - sprite_width/2 + 1, y - 47, obj_Player.attackCooldownCounter/obj_Player.attackCooldown * 64*image_xscale - 2, 8*image_yscale - 2);
	draw_sprite_stretched(spr_BarBorder, 0, x - sprite_width/2, y - 48, 64*image_xscale, 8*image_yscale);
	
	draw_sprite_stretched(spr_BarBackground, 0,x - sprite_width/2, y - 32, 64*image_xscale, 8*image_yscale);
	if (instance_exists(obj_Player)) draw_sprite_stretched(spr_BarColor, 4, x - sprite_width/2 + 1, y - 31, obj_Player.rangedAttackCooldownCounter/obj_Player.rangedAttackCooldown * 64*image_xscale - 2, 8*image_yscale - 2);
	draw_sprite_stretched(spr_BarBorder, 0, x - sprite_width/2, y - 32, 64*image_xscale, 8*image_yscale);
}