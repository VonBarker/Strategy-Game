draw_sprite_stretched(spr_MenuBox, 0, x - margin, y - margin, widthFull, heightFull);

draw_set_color(c_white);
draw_set_font(font_Menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for(l = 0; l < (optionsCount + _desc); l++)
{
	draw_set_color(c_white);
	if(l == 0) && (_desc)
	{
		draw_text(x, y, description);
	}
	else
	{
		var _str = options[l - _desc][0]
		if (hover == l - _desc)
		{
			draw_set_color(c_yellow);
			_str = hoverMarker + _str;
		}
		draw_text(x, y + l * heightLine, _str);
	}
}