if(menu_on == false) exit;

if(obj_menu_custom_points.txt_points <= 0)
{
	spr_num = 0;
	exit;
}

if (position_meeting(mouse_x, mouse_y, id))
   spr_num = 1;
else
	spr_num = 0;