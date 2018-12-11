if(instance_exists(obj_swrd) && instance_exists(obj_player_1_sword_return))
{
	
			part_emitter_region(other.part_system, other.part_emitter, obj_player_1_sword_return.x ,
			obj_player_1_sword_return.x  + 50,
			obj_player_1_sword_return.y,
			obj_player_1_sword_return.y + 50, ps_shape_rectangle, ps_distr_linear);
			part_emitter_burst(other.part_system,other.part_emitter,other.part_type,4);
		
	
}