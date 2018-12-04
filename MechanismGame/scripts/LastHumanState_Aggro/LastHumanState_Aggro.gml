var xtarget = obj_player.x - x;

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


if(!place_meeting(x,y+1,obj_block))
{
	
	
}
else
{
		//image_speed = 1;
		if(hsp == 0)
		{
			
			//sprite_index = ;
			
		}
		else
		{
			//sprite_index = ;
			
		}
}

hsp *= sign(xtarget);

if(abs(xtarget) < 150) state = LAST_HUMAN_STATE.THRUST;
