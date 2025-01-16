draw_set_color(c_white);
draw_self();
if(debug_mode) {
	draw_set_color(c_fuchsia);
	draw_path(path, x, y, false);
}