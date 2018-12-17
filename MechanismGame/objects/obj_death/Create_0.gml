alarm[0] = 630

if(!audio_is_playing(snd_dropDeath)) {
	audio_stop_all();
}

audio_play_sound(snd_player_death, 100, false);
