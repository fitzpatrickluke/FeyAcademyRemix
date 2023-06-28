if(room_change)
	exit;

mouseX = mouse_x;
mouseY = mouse_y;

if(mouse_check_button_pressed(mb_left))
{
	// start
	if(mouseX >= select_x && mouseX < select_x+select_w
	&& mouseY >= select_y_1 && mouseY < select_y_1+select_h)
	{
		room = introRoom;			
	}
	
	// load
	if(mouseX >= select_x && mouseX < select_x+select_w
	&& mouseY >= select_y_2 && mouseY < select_y_2+select_h)
	{
		ini_open("feyAcademy_master_save.ini");
		if(ini_read_real("manager","save",false))
			new_save = true;
		ini_close();
		ini_open("feyAcademy_master_save_2.ini");
		if(ini_read_real("manager","save",false))
			new_save = true;
		ini_close();
		
		if(new_save)
		{
			room = loadRoom;
		}
		else
		{
			instance_create_depth(0,0,0,manager_alert);
			room_change = true;
		}
		
	}
	
	// exit
	if(mouseX >= select_x && mouseX < select_x+select_w
	&& mouseY >= select_y_3 && mouseY < select_y_3+select_h)
	{
		game_end();
	}
}