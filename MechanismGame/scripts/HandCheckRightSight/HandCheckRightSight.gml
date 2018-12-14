if(obj_player.x-x >= 0 && obj_player.x-x <= h_rightsight_range) {
	if(h_rightsight_range == h_backsight_range) {
		walking_direction = -walking_direction;
	}
	if (state == HAND_STATE.PATROL) {
		HandPause();
	}
}