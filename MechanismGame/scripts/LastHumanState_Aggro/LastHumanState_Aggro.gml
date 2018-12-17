if(sprite_index != spr_last_human_death_laying)
{
	sprite_index = spr_last_human_death_laying;
	image_index = 0;
	audio_stop_all();
	audio_play_sound(snd_armoury_music,1,true);
}


