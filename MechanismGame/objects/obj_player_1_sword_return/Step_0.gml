if(instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y,spd);


	if(place_meeting(x,y,obj_player))
	{
		instance_destroy();
	}
}