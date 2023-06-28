scale = manager_students.master_scale;

spr_x = 24*scale;
spr_y = 56*scale;

txt_wx = spr_x + 8*scale;
txt_wy = spr_y + 8*scale;
txt_ww = 96 *scale;
txt = "";
if(room == loadRoom)
	txt = "This save file is empty.";
else if(room == startRoom)
	txt = "There are no saved games.";
else if(room == endRoom)
	txt = "The Winx are now playable characters.";
else if(manager_menu.menu_curr >= menus.customize1 && manager_menu.menu_curr <= menus.customize3)
	txt = "You can not upgrade any further.";
else if(manager_menu.menu_curr >= menus.wings1 && manager_menu.menu_curr <= menus.wings3)
	txt = "Your grades are too low for this transformation.";

spr = spr_alert_UI;

pause = true;
alarm[0] = 30;

depth = -120;