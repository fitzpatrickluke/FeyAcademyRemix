scale = manager_students.master_scale;

yes_x = 24*scale;
yes_y = 80*scale;
no_x = 80*scale;
no_y = 80*scale;
choice_w = 56*scale;
choice_h = 16*scale;

spr_x = 24*scale;
spr_y = 48*scale;

txt_wx = spr_x + 8*scale;
txt_wy = spr_y + 8*scale;
txt_ww = 96 *scale;

if(room == menuRoomRemix &&
(obj_menu_title.menu_curr >= menus.customize1 && obj_menu_title.menu_curr <= menus.customize3))
	txt = "Do you want to upgrade to " + get_wings_name(obj_menu_wings_name.wings_curr) + "?";
	
/*
else if(room == menuRoomRemix &&
(manager_menu.menu_curr == menus.save))
	txt = "Do you want to save the current game?";
	*/

spr = spr_choice_UI;

txt_x_1 = spr_x + 6*scale;
txt_x_2 = spr_x + 62*scale;
txt_y = spr_y + 38*scale;

mouseX = 0;
mouseY = 0;

on = true;

choice = -1;

pause = true;
alarm[0] = 30;
depth = -120;