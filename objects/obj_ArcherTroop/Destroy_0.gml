repeat 16 {
	var variables = {
			color : make_color_rgb(163, 98, 10),
			xScale : image_xscale,
			yScale : image_yscale
		};
	instance_create_layer(x, y, "Instances", obj_DeathParticle, variables);
}