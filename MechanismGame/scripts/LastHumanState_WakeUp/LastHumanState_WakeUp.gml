if(sprite_index != wake_up_sprites[wake_up_index])
{
	sprite_index = wake_up_sprites[wake_up_index];
}


if(animation_end())
{
	wake_up_index++;
	if(wake_up_index >= wake_up_sprite_count)
	{
		state = LAST_HUMAN_STATE.IDLE;
	}
}