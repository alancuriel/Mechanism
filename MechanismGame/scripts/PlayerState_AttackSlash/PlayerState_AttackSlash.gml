



//Start of attack
if(sprite_index != spr_player_1_body_attack_down)
{
	sprite_index = spr_player_1_body_attack_down;
	image_index = 0;
	
	with(obj_player_cape_head)
	{
		sprite_index = spr_player_1_cape_head_attack_down;
		image_index = 0;
	}
	
	with(obj_swrd)
	{
		visible = 1;
		sprite_index = spr_player_1_sword_attack_down;
		image_index = 0;
	}
	
	ds_list_clear(hitByAttack);
}

with(obj_swrd)
{
	followPlayer = false;
	mask_index = spr_player_1_sword_attack_downHB;
	
	var hitByAttacksNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_enemy,hitByAttacksNow,false);
	if(hits > 0)
	{
		for(var i = 0; i < hits; i++)
		{
			var hitID = hitByAttacksNow[| i];
			if(ds_list_find_index(other.hitByAttack,hitID) == -1)
			{
				ds_list_add(other.hitByAttack,hitID);
				with(hitID)
				{
					hsp = -hsp;
					vsp = -3;
				}
			}
		}
	}
	ds_list_destroy(hitByAttacksNow);
	mask_index = spr_player_1_sword_attack_down;
	
	
	if(animation_end())
	{
		other.lastAttackState = PLAYERSTATE.ATTACK_SLASH;
		other.state = PLAYERSTATE.FREE;
	}
}