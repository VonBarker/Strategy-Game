event_inherited();

if(mouse_check_button_pressed(mb_left) && place_meeting(x, y, obj_Troop)) {
	instance_destroy(instance_position(x, y, obj_Troop));
}

if(place_meeting(x, y, obj_OutOfBounds) && !place_meeting(x, y, obj_OpponentsZone)) outOfBounds = true;
else outOfBounds = false;

//Changes color based on if it is on the opponents side or not
if(place_meeting(x, y, obj_OpponentsZone)) image_blend = c_red;
else image_blend = c_white;