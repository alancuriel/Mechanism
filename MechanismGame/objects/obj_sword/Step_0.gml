if(swing)
{
	if(rswing)
	{
		if(image_angle >= 200) image_angle -= swingspd; 
		else
		{
			rswing = 0;
			lastswing = 1;
			swing = false;
		}
	}
	
	if(ruswing)
	{
		if(image_angle != starting_angle) image_angle += swingspd; 
		else
		{
			ruswing = 0;
			lastswing = 2;
			swing = false;
		}
	}

	if(lswing)
	{
		if(image_angle <= 160) image_angle += swingspd; 
		else
		{
			lswing = 0;
			lastswing = 3;
			swing = false;
		}
	}
	
	if(luswing)
	{
		if(image_angle != starting_angle) image_angle -= swingspd; 
		else
		{
			luswing = 0;
			lastswing = 4;
			swing = false;
		}
	}

	if(upswing)
	{
		if(image_angle != -40) image_angle -= swingspd; 
		else
		{
			upswing = 0;	
			lastswing = 5;
			swing = false;
		}
	}
	
	if(upuswing)
	{
		if(image_angle != starting_angle) image_angle += swingspd; 
		else
		{
			upuswing = 0;	
			lastswing = 6;
			swing = false;
		}
	}
	
	
}




if(getcurrentswing)
{
	if(lastswing == 1) {ruswing = 1; swing = true;}
	if(lastswing == 2) {rswing = 1; swing = true;}
	if(lastswing == 3) {luswing = 1; swing = true;}
	if(lastswing == 4) {lswing = 1; swing = true;}
	if(lastswing == 5) {upuswing = 1; swing = true;}
	if(lastswing == 6) {upswing = 1; swing = true;}
	getcurrentswing = 0;
}


if(playerrecall)
{	
	//direction = point_direction(x,y,obj_player.x,obj_player.y);
	//image_angle = direction - 90;
	
	//speed = 20;
	
	if(place_meeting(x,y,obj_player))
	{
		instance_destroy();
	}
	
}