if(place_meeting(x,y,obj_player))
{
	drawText = true;
	if(!alreadyPlaySound) {
		audio_play_sound(snd_open_note, 35, false);
		alreadyPlaySound = true;
	}
}
else
{
	drawText = false;
	alreadyPlaySound = false;
}
