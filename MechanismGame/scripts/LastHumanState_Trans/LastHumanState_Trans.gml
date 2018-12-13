if(sprite_index != trans_sprites[trans_index])
{
	sprite_index = trans_sprites[trans_index];
	image_index = 0;
	if(sprite_index == trans_sprites[0]) 
	{
		image_speed = 0;
		alarm[1] = 60;
	}
}



if(animation_end())
{
	trans_index++;
	if(trans_index >= trans_sprites_count)
	{
		state = LAST_HUMAN_STATE.LEAP;
		trans_index = 0;
	}
}