if(sprite_index != spr_last_human_death)
{
	hsp = 0;
	vsp = 0;
	sprite_index = spr_last_human_death;
	image_index = 0;
	
	
}



if(animation_end())
{
		state = LAST_HUMAN_STATE.AGGRO;
}