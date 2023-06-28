if(pause)
	exit;
if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{	
	instance_destroy(id);
	
	if(room = startRoom)
		manager_start_screen.room_change = false;
	if(room = loadRoom)
		manager_load_system.room_change = false;
	if(room = endRoom)
		manager_ending.room_change = false;
}