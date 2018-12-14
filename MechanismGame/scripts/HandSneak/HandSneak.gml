sprite_index = spr_enemy_hand_slow;

image_speed = 1;
hsp = 0.2*walkspd;

	if((obj_player.x-x >= 0 && obj_player.x-x <= h_rightsight_range) ||
		obj_player.x-x < 0 && x-obj_player.x <= h_leftsight_range) {
		state = HAND_STATE.SNEAK;
	}
	else {
		state = HAND_STATE.PATROL;
	}