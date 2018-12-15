/// @description Insert description here
// You can write your code in this editor

//increment = 0;

//if(instance_exists(obj_player)) {
//	if (abs(x-obj_player.x) < 20) {
//		if(increment < 1100) {
//			y -= 1100/1;
//			obj_player.y -= 1100/1;
//			increment +=1;
//		}
	
//	}
//}

// activating elevator
if (instance_exists(obj_player)) {
	if(abs(abs(x-obj_player.x) < 8) && abs(abs(y-obj_player.y) < 200)) {
		if(!is_lift_activate && ! is_player_already_on) {	// if the lift is not activated, activate it
			is_lift_activate = 1;
			
			audio_play_sound(snd_elevator_activate, 5, false);
		}
		is_player_already_on = 1;
		//else {
		//	is_lift_activate = 0;
		//	is_player_already_on = 0;
		//}
	}
	else {
		is_player_already_on = 0;
	}
}

// move the lift if it's activated


if(y < FIRST_FLOOR_Y && up_or_down == 1) {
	is_lift_activate = 0;
	up_or_down = -1;
}
else if(y > BASEMENT_Y && up_or_down == -1) {
	is_lift_activate = 0;
	up_or_down = 1;
}

if (is_lift_activate) {
	vsp = lift_speed*up_or_down;
}
else {
	vsp = 0;
}

// actually move the elevator and the player
y = y + vsp;

//if(abs(abs(x-obj_player.x) < 25) && abs(abs(y-obj_player.y) < 100)) {
	
//}