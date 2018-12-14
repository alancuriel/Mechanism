
if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
	if(xtarget == 0) xtarget +=1;
}

if(sprite_index != spr_last_human_charge0)
{
	sprite_index = spr_last_human_charge0;
	image_xscale = sign(xtarget);
}



if(animation_end())
{
	state = LAST_HUMAN_STATE.CHARGE;
}