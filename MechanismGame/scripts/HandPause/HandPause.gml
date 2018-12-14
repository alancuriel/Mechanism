image_speed = 0;
hsp = 0;
alarm[0] = 60

pause_steps ++;

if (pause_steps >= 120) {
	pause_steps = 0;
	if((obj_player.x-x >= 0 && obj_player.x-x <= h_rightsight_range) ||
		obj_player.x-x < 0 && x-obj_player.x <= h_leftsight_range) {
		state = HAND_STATE.SNEAK;
	}
}
else {
	pause_steps ++;
}
