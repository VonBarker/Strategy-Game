draw_set_color(c_white);
draw_self();
if(obj_Settings.debugMode == true) {
	draw_set_color(c_fuchsia);
	drawCollisionMask();
}