
with(obj_swrd)
{
	if(!followPlayer)
	{
		if(sprite_index == spr_player_1_sword_up)
		{
			
			draw_set_color(c_blue);
			draw_line_width(x+(image_xscale * 24),y- 93,obj_player.x, obj_player.y,5);
		}
	
		if(sprite_index == spr_player_1_sword_down)
		{
			
			draw_set_color(c_blue);
			draw_line_width(x+(image_xscale *37),y+38,obj_player.x, obj_player.y,5);
		}
	}
}