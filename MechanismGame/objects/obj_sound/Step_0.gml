if(instance_exists(obj_last_human))
{
	

	if(!stage_one_boss_music_activated && obj_last_human.awake && (obj_last_human.stage == 1))
	{
		audio_stop_all();
		audio_play_sound(snd_boss_stage_1,1,true);
		stage_one_boss_music_activated = true;
	}


	if(!stage_two_boss_music_activated && obj_last_human.awake && (obj_last_human.stage == 2))
	{
		audio_stop_all();
		audio_play_sound(snd_boss_stage_2,1,true);
		stage_two_boss_music_activated = true;
	}
}