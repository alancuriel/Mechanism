if(sprite_index != spr_enemy_hand_slow)
{
	sprite_index = spr_enemy_hand_slow;
}

image_speed = 1;
hsp = 0.2*walkspd;

if(abs(obj_player.x-x) < 160) {
	state = HAND_STATE.THUMBATTACK;
}
else if((obj_player.x-x >= 0 && obj_player.x-x <= h_rightsight_range) ||
	obj_player.x-x < 0 && x-obj_player.x <= h_leftsight_range) {
	if(abs(obj_player.x-x) < 400) {
		state = HAND_STATE.LEAPATTACK;
	}
	else {
	state = HAND_STATE.SNEAK;
	}
}
else {
	state = HAND_STATE.PATROL;
}