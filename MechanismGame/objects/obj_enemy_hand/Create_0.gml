/// @description Insert description here
// You can write your code in this editor

h_frontsight_range = 600;
h_backsight_range = 250;

h_rightsight_range = 600;
h_leftsight_range = 250;
v_sight_range = 25;

walking_direction = 1; // also regulates the turning of the sprite, see step code

pause_steps = 0;
leap_is_alarm_set = 0;
thumb_is_alarm_set = 0;

leapspd = 5;

hitByAttack = ds_list_create();

enum HAND_STATE
{
	PATROL,
	SNEAK,
	LEAPATTACK,
	THUMBATTACK
}

hsp = walkspd;
state = HAND_STATE.PATROL;
