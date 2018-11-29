part_system = part_system_create();

part_emitter = part_emitter_create(part_system);

part_type = part_type_create();

part_emitter_region(part_system, part_emitter, 50, 100, 50, 100, ps_shape_line, ps_distr_linear);

part_emitter_stream(part_system, part_emitter, part_type, 4);