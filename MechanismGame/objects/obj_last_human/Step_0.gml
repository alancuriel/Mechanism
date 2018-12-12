vsp = vsp + grv;

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


switch(state)
{
	case LAST_HUMAN_STATE.LAY: LastHumanState_Lay(); break;
	case LAST_HUMAN_STATE.IDLE: LastHumanState_Idle(); break;
	case LAST_HUMAN_STATE.IDLE_1: LastHumanState_Idle1(); break;
	case LAST_HUMAN_STATE.WAKEUP: LastHumanState_WakeUp(); break;
	case LAST_HUMAN_STATE.AGGRO: LastHumanState_Aggro(); break;
	case LAST_HUMAN_STATE.UPSLASH: LastHumanState_UpSlash(); break;
	case LAST_HUMAN_STATE.SLASH: LastHumanState_Slash(); break;
	case LAST_HUMAN_STATE.THRUST: LastHumanState_Thrust(); break;
	case LAST_HUMAN_STATE.THRUST_1: LastHumanState_Thrust(); break;
	case LAST_HUMAN_STATE.CHARGE: LastHumanState_Charge(); break;
	case LAST_HUMAN_STATE.CHARGE_WIND: LastHumanState_ChargeWind(); break;
	case LAST_HUMAN_STATE.DEAD: LastHumanState_Dead(); break;
	case LAST_HUMAN_STATE.TRANS: LastHumanState_Trans(); break;
	case LAST_HUMAN_STATE.IDLE_S2: LastHumanState_IdleS2(); break;
	case LAST_HUMAN_STATE.FRENZY: LastHumanState_Frenzy(); break;
	case LAST_HUMAN_STATE.LEAP: LastHumanState_Leap(); break;
}


if((hp < maxhp/2) && stage != 2)
{
	stage = 2;
	
}
if(hp < 0) instance_destroy();