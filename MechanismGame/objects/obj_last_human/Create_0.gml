walkspd = 0;
hsp = walkspd;
vsp = 0;
grv = 0.3;

thrustspd = 9;
thrusttmr = 60;

stage = 1;
state = LAST_HUMAN_STATE.LAY;

hp = 10000;
maxhp = hp;

awake = false;
hitByAttack = ds_list_create();

wake_up_index = 0;
wake_up_sprites[3] = spr_last_human_wake_up3;
wake_up_sprites[2] = spr_last_human_wake_up2;
wake_up_sprites[1] = spr_last_human_wake_up1;
wake_up_sprites[0] = spr_last_human_wake_up0;
wake_up_sprite_count = array_length_1d(wake_up_sprites);

trans_index = 0;
trans_sprites[1] = spr_last_human_phase_transition_2;
trans_sprites[0] = spr_last_human_phase_transition_2;
trans_sprites_count = array_length_1d(trans_sprites);

enum LAST_HUMAN_STATE
{
	LAY,
	WAKEUP,
	IDLE,
	IDLE_1,
	AGGRO,
	SLASH,
	UPSLASH,
	THRUST,
	THRUST_1,
	CHARGE_WIND,
	CHARGE,
	TRANS,
	IDLE_S2,
	FRENZY,
	LEAP,
	DEAD
}