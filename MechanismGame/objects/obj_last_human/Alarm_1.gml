/// @trasition 1st frame hold
image_speed = 1;
if(state == LAST_HUMAN_STATE.TRANS) {
	audio_play_sound(snd_LH_transition, 40, false);
}
else if (state == LAST_HUMAN_STATE.DEAD) {
	audio_play_sound(snd_LH_death, 40, false);
}