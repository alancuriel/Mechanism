
if(sprite_index != spr_enemy_hand_leap_attack)
{
	sprite_index = spr_enemy_hand_leap_attack;
}


image_speed = 1;
hsp = leapspd;




if(animation_end())
{
	state = HAND_STATE.SNEAK;
}
else {
	state = HAND_STATE.LEAPATTACK;
}