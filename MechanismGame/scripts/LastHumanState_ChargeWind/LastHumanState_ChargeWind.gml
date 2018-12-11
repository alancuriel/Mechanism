if(sprite_index != spr_last_human_charge0)
{
	sprite_index = spr_last_human_charge0;	
}



if(animation_end())
{
	state = LAST_HUMAN_STATE.CHARGE;
}