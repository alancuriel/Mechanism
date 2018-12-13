if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x; 
}
else var xtarget = x + 1;

if(sprite_index != spr_last_human_idle_1 )
{
	sprite_index = spr_last_human_idle_1;
}

if(animation_end())
{
	if(abs(xtarget) <= 400)
	{
		state =  LAST_HUMAN_STATE.FRENZY;
	}
	else
	{
		state = LAST_HUMAN_STATE.LEAP;
	}
}