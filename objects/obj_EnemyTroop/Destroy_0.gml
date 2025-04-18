randomize();
var r = irandom_range(0, 1);

if (r = 1) {
	var variables = {
		xScale : image_xscale,
		yScale : image_yscale
	};
	if (room >= 4) instance_create_layer(x, y, "Instances", obj_Heal, variables);
}