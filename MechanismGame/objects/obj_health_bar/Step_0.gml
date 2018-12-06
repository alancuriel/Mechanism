/// @description Insert description here
// You can write your code in this editor



if(playerhp >= obj_player.maxhp) image_index = 0;
if(playerhp <= (obj_player.maxhp/7) * 6) image_index = 1;
if(playerhp <= (obj_player.maxhp/7) * 5) image_index = 2;
if(playerhp <= (obj_player.maxhp/7) * 4) image_index = 3;
if(playerhp <= (obj_player.maxhp/7) * 3) image_index = 4;
if(playerhp <= (obj_player.maxhp/7) * 2) image_index = 5;
if(playerhp <= (obj_player.maxhp/7) * 1) image_index = 6;
