/// @description Insert description here
// You can write your code in this editor
if (state == HAND_STATE.LEAPATTACK || state == HAND_STATE.THUMBATTACK) {
	if (!is_already_hit) {
		hitPlayer();
		is_already_hit = 1;
	}
}