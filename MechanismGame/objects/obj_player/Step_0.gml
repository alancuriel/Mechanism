//Player INput
key_left = keyboard_check(0x41);
key_right = keyboard_check(0x44);
key_up = keyboard_check(0x57);
key_jump = keyboard_check_pressed(vk_space);
left_click = mouse_check_button_pressed(mb_left);
right_click = mouse_check_button_pressed(mb_right);
key_r = keyboard_check_pressed(0x52);

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



if(left_click && !weaponout)
{
	if(key_up)
	{
		with(instance_create_layer(x,y-240,"Instances",obj_sword))
		{
			image_angle = 40;
			starting_angle = image_angle;
			upswing = 1;
		}
		weaponout = true;
	}
	else if( image_xscale >= 0)
	{
		with(instance_create_layer(x+50,y-240,"Instances",obj_sword))
		{
			image_angle = 320;
			starting_angle = image_angle;
			rswing = 1;
		}
		weaponout = true;
	}
	else
	{
		with(instance_create_layer(x-50,y-240,"Instances",obj_sword))
		{
			image_angle = 40;
			starting_angle = image_angle;
			lswing = 1
			
		}
		weaponout = true;
	}
}

if(weaponout && left_click)
{
	with(obj_sword)
	{
		getcurrentswing = 1;
	}
}

if(weaponout && key_r)
{
	with(obj_sword)
	{
		
		playerrecall = 1;
	}
	weaponout = false;
}


if(hsp != 0) image_xscale = sign(hsp);


