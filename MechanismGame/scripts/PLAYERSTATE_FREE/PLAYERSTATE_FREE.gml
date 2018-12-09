with(obj_swrd) visible = 0;
if(place_meeting(x, y + 1, obj_block) && key_jump)
{
	vsp = jump;
	with(obj_player_cape_head) 
	{
		sprite_index = spr_player_1_cape_head_jump;
		image_index = 1;
	}
	sprite_index = spr_player_1_body_jump;
	image_index = 1;
	image_speed = 1;
}

//variable jumping
if((vsp < 0) && (!key_jump_held))
{
	vsp = max(vsp, 0);
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


if(!place_meeting(x,y+1,obj_block))
{
	
	if(floor(vsp) == 0)
	{
		image_index = 4;
		image_speed = 1;
	}	
}
else
{
		image_speed = 1;
		if(hsp == 0)
		{
			
			sprite_index = spr_player_1_body_idle;
			with(obj_player_cape_head) sprite_index = spr_player_1_cape_head_idle;
		}
		else
		{
			sprite_index = spr_player_1_body_walk;
			with(obj_player_cape_head) sprite_index = spr_player_1_cape_head_walk;
		}
}

if(key_r){with(obj_swrd) followPlayer = true;}

if(left_click)
{
	if(buffer <= 3) buffer++;
}

if((buffer > 0) && (swingTimer < 0))
{
	swingTimer = 20;
	if(lastAttackState == PLAYERSTATE.ATTACK_COMBO)
	{
		audio_play_sound(snd_player_1_attack_down,1,false);
		state = PLAYERSTATE.ATTACK_SLASH;
	}
	else
	{
		audio_play_sound(snd_player_1_attack_up, 1, false);
		state = PLAYERSTATE.ATTACK_COMBO
	}
	buffer--;
}

if(swingTimer >= 0) swingTimer--;