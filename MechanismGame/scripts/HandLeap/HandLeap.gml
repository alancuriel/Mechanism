
if(sprite_index != spr_enemy_hand_leap_attack)
{
	hsp = leapspd;
	sprite_index = spr_enemy_hand_leap_attack;
}


if(animation_end())
{
	if (!leap_is_alarm_set) {
		image_speed = 0;
		hsp = 0;
		alarm[1] = 60;
		leap_is_alarm_set = 1;
	}
	
}
else {
	state = HAND_STATE.LEAPATTACK;
}