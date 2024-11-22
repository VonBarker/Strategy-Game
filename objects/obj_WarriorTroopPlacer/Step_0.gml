if(mouse_check_button_pressed(mb_left) && !place_meeting(x, y, obj_Troop) && !place_meeting(x, y, obj_OutOfBounds)) {
	instance_create_layer(x, y, "Instances", obj_WarriorTroop);
}

if(place_meeting(x, y, obj_OutOfBounds) && !place_meeting(x, y, obj_OpponentsZone)) outOfBounds = true;
else outOfBounds = false;

if(place_meeting(x, y, obj_Troop) || place_meeting(x, y, obj_OpponentsZone)) image_blend = c_red;
else image_blend = c_white;