if(sprite_index != spr_enemy_hand_thumb_attack)
{
	hsp = 0;
	sprite_index = spr_enemy_hand_thumb_attack;
	//ds_list_clear(hitByAttack);
}

//mask_index = spr_enemy_hand_thumb_attackHB;
	
//var hitByAttacksNow = ds_list_create();
//var hits = instance_place_list(x,y,obj_player,hitByAttacksNow,false);
//if(hits > 0)
//{
//	for(var i = 0; i < hits; i++)
//	{
//		var hitID = hitByAttacksNow[| i];
//		if(ds_list_find_index(hitByAttack,hitID) == -1)
//		{
//			ds_list_add(hitByAttack,hitID);
//			with(hitID)
//			{
					
//				obj_health_bar.playerhp -= 10;
//			}
//		}
//	}
//}
//ds_list_destroy(hitByAttacksNow);
//mask_index = spr_enemy_hand_thumb_attack;

if (animation_end()) {
	is_already_hit = 0;
	if(abs(obj_player.x-x) < 140) {
	
		state = HAND_STATE.THUMBATTACK;
	}
	else {
		state = HAND_STATE.SNEAK;
	}
}
