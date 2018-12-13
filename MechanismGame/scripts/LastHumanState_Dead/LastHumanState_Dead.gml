if(sprite_index != death_sprites[death_index])
{
	sprite_index = death_sprites[death_index];
	image_index = 0;
	if(sprite_index == death_sprites[0]) 
	{
		image_speed = 0;
		alarm[1] = 60;
	}
}



if(animation_end())
{
	death_index++;
	if(death_index >= death_sprites_count)
	{
		state = LAST_HUMAN_STATE.AGGRO;
		death_index = 0;
	}
}