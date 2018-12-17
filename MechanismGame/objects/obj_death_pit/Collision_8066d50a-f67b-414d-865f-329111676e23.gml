/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(snd_dropDeath)) {
	audio_play_sound(snd_dropDeath, 90, false);
}
obj_health_bar.playerhp -= 2*obj_health_bar.playermaxhp;