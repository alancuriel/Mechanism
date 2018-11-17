//Player INput
key_left = keyboard_check(0x41);
key_right = keyboard_check(0x44);
key_up = keyboard_check(0x57);
key_jump = keyboard_check_pressed(vk_space);
left_click = mouse_check_button_pressed(mb_left);
right_click = mouse_check_button_pressed(mb_right);

//Mlayer Movement
var move = key_right - key_left; 

hsp = move * walkspd;
vsp = vsp + grv;



if(place_meeting(x, y + 1, obj_block) && key_jump)
{
	vsp = -7;
}

//Horizontal Collision
if(place_meeting(x + hsp, y, obj_block))
{
	while(!place_meeting(x+sign(hsp),y,obj_block))
	{
			x = x + sign(hsp);
	}
	
	hsp = 0;
}
x = x + hsp;

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

/*Adventure Sprites
if(!place_meeting(x,y+1,obj_block))
{
	sprite_index = spr_prs_jump;
	image_speed = 1;
	
	if(vsp > 0) 
	{
		image_speed = 0;
		image_index = 3;
	}
}
else
{
	
	if(!attacking)
	{
		image_speed = 1;
		if(hsp == 0)
		{
			sprite_index = spr_prs;
		}
		else
		{
			sprite_index = sprt_prs_run;
		}
		
	}
	else
	{
		if(image_index == 4 && left_click)
		{
			image_speed = 1;
			sprite_index = spr_prs_attack_2;
			image_index = 0;
			attack2 = 1;
		}
	}
}
*/


/*THRUST
if(right_click)
{
	if(key_up)
	{
		with(instance_create_layer(x,y,"Instances",obj_sword))
		{
			direction = 90;
			speed = 9;
		}
	}
	else if( image_xscale >= 0)
	{
		with(instance_create_layer(x,y,"Instances",obj_sword))
		{
			image_angle = 270;
			speed = 9;
		}
	}
	else
	{
		with(instance_create_layer(x,y,"Instances",obj_sword))
		{
			image_angle = 90;
			direction = 180;
			speed = 9;
		}
	}
}
*/

if(left_click)
{
	if(key_up)
	{
		with(instance_create_layer(x,y-240,"Instances",obj_sword))
		{
			direction = -60;
			stepsActive = 10;
			
			
		}
	}
	else if( image_xscale >= 0)
	{
		with(instance_create_layer(x+50,y,"Instances",obj_sword))
		{
			image_angle = 320;
			angleDir = -1;
			stepsActive = 15;
		}
	}
	else
	{
		with(instance_create_layer(x-50,y,"Instances",obj_sword2))
		{
			image_angle = 40;
			angleDir = 1;
			stepsActive = 15;
		}
	}
}

if(hsp != 0) image_xscale = sign(hsp);


