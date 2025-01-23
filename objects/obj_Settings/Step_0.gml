if(keyboard_check_pressed(vk_f11) && !instance_exists(obj_Menu)) ToggleFullscreen();
if(position_meeting(mouse_x, mouse_y, obj_Interactable)) window_set_cursor(cr_handpoint);
else window_set_cursor(cr_default);