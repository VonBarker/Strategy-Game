if (keyboard_check(ord("W"))) draw_sprite(spr_InputsPressed, 0, x, y + 1);
else draw_sprite(spr_Inputs, 0, x, y);
if (keyboard_check(ord("A"))) draw_sprite(spr_InputsPressed, 1, x, y + 1);
else draw_sprite(spr_Inputs, 1, x, y);
if (keyboard_check(ord("S"))) draw_sprite(spr_InputsPressed, 2, x, y + 1);
else draw_sprite(spr_Inputs, 2, x, y);
if (keyboard_check(ord("D"))) draw_sprite(spr_InputsPressed, 3, x, y + 1);
else draw_sprite(spr_Inputs, 3, x, y);

draw_sprite(spr_Inputs, 4, x, y);
if (mouse_check_button(mb_left)) draw_sprite(spr_InputsPressed, 4, x, y);
if (mouse_check_button(mb_right)) draw_sprite(spr_InputsPressed, 5, x, y);
if (mouse_check_button(mb_middle)) draw_sprite(spr_InputsPressed, 6, x, y);