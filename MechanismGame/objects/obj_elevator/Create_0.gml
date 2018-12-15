/// @description Insert description here
// You can write your code in this editor

lift_speed = -2;
is_lift_activate = 0;
is_player_already_on = 0;

y_initial = 3200;
y = y_initial;

BASEMENT_Y = y_initial;
FIRST_FLOOR_Y = y_initial -1100;

up_or_down = 1; // if next = 1, go to the first floor, and set it to -1

LIFTING_AUDIO_RATE = 40;
lifting_audio = 0;