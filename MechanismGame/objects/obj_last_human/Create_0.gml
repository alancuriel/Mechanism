walkspd = 3;
hsp = walkspd;
vsp = 0;
grv = 0.3;

thrustspd = 9;
thrusttmr = 60;

state = LAST_HUMAN_STATE.IDLE;

hp = 1000;

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