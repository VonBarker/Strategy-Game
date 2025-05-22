function drawCollisionMask(){
	// Get the unmodified mask data
	var _b1 = sprite_get_bbox_left(sprite_index)*image_xscale;
	var _b2 = sprite_get_bbox_top(sprite_index)*image_yscale;
	var _b3 = sprite_get_bbox_right(sprite_index)*image_xscale;
	var _b4 = sprite_get_bbox_bottom(sprite_index)*image_yscale;

	var _xoff = sprite_get_xoffset(sprite_index)*image_xscale;
	var _yoff = sprite_get_yoffset(sprite_index)*image_yscale;

	// Get the unmodified vector for each corner
	var _dis1 = point_distance(_xoff, _yoff, _b1, _b2);
	var _dir1 = point_direction(_xoff, _yoff, _b1, _b2);
	var _dis2 = point_distance(_xoff, _yoff, _b3, _b2);
	var _dir2 = point_direction(_xoff, _yoff, _b3, _b2);
	var _dis3 = point_distance(_xoff, _yoff, _b3, _b4);
	var _dir3 = point_direction(_xoff, _yoff, _b3, _b4);
	var _dis4 = point_distance(_xoff, _yoff, _b1, _b4);
	var _dir4 = point_direction(_xoff, _yoff, _b1, _b4);

	// Now modify the vectors using the current position and image angle
	var _x1 = x + lengthdir_x(_dis1, image_angle + _dir1);
	var _y1 = y + lengthdir_y(_dis1, image_angle + _dir1);
	var _x2 = x + lengthdir_x(_dis2, image_angle + _dir2);
	var _y2 = y + lengthdir_y(_dis2, image_angle + _dir2);
	var _x3 = x + lengthdir_x(_dis3, image_angle + _dir3);
	var _y3 = y + lengthdir_y(_dis3, image_angle + _dir3);
	var _x4 = x + lengthdir_x(_dis4, image_angle + _dir4);
	var _y4 = y + lengthdir_y(_dis4, image_angle + _dir4);

	// Draw the mask box
	draw_line(_x1, _y1, _x2, _y2);
	draw_line(_x2, _y2, _x3, _y3);
	draw_line(_x3, _y3, _x4, _y4);
	draw_line(_x4, _y4, _x1, _y1);
}