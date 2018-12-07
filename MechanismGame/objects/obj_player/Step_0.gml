//Player INput
key_left = keyboard_check(0x41);
key_right = keyboard_check(0x44);
key_up = keyboard_check(0x57);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
left_click = mouse_check_button_pressed(mb_left);
right_click = mouse_check_button_pressed(mb_right);
key_r = keyboard_check_pressed(0x52);

//Mlayer Movement
var move = key_right - key_left; 

hsp = move * walkspd;
vsp = vsp + grv;



switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_AttackSlash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}





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




/*
if(left_click && !weaponout)
{
	
	if(key_up)
	{
		with(instance_create_layer(x,y,"SwordLayer",obj_sword))
		{
			image_angle = 40;
			starting_angle = image_angle;
			upswing = 1;
		}
		weaponout = true;
	}
	else if( image_xscale >= 0)
	{
		with(instance_create_layer(x,y,"SwordLayer",obj_sword))
		{
			image_angle = 320;
			starting_angle = image_angle;
			rswing = 1;
		}
		weaponout = true;
	}
	else
	{
		with(instance_create_layer(x,y,"SwordLayer",obj_sword))
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
		instance_destroy();
		
	}
	weaponout = false;
}
*/


if(hsp != 0) image_xscale = sign(hsp);


if(obj_health_bar.playerhp < 0)
{
	obj_health_bar.playerhp = obj_health_bar.playermaxhp;
	room_restart();
}