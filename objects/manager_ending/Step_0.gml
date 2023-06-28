if(pl_on)
	exit;
	
if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{
	ini_open("feyAcademy_master_save.ini");
	if(ini_read_real("manager","NGP",false) == true)
		new_on = true;
	ini_close();
	
	ini_open("feyAcademy_master_save_2.ini");
	if(ini_read_real("manager","NGP",false) == true)
		new_on = true;
	ini_close();
	
	if(new_on)
	{
		show_debug_message("new");
		room_change = true;
		alarm[3] = 60;
	}
	else
	{
		show_debug_message("not new");
		if(end_on)
		{
			instance_create_depth(0,0,0,manager_alert);
			manager_students.new_game_plus = true;
			end_on = false;
			room_change = true;
		}
		else
		{
			room_change = true;
			alarm[3] = 60;
		}
	}
}
	
