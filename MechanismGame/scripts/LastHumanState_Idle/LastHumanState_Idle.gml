

if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
}

if(sprite_index != spr_last_human_idle )
{
	sprite_index = spr_last_human_idle;
	image_xscale = sign(xtarget);
}

if(animation_end())
{
	if(abs(xtarget) <= 400)
	{
		var attackbool = Chance(0.5);
		if(attackbool)
		{
			state = LAST_HUMAN_STATE.SLASH;
		}
		else
		{
			state = LAST_HUMAN_STATE.THRUST;
		}
	}
	else
	{
		state = LAST_HUMAN_STATE.CHARGE_WIND;
	}
}
