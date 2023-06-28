if(pause)
	exit;
if(!on)
	exit;
	
mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();

if(mouse_check_button(mb_left))
{	
	if(mouseX >= yes_x && mouseX < yes_x + choice_w
	&& mouseY >= yes_y && mouseY < yes_y + choice_h)
	{
		choice = true;
		
		if(room == menuRoomRemix &&
		(obj_menu_title.menu_curr >= menus.customize1 && obj_menu_title.menu_curr <= menus.customize3))
			audio_play_sound(soundEffect_upgrade,1,false);
	}

	if(mouseX >= no_x && mouseX < no_x + choice_w
	&& mouseY >= no_y && mouseY < no_y + choice_h)
	{
		choice = false;
		
		instance_destroy(id);
	}
}