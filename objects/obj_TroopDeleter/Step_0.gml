event_inherited();

if(mouse_check_button_pressed(mb_left) && place_meeting(x, y, obj_Troop)) {
	instance_destroy(instance_position(x, y, obj_Troop));
}

if(place_meeting(x, y, obj_OutOfBounds) && !place_meeting(x, y, obj_OpponentsZone)) outOfBounds = true;
else outOfBounds = false;