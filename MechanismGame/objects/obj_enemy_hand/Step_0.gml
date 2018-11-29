xtarget = follow.x - x;
ytarget = follow.y - y;


vsp = vsp + grv;

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


//Player Aggro
if(abs(xtarget) < 300)
{
	image_xscale = sign(xtarget);
	
	if(wait <= 0)
	{	
		hsp = walkspd * sign(xtarget);
	}
	else
	{
		wait--;
	}
}
else
{
	wait = 60;
}