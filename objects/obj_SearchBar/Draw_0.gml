draw_set_color(c_white);
draw_self();

draw_set_color(c_black);
if(typing) text = keyboard_string;
var t_ = text + typingMarker;
draw_text(78, 31, t_);