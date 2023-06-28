if(!on)
	exit;
	
if(room_change)
	exit;

mouseX = mouse_x;
mouseY = mouse_y;
		
if(mouse_check_button_pressed(mb_left))
{
	var count = 0;
	if(selected_custom)
		count += 1;
	for(var j = 0; j < 5; j+=1)
	for(var i = 0; i < 6; i+=1)
	if(select_student_grid[j][i] != 0)
		count += 1;
	show_debug_message(count)
		
	// finish the selection
	if(mouseX >= finish_select_x && mouseX < finish_select_x + finish_select_w
	&& mouseY >= finish_select_y && mouseY < finish_select_y + finish_select_h
	&& count == 3)
	{
			if(selected_custom)
			{
				show_debug_message("I PLAY CUSTOM")
				manager_students.player_custom[0] = true;
				manager_students.player_custom[1] = false;
				manager_students.player_custom[2] = false;
				manager_students.master_student_2 = select_students_set[1];
				manager_students.master_student_3 = select_students_set[2];
			}
			else
			{
				show_debug_message("PAIGE IS MY FAV")
				manager_students.player_custom[0] = false;
				manager_students.player_custom[1] = false;
				manager_students.player_custom[2] = false;
				manager_students.master_student_1 = select_students_set[0];
				manager_students.master_student_2 = select_students_set[1];
				manager_students.master_student_3 = select_students_set[2];
			}
			on = false;
			manager_intro.alarm[0] = 15;
	}
	
	// select student custom
	if((mouseX >= select_student_x_1 && 
	mouseX < select_student_x_1 + select_student_w
	&& mouseY >= select_student_y_1 && mouseY < select_student_y_1 + select_student_h))
	{
		if(selected_custom == true)
			selected_custom = false;
		else
		{
			selected_custom = true;
			show_debug_message("YASS 1");
			on = false;
			manager_cc.cc_on = true;
			manager_cc.room_change = true;
			manager_cc.alarm[1] = 30;
			for(var j = 0; j < 5; j+=1)
			for(var i = 0; i < 6; i+=1)
				select_student_grid[j][i] =0;
			for(var c = 0; c < 3; c+=1)
				select_students_set[c] = -1;
		}
				
	}
	
	// select student
	for(var i = 1; i < 7; i+=1)
	{
		if((mouseX >= select_student_x_1+select_student_w*i && 
		mouseX < select_student_x_1 + select_student_w*i + select_student_w
		&& mouseY >= select_student_y_1 && mouseY < select_student_y_1 + select_student_h))
		{
		if(select_student_grid[0,i-1])
		{
			select_student_grid[0,i-1] = false;
			select_students_set[count] = -1;
		}
		else  if(count < 3)
		{
			select_student_grid[0,i-1] = true
			select_students_set[count] = select_student_grid_set[0,i-1];
			if(count = 0)
				select_student_grid[0,i-1] = 2;
		}
		}
	}
	for(var j = 1; j < 4; j+=1)
	{
	for(var i = 0; i < 6; i+=1)
	{
		if((mouseX >= select_student_x_2+select_student_w*i && 
		mouseX < select_student_x_2 + select_student_w*i + select_student_w
		&& mouseY >= select_student_y_1 + select_student_h*j
		&& mouseY < select_student_y_1 + select_student_h*j + select_student_h))
		{
		if(select_student_grid[j,i])
		{
			select_student_grid[j,i] = false;
			select_students_set[count] = -1;
		}
		else if(count < 3)
		{
			select_student_grid[j,i] = true
			select_students_set[count] = select_student_grid_set[j,i];
			if(count = 0)
				select_student_grid[j,i] = 2;
		}
		}
		
	}
	}
	for(var i = 0; i < 6; i+=1)
	{
		if((mouseX >= select_student_x_2+select_student_w*i && 
		mouseX < select_student_x_2 + select_student_w*i + select_student_w
		&& mouseY >= select_student_y_2 && mouseY < select_student_y_2 + select_student_h))
		{
		if(select_student_grid[4,i])
		{
			select_student_grid[4,i] = false;
			select_students_set[count] = -1;
		}
		else  if(count < 3)
		{
			select_student_grid[4,i] = true
			select_students_set[count] = select_student_grid_set[4,i];
			if(count = 0)
				select_student_grid[4,i] = 2;
		}
		}
	}
	
	
}
