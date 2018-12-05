//Replace room number to test that room
room_goto(rm_basement_1);
with(obj_sound)
{
	audio_pause_all();
	audio_play_sound(snd_armoury_music,1,true);
}