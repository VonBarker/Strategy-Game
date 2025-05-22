draw_set_color(c_white);
draw_self();
if(obj_Settings.debugMode == true) {
	draw_set_color(c_red);
	draw_path(path, x, y, false);
	drawCollisionMask();
}