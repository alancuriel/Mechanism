
hsp = 0;
vsp = 0;
grv = 0.5;
walkspd = 6;
jump = -16.5;


startingangle = 0;

swingTimer = 20;
buffer =0;
state = PLAYERSTATE.FREE;
lastAttackState = PLAYERSTATE.ATTACK_COMBO;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}