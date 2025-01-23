draw_set_color(c_black);
draw_text(32, 200, string(instance_number(obj_Troop)));
draw_text(72, 200, string(instance_number(obj_EnemyTroop)));

if(roundEnded && won) draw_text(room_width/2 - string_width("You Won!")/2 + 48, room_height/2 - 32, "You Won!")
if(roundEnded && !won) {
	draw_set_color(c_red);
	draw_text(room_width/2 - string_width("You Lost.")/2 + 48, room_height/2 - 32, "You Lost.")
}