if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x;
}

if(sprite_index != spr_last_human_slash)
{
	sprite_index = spr_last_human_slash;
	ds_list_clear(hitByAttack);
}

mask_index = spr_last_human_slashHB;
	
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
	mask_index = spr_last_human_slash;

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



