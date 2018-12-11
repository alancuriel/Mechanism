if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
}

if(sprite_index != spr_last_human_thrust)
{
	sprite_index = spr_last_human_thrust;
}



if(animation_end())
{
	if(abs(xtarget) <= 400)
	{
		state = LAST_HUMAN_STATE.IDLE_1;
	}
	else
	{
		state = LAST_HUMAN_STATE.IDLE;
	}
}