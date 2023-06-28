if(pause)
	exit;

if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{
	count += 1;
	if(count < txt_length)
	{
		txt_curr = txt[count];
		pause = true;
		alarm[0] = 10;
	}
	else
	{
		pause = true;
		alarm[1] = 10;
	}
}
