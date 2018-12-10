if(instance_exists(obj_player))
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = direction;
	move_towards_point(obj_player.x, obj_player.y,spd);


	if(place_meeting(x,y,obj_player))
	{
		instance_create_layer(obj_player.x,obj_player.y,"layer_wall",obj_player_1_return_explosion);
		instance_destroy();
	}
}