
vsp = vsp + grv;

//Horizontal Collision
//always check primary wall boundries, but enemy wall boundaries are only checked in patrol mode
if(place_meeting(x + hsp, y, obj_block))
{
	while(!place_meeting(x+sign(hsp),y,obj_block))
	{
			x = x + sign(hsp);
	}
	
	walking_direction = -walking_direction;
}
x = x + hsp*walking_direction;;

//Vertical Collision

if(place_meeting(x, y + vsp, obj_block))
{
	while(!place_meeting(x,y + sign(vsp),obj_block))
	{
			y = y + sign(vsp);
	}
	vsp = 0;
}


y = y + vsp;

if(place_meeting(x + hsp, y, obj_block_enemy))
{
	
	walking_direction = -walking_direction;
	//image_xscale = - image_xscale;
}

image_xscale = sign(walking_direction)

if(hp <=0)
{
	audio_play_sound(snd_enemy_death, 80, false);
	death_splash = instance_create_depth(x, y,-2000 ,obj_death_splash);
	death_splash.xcale = 1.5;
	death_splash.ycale = 1.5;
	instance_destroy();
}