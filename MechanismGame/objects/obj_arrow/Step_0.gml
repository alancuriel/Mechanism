if(place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		hp -= 10;
	}
	instance_destroy();
}

