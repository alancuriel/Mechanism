
hsp = 0;
vsp = 0;
grv = 0.5;
walkspd = 4;
jump = -14;


startingangle = 0;

weaponout = false;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}