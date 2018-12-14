


if(sprite_index != spr_enemy_hand_petrol)
{
	sprite_index = spr_enemy_hand_petrol;
}

hsp = walkspd;
if(place_meeting(x + hsp, y, obj_block_enemy))
{
	
	walking_direction = -walking_direction;
	//image_xscale = - image_xscale;
}


	//var _x = xstart - x;
	
	//if(abs(_x) < 500)
	//{
	//	hsp = walkspd;
	//	if(abs(_x) > 400)
	//	{
	//		hsp = -hsp;
	//	}
		
	//}
	//else
	//{
	//	hsp = walkspd * sign(_x);
	//}
	