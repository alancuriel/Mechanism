if(hitCount >= 9)
{
	hitCount = 0;
	playerhp += (playermaxhp * 0.3);
	
}

playerhp = min(playerhp, playermaxhp);



if(playerhp >= playermaxhp) image_index = 0;
if(playerhp <= (playermaxhp/7) * 6) image_index = 1;
if(playerhp <= (playermaxhp/7) * 5) image_index = 2;
if(playerhp <= (playermaxhp/7) * 4) image_index = 3;
if(playerhp <= (playermaxhp/7) * 3) image_index = 4;
if(playerhp <= (playermaxhp/7) * 2) image_index = 5;
if(playerhp <= (playermaxhp/7) * 1) image_index = 6;


if(playerhp <= 0)
{
	playerhp = playermaxhp;
	room_goto(rm_death);
}