/// @description Insert description here
// You can write your code in this editor
if(activate)
{
	y += dropspd;
}

if(place_meeting(x,y,obj_player))
{
	obj_health_bar.playerhp -= 50;
	instance_destroy();
	
}


if(place_meeting(x,y,obj_block))
{
	instance_destroy();
}

