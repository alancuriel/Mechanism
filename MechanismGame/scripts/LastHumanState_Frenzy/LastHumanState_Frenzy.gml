if(sprite_index != spr_last_human_frenzy)
{
	sprite_index = spr_last_human_frenzy;
}

if(image_index >= 4 && image_index < 5)//right
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = 10;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
}

if(image_index >= 7 && image_index < 8)//right
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = 10;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
}

if(image_index >= 10 && image_index < 11)//both
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = 10;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
	
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = -10;
		image_xscale = -0.3;
		image_yscale = 0.3;
	}
}
if(image_index >= 13 && image_index < 14)//left
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = -10;
		image_xscale = -0.3;
		image_yscale = 0.3;
	}
}
if(image_index >= 16 && image_index < 17)//right
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = 10;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
}

if(image_index >= 18 && image_index < 19)//left
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = -10;
		image_xscale = -0.3;
		image_yscale = 0.3;
	}
}

if(image_index >= 25 && image_index < 26)//right
{
	with(instance_create_layer(x,y,"layer_player", obj_last_human_frenzy_wave))
	{
		speed = 11;
		image_xscale = 0.3;
		image_yscale = 0.3;
		
	}
}

if(animation_end())
{
	state = LAST_HUMAN_STATE.IDLE_S2;
}