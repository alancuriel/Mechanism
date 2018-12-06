draw_set_alpha(1);
draw_rectangle(0,0,1024,768,0);
title = "MECHANISM GAME";

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width; //+200??
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_font = fnt_menu;
menu_itemheight = font_get_size(fnt_menu);
menu_control = true;
menu_committed = -1;

menu[2] = "New Game";
menu[1] = "Setting(s)";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;