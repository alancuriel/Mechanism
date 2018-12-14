
xtarget = follow.x - x;
ytarget = follow.y - y;


vsp = vsp + grv;
hsp = walkspd;
//Horizontal Collision
//always check primary wall boundries, but enemy wall boundaries are only checked in patrol mode
if(place_meeting(x + hsp, y, obj_block))
{
	while(!place_meeting(x+sign(hsp),y,obj_block))
	{
			x = x + sign(hsp);
	}
	
	walking_direction = -walking_direction;
}
x = x + hsp*walking_direction;;

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

//change image direction based on walking direction
image_xscale = sign(walking_direction)

//if(abs(xtarget) < 800)
//{
//	hsp = walkspd/2 * (-1* sign(xtarget));	
//}

if(hp <=0)
{
	instance_destroy();
}


switch(currentstate)
{
	case HAND_STATE.PATROL:
		HandPatrol();
	break;
	case HAND_STATE.LEAPATTACK:
	
	break;
	case HAND_STATE.SNEAK:
	
	break;
	case HAND_STATE.THUMBATTACK:
	
	break;
}

state = HAND_STATE.PATROL;
/*/Player Aggro
if(abs(xtarget) < 300 && xtarget != 0)
{
	image_xscale = sign(xtarget);
	
	if(wait <= 0)
	{	if(obj_player.hsp == 0) 
		{
			if(abs(xtarget) < 125)
			{
				vsp = -7;
				hsp = walkspd * sign(xtarget);
			}
			else
			{
				hsp = (walkspd/3) * sign(xtarget);
			}
		}
	}
	else
	{
		wait--;
	}
}
else
{
	hsp = 0;
	wait = 120;
}

*/