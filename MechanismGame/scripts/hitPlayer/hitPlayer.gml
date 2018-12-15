
audio_play_sound(snd_player_being_hit, 100, false);

obj_health_bar.playerhp -= obj_health_bar.playermaxhp/7;

obj_player.flash = 5;

instance_create_depth(obj_player.x, obj_player.y, -2200, obj_player_being_hit);

//instance_deactivate_layer(room.layer_player);
////instance_deactivate_object();
//obj_timer.alarm[0] = 60;