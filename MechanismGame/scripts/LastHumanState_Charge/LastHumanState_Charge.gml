

var xtarget = obj_player.x - x;

if(thrusttmr >= 0)
{
	//sprite_index = ;
	hsp = 0;
	vsp = 0;
	thrusttmr--;
}

if(thrusttmr < 0)
{
	hsp = sign(xtarget) * thrustspd;
}