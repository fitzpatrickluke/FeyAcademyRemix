if(menu_on == false) exit;

if(instance_exists(manager_choice) && click_on == false)
{
	if(manager_choice.pause == false)
	{
		if(manager_choice.choice)
		{
			if(menu_num == 1 && save_on)
			{
				save_game_new("feyAcademy_master_save_2.ini");
				save_on = false;
				instance_destroy(manager_choice);
		
				obj_menu_save.alarm[1] = 1;
				alarm[0] = 1;
			}
			else if(menu_num == 0 && save_on)
			{
				save_game_new("feyAcademy_master_save.ini");
				save_on = false;
				instance_destroy(manager_choice);
		
				obj_menu_save.alarm[1] = 1;
				alarm[0] = 1;
			}
					
			
			
		}
		
	}
}
else
{
	if (position_meeting(mouse_x, mouse_y, id))
		spr_num = 1;
	else
		spr_num = 0;
}
	
