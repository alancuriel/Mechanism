/// @description Menu Control


if(menu_control)
{
	if(keyboard_check_pressed(0x57) || keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(0x53) || keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if(menu_committed != -1)
{
	switch(menu_committed)
	{
		case 2: default: room_goto(rm_basement_1); break;
		case 0: game_end(); break;
	}
}