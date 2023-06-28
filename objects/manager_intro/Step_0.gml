if(pause)
	exit;
	
if(manager_cc.cc_on || manager_choose_student.on || manager_choose_element.on)
	exit;

if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{
	txt_count += 1;
	if(txt_count > 6)
	{
		// enter exploration/finish
		alarm[1] = 30;
	}
	else if(txt_count == 5)
	{
		// enter choosing student
		pause = true;
		manager_choose_student.on = true;
		manager_choose_student.room_change = true;
		manager_choose_student.alarm[1] = 30;
	}
	
	pause = true;
	alarm[0] = 30;
}