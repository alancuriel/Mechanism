if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
}

if(sprite_index != spr_last_human_charge1)
{
	sprite_index = spr_last_human_charge1;
	y -= 15;
	hsp = thrustspd * 5 * sign(xtarget);
}




if(image_index >= 8)
{
	hsp = 0;
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