if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x; 
}
else var xtarget = 0;


if(sprite_index != spr_last_human_leap_attack)
{
	sprite_index = spr_last_human_leap_attack;
	image_index = 0;
}


if(animation_end())
{
	state = LAST_HUMAN_STATE.IDLE_S2
}