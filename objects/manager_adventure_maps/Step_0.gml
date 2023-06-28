if(map_off || room_change)
	exit;
	
mapx = manager_adventure.mapx;
mapy = manager_adventure.mapy;

mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();

if(mouse_check_button(mb_left))
{
	if(mouseX >= mon_on_x && mouseX < mon_on_x + mon_on_w
	&& mouseY >= mon_on_y && mouseY < mon_on_y + mon_on_h)
	{
		if(manager_students.mon_on)
		{
			manager_students.mon_on = false;
			manager_adventure.encounter_on = false;
			manager_adventure.encounter_num = 1;
			spr_mon_num = 1;
		}
		else
		{
			manager_students.mon_on = true;
			manager_adventure.encounter_on = true;
			manager_adventure.encounter_num = 1;
			spr_mon_num = 1;
		}
		room_change = true;
		alarm[2] = room_change_time;
	}

}
