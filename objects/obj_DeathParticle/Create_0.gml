image_blend = color;
image_xscale = xScale;
image_yscale = yScale;

image_index = irandom_range(0, 1);
if (image_blend == make_color_rgb(0, 0, 0)) {
	image_blend = c_white;
	image_index = irandom_range(2, 3);
}

direction = irandom_range(0,359);
speed = random_range(0.75,2)*image_xscale;