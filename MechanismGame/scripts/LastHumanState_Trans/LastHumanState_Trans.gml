if(sprite_index != trans_sprites[trans_index])
{
	sprite_index = trans_sprites[trans_index];
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