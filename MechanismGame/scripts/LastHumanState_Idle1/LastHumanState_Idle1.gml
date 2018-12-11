

if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
}

if(sprite_index != spr_last_human_idle )
{
	sprite_index = spr_last_human_idle;
}

if(animation_end())
{
	if(abs(xtarget) <= 400)
	{
		var plyrdir = sign(xtarget);
		if(plyrdir >= 1)
		{
			state = LAST_HUMAN_STATE.UPSLASH;
		}
		else
		{
			image_xscale = -1;
			state = LAST_HUMAN_STATE.THRUST_1;
		}
	}
	else
	{
		state = LAST_HUMAN_STATE.CHARGE_WIND;
	}
}
