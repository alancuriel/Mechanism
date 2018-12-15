if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
	if(xtarget == 0) xtarget +=1;
} 

if(sprite_index != spr_last_human_charge1)
{
	sprite_index = spr_last_human_charge1;
	y -= 15;
	hsp = thrustspd * 5 * sign(xtarget);
	image_xscale = sign(xtarget);
	ds_list_clear(hitByAttack);
}

mask_index = spr_last_human_charge1HB;
	
	var hitByAttacksNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_player,hitByAttacksNow,false);
	if(hits > 0)
	{
		for(var i = 0; i < hits; i++)
		{
			var hitID = hitByAttacksNow[| i];
			if(ds_list_find_index(hitByAttack,hitID) == -1)
			{
				ds_list_add(hitByAttack,hitID);
				with(hitID)
				{
					
					hitPlayer();
				}
			}
		}
	}
	ds_list_destroy(hitByAttacksNow);
	mask_index = spr_last_human_charge1;


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