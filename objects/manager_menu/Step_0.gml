// open/close menu
if(keyboard_check_pressed(ord("M")))
{
	if(instance_exists(manager_castle))
	{
		manager_students.explore_start_x = manager_castle.x;
		manager_students.explore_start_y = manager_castle.y;
	}
	else if(instance_exists(manager_adventure))
	{
		manager_students.explore_start_x = manager_adventure.x;
		manager_students.explore_start_y = manager_adventure.y;
		manager_students.explore_enmy_count = manager_adventure.encounter_num;
	}
	manager_students.prev_room_adv = room;
	room = menuRoomRemix;
}
