function Menu(_x, _y, _options, _description = -1, _width, _height){
	with (instance_create_depth(_x, _y, -999, obj_Menu))
	{
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hoverMarker = "->";
		
		//Set up size
		margin = 8;
		draw_set_font(font_Menu);
		
		width = 1;
		if(_description != -1) width = max(width, string_width(_description));
		for(var i = 0; i < optionsCount; i++)
		{
			width = max(width, string_width(_options[i][0]));
		}
		width += string_width(hoverMarker);
		
		heightLine = 18;
		height = heightLine * (optionsCount + !(description == -1));
		widthFull = _width;
		heightFull = _height;
	}
}