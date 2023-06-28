if(pause)
	exit;
if(!on)
	exit;
	
mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();

if(mouse_check_button_pressed(mb_left))
{	
	if(mouseX >= yes_x && mouseX < yes_x + choice_w
	&& mouseY >= yes_y && mouseY < yes_y + choice_h)
	{
		show_debug_message("YEAH");
		choice = true;
	}

	if(mouseX >= no_x && mouseX < no_x + choice_w
	&& mouseY >= no_y && mouseY < no_y + choice_h)
	{
		show_debug_message("NAHH");
		choice = false;
		
		if(instance_exists(obj_menu_load))
		{
			obj_menu_load.alarm[1] = 1;
		}
		if(instance_exists(obj_menu_save))
		{
			obj_menu_save.alarm[1] = 1;
		}
		
		instance_destroy(id);
	}
}