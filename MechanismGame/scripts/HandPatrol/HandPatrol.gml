///@param id refrence id for object
with(argument[0])
{
	var _x = xstart - x;
	
	if(abs(_x) < 500)
	{
		hsp = walkspd;
		if(abs(_x) > 400)
		{
			hsp = -hsp;
		}
		
	}
	else
	{
		hsp = walkspd * sign(_x);
	}
}	