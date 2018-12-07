walkspd = 0;
hsp = walkspd;
vsp = 0;
grv = 0.3;

thrustspd = 9;
thrusttmr = 60;

state = LAST_HUMAN_STATE.LAY;

hp = 1000;

awake = false;

wake_up_index = 0;
wake_up_sprites[3] = spr_last_human_wake_up3;
wake_up_sprites[2] = spr_last_human_wake_up2;
wake_up_sprites[1] = spr_last_human_wake_up1;
wake_up_sprites[0] = spr_last_human_wake_up0;
wake_up_sprite_count = array_length_1d(wake_up_sprites);

enum LAST_HUMAN_STATE
{
	LAY,
	WAKEUP,
	IDLE,
	AGGRO,
	SLASH,
	UPSLASH,
	THRUST,
	CHARGE,
	DEAD
}