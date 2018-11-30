//Player Aggro
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