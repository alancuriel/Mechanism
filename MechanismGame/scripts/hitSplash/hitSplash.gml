if(object_index == obj_last_human || object_index == obj_enemy_hand || object_index == obj_money_piggy ||
		object_index == obj_money_rectangle || object_index == obj_money_triangle) // somehow the parent obj_enemy does not work here
{
	instance_create_depth(x,y,-1500,obj_hit_splash);
}