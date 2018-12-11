if (surface_exists(surf))
{
	var cx = round(camera_get_view_x(view_camera[0])- 2);
	var cy = round(camera_get_view_y(view_camera[0]) - 2);
	
	surface_set_target(surf);
	draw_clear_alpha(c_black, 1);
	gpu_set_blendmode(bm_add);
	
	draw_circle_color(obj_player.x - cx, obj_player.y - cy, 500, c_white, c_black, 0);
	
	if(instance_exists(obj_light))
	{
		with(obj_light)
		{
			draw_circle_color(x - cx, y - cy, 128, c_white, c_black, 0);
		}
	}
	
	surface_reset_target();
	
	gpu_set_blendmode_ext(bm_zero,bm_subtract);
	
	draw_surface(surf,cx,cy);
	
	gpu_set_blendmode(bm_normal);
	
}
else
{
	surf = surface_create(camera_get_view_width(view_camera[0]) + 4, camera_get_view_width(view_camera[0]) + 4);
}