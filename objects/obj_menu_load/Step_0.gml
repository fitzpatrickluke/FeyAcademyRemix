if(menu_on == false) exit;


if(instance_exists(manager_choice) && click_on == false)
{
	if(manager_choice.pause == false)
	{
			
		if(manager_choice.choice)
		{
			if(menu_num == 1 && save_on)
			{
				load_game_new("feyAcademy_master_save_2.ini");
				instance_destroy(manager_choice);
			}
			else if(menu_num == 0 && save_on)
			{
				load_game_new("feyAcademy_master_save.ini");
				instance_destroy(manager_choice);
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
	
