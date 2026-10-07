//draw_set_font();
draw_set_halign(fa_left);
draw_set_valign(fa_left);

var tam_menu = array_length(menu);

for (var i = 0; i < tam_menu; i++)
{
	var hstr = string_height("I");
	var wstr = string_width(menu[i]);
	
	draw_text_transformed(20, 200 + hstr * i ,menu[i] ,1 ,1 ,0 )
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);