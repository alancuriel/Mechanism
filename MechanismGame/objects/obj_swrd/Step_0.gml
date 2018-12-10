if(recall)
{
	visible = 0;
	if(sprite_index == spr_player_1_sword_up)
	{
		instance_create_layer(x+24,y-93,"layer_player",obj_player_1_sword_return);
	}
	
	if(sprite_index == spr_player_1_sword_down)
	{
		instance_create_layer(x+37,y+38,"layer_player",obj_player_1_sword_return);
	}
	recall = false;
}


if(followPlayer)
{
	with(obj_player)
	{
		other.x = x;
		other.y = y;
	
		other.image_xscale = image_xscale;
	}
}