if(place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		obj_health_bar.playerhp -= 10;
	}
	instance_destroy();
}

