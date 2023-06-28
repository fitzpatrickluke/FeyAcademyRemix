if(menu_on == false) exit;
if(obj_menu_title.healing_curr) exit;

if (position_meeting(mouse_x, mouse_y, id))
   spr_num = 1;
else
	spr_num = 0;