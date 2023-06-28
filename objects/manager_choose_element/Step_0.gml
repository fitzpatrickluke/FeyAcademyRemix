if(!on)
	exit;
	
if(room_change)
	exit;

mouseX = mouse_x;
mouseY = mouse_y;
		
if(mouse_check_button_pressed(mb_left))
{
	
	// finish/set
	if(mouseX >= finish_select_x && mouseX < finish_select_x + finish_select_w
	&& mouseY >= finish_select_y && mouseY < finish_select_y + finish_select_h)
	{
		if(chosen_element != -1)
		{
			// set player element information
			#region
			switch(chosen_element)
			{
				case element.water:
				set_student_element(element.water,"Water","Water",spells_water,
				spr_student_attack_water,spr_student_heal_water);
				break;
				case element.earth:
				set_student_element(element.earth,"Earth","Earth",spells_earth,
				spr_student_attack_earth,spr_student_heal_earth);
				break;
				case element.fire:
				set_student_element(element.fire,"Fire","Fire",spells_fire,
				spr_student_attack_fire,spr_student_heal_fire);
				break;
				case element.air:
				set_student_element(element.air,"Air","Air",spells_air,
				spr_student_attack_air,spr_student_heal_air);
				break;
				case element.nature:
				set_student_element(element.nature,"Nature","Nature",spells_nature,
				spr_student_attack_nature,spr_student_heal_nature);
				break;
				case element.magic:
				set_student_element(element.magic,"Magic","Magic",spells_magic,
				spr_student_attack_magic,spr_student_heal_magic);
				break;
				case element.light:
				set_student_element(element.light,"Light","Light",spells_light,
				spr_student_attack_light,spr_student_heal_light);
				break;
				case element.dark:
				set_student_element(element.dark,"Dark","Dark",spells_dark,
				spr_student_attack_dark,spr_student_heal_dark);
				break;
			}
			#endregion
			on = false;
			manager_choose_student.on = true;
			manager_choose_student.room_change = true;
			manager_choose_student.alarm[1] = 30;
		}
	}
	
	// choosing element
	if(mouseX >= element_select_x_1 && mouseX < element_select_x_1+element_select_w
	&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
	{
		chosen_element = element.water;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_2 && mouseX < element_select_x_2+element_select_w
	&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
	{
		chosen_element = element.earth;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_3 && mouseX < element_select_x_3+element_select_w
	&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
	{
		chosen_element = element.fire;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_4 && mouseX < element_select_x_4+element_select_w
	&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
	{
		chosen_element = element.air;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_1 && mouseX < element_select_x_1+element_select_w
	&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
	{
		chosen_element = element.nature;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_2 && mouseX < element_select_x_2+element_select_w
	&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
	{
		chosen_element = element.magic;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_3 && mouseX < element_select_x_3+element_select_w
	&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
	{
		chosen_element = element.light;
		room_change = true;
		alarm[2] = room_change_time;
	}
	if(mouseX >= element_select_x_4 && mouseX < element_select_x_4+element_select_w
	&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
	{
		chosen_element = element.dark;
		room_change = true;
		alarm[2] = room_change_time;
	}
}


