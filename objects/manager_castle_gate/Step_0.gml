if(!gate_on)
{
	if(place_meeting(x,y,manager_castle))
	{
		gate_on = true;
		with(manager_castle)
		{
			animation_speed = 15;
			movement_on = false;
			movement_speed_x = 0;
			movement_speed_y = 0;
			student_spr_num = 1;
			pause = true;
		}
	}
}

if(!gate_on)
	exit;
	
if(keyboard_check_pressed(ord("B")))
{
	gate_on = false;
	manager_castle.pause = false;
}
	
if(instance_exists(manager_choice))
{
	if(manager_choice.choice)
	{
		manager_students.stratum_curr = curr_stratum;
		manager_students.explore_start_x = px;
		manager_students.explore_start_y = py;
		room = chosen_stratum;
		instance_destroy(manager_choice);
	}
}
else
{
	mouseX = window_mouse_get_x();
	mouseY = window_mouse_get_y();
}

if(mouse_check_button(mb_left))
{
	// Flower Feilds
	if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_1 && mouseY < stratum_y_1 + stratum_h)
	{
		if(manager_students.curr_phase == phase.phase_start)
			manager_students.curr_phase = phase.phase_ff;
		chosen_stratum = adventure_flowerFieldsf1;
		curr_stratum = 0;
		px = 296;
		py = 624;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Willow Woods
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_2 && mouseY < stratum_y_2 + stratum_h)
	{
		chosen_stratum = adventure_willowWoodsf1;
		curr_stratum = 1;
		px = 488;
		py = 1008;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Autumn Falls
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_3 && mouseY < stratum_y_3 + stratum_h)
	{
		chosen_stratum = adventure_autumnFallsf1;
		curr_stratum = 2;
		px = 488;
		py = 1008;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Snowflake Point
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_4 && mouseY < stratum_y_4 + stratum_h)
	{
		chosen_stratum = adventure_snowflakePointf1;
		curr_stratum = 3;
		px = 488;
		py = 1008;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Sakura Steps
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_5 && mouseY < stratum_y_5 + stratum_h)
	{
		chosen_stratum = adventure_sakuraStepsf1;
		curr_stratum = 4;
		px = 488;
		py = 1008;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Fey Temple
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_6 && mouseY < stratum_y_6 + stratum_h)
	{
		chosen_stratum = adventure_feyTemplef1;
		curr_stratum = 5;
		px = 488;
		py = 1008;
		instance_create_depth(0,0,0,manager_choice);
	}
	// Ancient Abyss
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_7 && mouseY < stratum_y_7 + stratum_h)
	{
		chosen_stratum = adventure_ancientAbyssf1;
		curr_stratum = 6;
		px = 808;
		py = 1584;
		instance_create_depth(0,0,0,manager_choice);
	}	
	// End of the Rainbow
	else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
	&& mouseY >= stratum_y_8 && mouseY < stratum_y_8 + stratum_h)
	{
		chosen_stratum = adventure_endRainbowf1;
		curr_stratum = 7;
		px = 808;
		py = 1584;
		instance_create_depth(0,0,0,manager_choice);
	}
}