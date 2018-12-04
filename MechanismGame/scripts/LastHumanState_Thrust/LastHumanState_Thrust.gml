

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

var xtarget = obj_player.x - x;

if(thrusttmr >= 0)
{
	//sprite_index = ;
	hsp = 0;
	vsp = 0;
	thrusttmr--;
}

if(thrusttmr < 0)
{
	hsp = sign(xtarget) * thrustspd;
}