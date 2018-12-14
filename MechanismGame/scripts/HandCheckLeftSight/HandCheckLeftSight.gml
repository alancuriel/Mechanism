if(obj_player.x-x < 0 && x-obj_player.x <= h_leftsight_range) {
	
	if(h_leftsight_range == h_backsight_range) {
		walking_direction = -walking_direction;
	}
	
	if (state == HAND_STATE.PATROL) {
		HandPause();
	}
}