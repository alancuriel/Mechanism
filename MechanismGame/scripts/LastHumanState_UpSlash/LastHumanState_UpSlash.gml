if(sprite_index != spr_last_human_up_slash)
{
	sprite_index = spr_last_human_up_slash;
}

if(animation_end())
{
	state = LAST_HUMAN_STATE.IDLE;
}