if(sprite_index != wake_up_sprites[wake_up_index])
{
	sprite_index = wake_up_sprites[wake_up_index];
}


if(animation_end())
{
	wake_up_index++;
	if(wake_up_index >= wake_up_sprite_count)
	{
		audio_stop_sound(snd_LH_wakeup);
		state = LAST_HUMAN_STATE.IDLE;
		wake_up_index = 0;
	}
}

if(!audio_is_playing(snd_LH_wakeup)) {
	audio_play_sound(snd_LH_wakeup, 40, false);
}