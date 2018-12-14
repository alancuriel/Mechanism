


if(sign(image_xscale) == 1)
{
	if(!(image_xscale >= 1))
	{
		image_xscale += 0.005;
		image_yscale += 0.005;
	}
}
else
{
	if(!(image_xscale <= -1))
	{
		image_xscale -= 0.005;
		image_yscale += 0.005
	}
}


if(place_meeting(x,y,obj_swrd))
{
	if(!obj_swrd.followPlayer)
	{
		image_speed = 1;
	}
}

if(animation_end())
{
	instance_destroy();
}