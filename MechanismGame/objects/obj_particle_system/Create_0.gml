part_system = part_system_create();

part_emitter = part_emitter_create(part_system);

part_type = part_type_create();
part_type_shape(part_type, pt_shape_sphere);



part_type_alpha3(part_type,0,1,0);
part_type_color_rgb(part_type,0,255,255,255,255,255);

part_type_life(part_type,game_get_speed(gamespeed_fps)/4, game_get_speed(gamespeed_fps));
part_type_scale(part_type,0.3,0.3);