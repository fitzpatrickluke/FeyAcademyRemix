/*
if(instance_exists(manager_choice) && place_meeting(x,y,manager_adventure))
{
	if(manager_choice.choice)
	{
		heal_hp();
		manager_students.explore_start_x = px;
		manager_students.explore_start_y = py;
		room = pr;
		instance_destroy(manager_choice);
	}
	else
		manager_adventure.pause = false;
}
*/
if(place_meeting(x,y,manager_adventure))// && keyboard_check_pressed(vk_space))
{
	heal_hp();
	manager_students.explore_start_x = px;
	manager_students.explore_start_y = py;
	room = pr;
	//instance_create_depth(0,0,0,manager_choice);
	//manager_adventure.pause = true;
}
