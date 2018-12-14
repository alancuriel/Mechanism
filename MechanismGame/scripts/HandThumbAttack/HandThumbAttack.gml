if(sprite_index != spr_enemy_hand_thumb_attack)
{
	hsp = 0;
	sprite_index = spr_enemy_hand_thumb_attack;
}


if(animation_end())
{
	if (!thumb_is_alarm_set) {
		image_speed = 0;
		hsp = 0;
		alarm[1] = 40;
		thumb_is_alarm_set = 1;
	}
	
}