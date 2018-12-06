/// @description Draw Menu
draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++)
{
		var offset = 2;
		var txt = menu[i];
		if(menu_cursor == i)
		{
			var col = c_gray;
		}
		else
		{
			var col = c_white;
		}
		
		var xx = menu_x;
		var yy = menu_y - (menu_itemheight * (i * 2));
		draw_set_color(col);
		draw_text(xx,yy,txt);
}

draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_text(130, (gui_height/4) *3, title);