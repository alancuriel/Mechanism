if(instance_exists(obj_player))
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = direction;
	move_towards_point(obj_player.x, obj_player.y,spd);


	if(place_meeting(x,y,obj_player))
	{
		instance_destroy();
	}
}