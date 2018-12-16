if(awake)
{
	audio_stop_sound(snd_LH_laying);
	state = LAST_HUMAN_STATE.WAKEUP;
}

if(!audio_is_playing(snd_LH_laying)) {
	audio_play_sound(snd_LH_laying, 40, false);
}