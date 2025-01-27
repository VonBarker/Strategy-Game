event_inherited();

//When in the playable area the troop can be placed
if(mouse_check_button_pressed(mb_left) && !place_meeting(x, y, obj_Troop) && !place_meeting(x, y, obj_OutOfBounds) && !place_meeting(x, y, obj_OpponentsZone) && obj_Game.troopsPlaced < obj_Game.maxTroops) {
	instance_create_layer(x, y, "Instances", obj_TankTroop);
	obj_Game.troopsPlaced += 1;
}

if(place_meeting(x, y, obj_OutOfBounds) && !place_meeting(x, y, obj_OpponentsZone)) outOfBounds = true;
else outOfBounds = false;

//Changes color based on if it can be placed there or not
if(place_meeting(x, y, obj_Troop) || place_meeting(x, y, obj_OpponentsZone)) image_blend = c_red;
else image_blend = c_white;