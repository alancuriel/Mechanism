if(instance_exists(obj_player))
{
	var xtarget = obj_player.x - x; 
}
else var xtarget = x + 1;


if(sprite_index != spr_last_human_leap_attack)
{
	sprite_index = spr_last_human_leap_attack;
	image_index = 0;
	y -= 15;
	hsp = 9 * sign(xtarget);
	image_xscale = sign(xtarget);
	ds_list_clear(hitByAttack);
}


	mask_index = spr_last_human_leap_attackHB;
	
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
					
					obj_health_bar.playerhp -= 50;
				}
			}
		}
	}
	ds_list_destroy(hitByAttacksNow);
	mask_index = spr_last_human_leap_attack;


if(image_index >= 5)
{
	hsp = 0;
}

if(animation_end())
{
	hsp = 0;
	state = LAST_HUMAN_STATE.IDLE_S2
}