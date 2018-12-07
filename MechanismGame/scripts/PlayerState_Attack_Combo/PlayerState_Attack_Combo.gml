
//Horizontal Collision
if(place_meeting(x + hsp, y, obj_block))
{
	while(!place_meeting(x+sign(hsp),y,obj_block))
	{
			x = x + sign(hsp);
	}
	
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, obj_block))    
{
	while(!place_meeting(x,y + sign(vsp),obj_block))
	{
			y = y + sign(vsp);
	}
	
	vsp = 0;
}
y = y + vsp;

//Start of attack
if(sprite_index != spr_player_1_body_attack_up)
{
	sprite_index = spr_player_1_body_attack_up;
	image_index = 0;
	
	with(obj_player_cape_head)
	{
		sprite_index = spr_player_1_cape_head_attack_up;
		image_index = 0;
	}
	
	with(obj_swrd)
	{
		visible = 1;
		sprite_index = spr_player_1_sword_attack_up;
		image_index = 0;
	}
	
	ds_list_clear(hitByAttack);
}

with(obj_swrd)
{
	followPlayer = false;
	mask_index = spr_player_1_sword_attack_upHB;
	
	var hitByAttacksNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_enemy_hand,hitByAttacksNow,false);
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
					flash = 3;
					hp = hp -50;
				}
			}
		}
	}
	ds_list_destroy(hitByAttacksNow);
	mask_index = spr_player_1_sword_attack_up;
	
	
	
	if(animation_end())
	{
		other.lastAttackState = PLAYERSTATE.ATTACK_COMBO;
		other.state = PLAYERSTATE.FREE;
		sprite_index = spr_player_1_sword_up;
	}
}