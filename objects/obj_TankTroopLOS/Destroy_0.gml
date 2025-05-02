repeat 16 {
	var variables = {
			color : make_color_rgb(80, 127, 76),
			xScale : image_xscale,
			yScale : image_yscale
		};
	instance_create_layer(x, y, "Instances", obj_DeathParticle, variables);
}