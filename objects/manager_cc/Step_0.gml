if(room_change)
	exit;

if(!cc_on)
	exit;

mouseX = window_mouse_get_x();
mouseY = window_mouse_get_y();

if(room_change)
	exit;

if(enter_name)
{
	if(keyboard_check_pressed(vk_enter))
	{
		enter_name = false;
	}
	else if(keyboard_check_pressed(vk_backspace))
	{
		var l = string_length(name_txt);
		name_txt = string_delete(name_txt,l,1);
	}
	else if(keyboard_check_pressed(vk_anykey))
	{
		name_txt += string_lettersdigits(keyboard_lastchar);
	}
}

if(enter_name)
	exit;
		
if(mouse_check_button_pressed(mb_left))
{
	
	if(mouseX >= finish_select_x && mouseX < finish_select_x+finish_select_w
	&& mouseY >= finish_select_y && mouseY < finish_select_y+finish_select_h)
	{
		// set the selection when closing the creator
		#region
		manager_students.spr_body_num = spr_body_num;
		manager_students.spr_hair_num = spr_hair_num;
		manager_students.spr_bang_num = spr_bang_num;
		manager_students.spr_hair_col_num = spr_hair_col_num;
		manager_students.spr_eye_num = spr_eye_num;
		manager_students.spr_top_num = spr_top_num;
		manager_students.spr_top_col_num = spr_top_col_num;
		manager_students.spr_bot_num = spr_bot_num;
		manager_students.spr_bot_col_num = spr_bot_col_num;
		manager_students.spr_shoe_num = spr_shoe_num;
		manager_students.spr_shoe_col_num = spr_shoe_col_num;
		manager_students.spr_acc_num = spr_acc_num;
		manager_students.spr_acc_col_num = spr_acc_col_num;
		
		manager_students.master_student_1.student_name = name_txt;
		#endregion
		
		cc_on = false;
		manager_choose_element.on = true;
		manager_choose_element.room_change = true;
		manager_choose_element.alarm[2] = 30;
	}
	//enter name
	if(mouseX >= name_select_x && mouseX < name_select_x + name_select_w
	&& mouseY >= name_select_y && mouseY < name_select_y + name_select_h)
	{
		name_txt = "";
		enter_name = true;
	}
	
	// check mouse selection
	// decrease num
	#region
	// gender
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_0 && mouseY < menu_l_select_y_0 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 0)
		{
			manager_students.player_gender[0] = 1;
			spr = spr_cc_final_left_male;
			port_spr = spr_portrait_cc_male;
			hair_max = 3;
			bang_max = 6;
			hair_col_max = 15;
			top_max = 4;
			bot_max = 4;
			shoe_max = 1;
			acc_max = 3;
			col_max = 15;
			
			spr_hair_num = 0;
			spr_bang_num = 0;
			spr_top_num = 0;
			spr_bot_num = 0;
			spr_shoe_num = 0;
			spr_acc_num = 0;
			
			spr_hair = spr_port_cc_beard;
			spr_hair_2 = spr_port_cc_beard_2;
			spr_body = spr_port_cc_body_m;
			spr_bang = spr_port_cc_hair_m;
			spr_bang_2 = spr_port_cc_hair_m_2;
			spr_top = spr_port_cc_top_m;
			spr_top_2 = spr_port_cc_top_m_2;
			spr_acc = spr_port_cc_acc_m;
			spr_acc_2 = spr_port_cc_acc_m_2;
			male_on = true;
		}
		else if(manager_students.player_gender[0] == 1)
		{
			manager_students.player_gender[0] = 0;
			spr = spr_cc_final_left;
			port_spr = spr_portrait_cc;
			hair_max = 7;
			bang_max = 6;
			hair_col_max = 15;
			top_max = 5;
			bot_max = 5;
			shoe_max = 5;
			acc_max = 5;
			col_max = 15;
			
			spr_hair_num = 0;
			spr_bang_num = 0;
			spr_top_num = 0;
			spr_bot_num = 0;
			spr_shoe_num = 0;
			spr_acc_num = 0;
			
			spr_hair = spr_port_cc_hair;
			spr_hair_2 = spr_port_cc_hair_2;
			spr_body = spr_port_cc_body;
			spr_bang = spr_port_cc_bang;
			spr_bang_2 = spr_port_cc_bang_2;
			spr_top = spr_port_cc_top;
			spr_top_2 = spr_port_cc_top_2;
			spr_acc = spr_port_cc_acc;
			spr_acc_2 = spr_port_cc_acc_2;
			male_on = false;
		}
	}
	// body
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_1 && mouseY < menu_l_select_y_1 + menu_select_h)
	{
		spr_body_num -= 1;
		if(spr_body_num < 0)
			spr_body_num = body_max;
	}
	// hair
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_2 && mouseY < menu_l_select_y_2 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 0)
		{
			spr_hair_num -= 1;
			if(spr_hair_num < 0)
				spr_hair_num = hair_max;
		}
		else
		{
			spr_bang_num -= 1;
			if(spr_bang_num < 0)
				spr_bang_num = bang_max;
		}
	}
	// bang
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_3 && mouseY < menu_l_select_y_3 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 1)
		{
			spr_hair_num -= 1;
			if(spr_hair_num < 0)
				spr_hair_num = hair_max;
		}
		else
		{
			spr_bang_num -= 1;
			if(spr_bang_num < 0)
				spr_bang_num = bang_max;
		}
	}
	// hair col
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_4 && mouseY < menu_l_select_y_4 + menu_select_h)
	{
		spr_hair_col_num -= 1;
		if(spr_hair_col_num < 0)
			spr_hair_col_num = hair_col_max;
	}
	// eye col
	/*
	if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
	&& mouseY >= menu_l_select_y_5 && mouseY < menu_l_select_y_5 + menu_select_h)
	{
		spr_eye_num -= 1;
		if(spr_eye_num < 0)
			spr_eye_num = col_max;
	}
	*/
	#endregion
	// increse num
	#region
	// gender
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_0 && mouseY < menu_l_select_y_0 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 0)
		{
			manager_students.player_gender[0] = 1;
			spr = spr_cc_final_left_male;
			port_spr = spr_portrait_cc_male;
			hair_max = 3;
			bang_max = 6;
			hair_col_max = 15;
			top_max = 4;
			bot_max = 4;
			shoe_max = 1;
			acc_max = 3;
			col_max = 15;
			
			spr_hair_num = 0;
			spr_bang_num = 0;
			spr_top_num = 0;
			spr_bot_num = 0;
			spr_shoe_num = 0;
			spr_acc_num = 0;
			
			spr_hair = spr_port_cc_beard;
			spr_hair_2 = spr_port_cc_beard_2;
			spr_body = spr_port_cc_body_m;
			spr_bang = spr_port_cc_hair_m;
			spr_bang_2 = spr_port_cc_hair_m_2;
			spr_top = spr_port_cc_top_m;
			spr_top_2 = spr_port_cc_top_m_2;
			spr_acc = spr_port_cc_acc_m;
			spr_acc_2 = spr_port_cc_acc_m_2;
			male_on = true;
			
			
		}
		else if(manager_students.player_gender[0] == 1)
		{
			manager_students.player_gender[0] = 0;
			spr = spr_cc_final_left;
			port_spr = spr_portrait_cc;
			hair_max = 7;
			bang_max = 6;
			hair_col_max = 15;
			top_max = 5;
			bot_max = 5;
			shoe_max = 5;
			acc_max = 5;
			col_max = 15;
			
			spr_hair_num = 0;
			spr_bang_num = 0;
			spr_top_num = 0;
			spr_bot_num = 0;
			spr_shoe_num = 0;
			spr_acc_num = 0;
			
			spr_hair = spr_port_cc_hair;
			spr_hair_2 = spr_port_cc_hair_2;
			spr_body = spr_port_cc_body;
			spr_bang = spr_port_cc_bang;
			spr_bang_2 = spr_port_cc_bang_2;
			spr_top = spr_port_cc_top;
			spr_top_2 = spr_port_cc_top_2;
			spr_acc = spr_port_cc_acc;
			spr_acc_2 = spr_port_cc_acc_2;
			male_on = false;
		}
	}
	// body
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_1 && mouseY < menu_l_select_y_1 + menu_select_h)
	{
		spr_body_num += 1;
		if(spr_body_num > body_max)
			spr_body_num = 0;
	}
	// hair
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_2 && mouseY < menu_l_select_y_2 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 1)
		{
			spr_bang_num +=1;
			if(spr_bang_num > bang_max)
				spr_bang_num = 0;
		}
		else
		{
			spr_hair_num +=1;
			if(spr_hair_num > hair_max)
				spr_hair_num = 0;
		}
	}
	// bang
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_3 && mouseY < menu_l_select_y_3 + menu_select_h)
	{
		if(manager_students.player_gender[0] == 0)
		{
			spr_bang_num +=1;
			if(spr_bang_num > bang_max)
				spr_bang_num = 0;
		}
		else
		{
			spr_hair_num +=1;
			if(spr_hair_num > hair_max)
				spr_hair_num = 0;
		}
	}
	// hair col
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_4 && mouseY < menu_l_select_y_4 + menu_select_h)
	{
		spr_hair_col_num +=1;
		if(spr_hair_col_num > hair_col_max)
			spr_hair_col_num = 0;
	}
	// eye col
	/*
	if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
	&& mouseY >= menu_l_select_y_5 && mouseY < menu_l_select_y_5 + menu_select_h)
	{
		spr_eye_num += 1;
		if(spr_eye_num > col_max)	
			spr_eye_num = 0;
	}
	*/
	#endregion
	// decrease num
	#region
	// top
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_1 && mouseY < menu_r_select_y_1 + menu_select_h)
	{
		spr_top_num -= 1;
		if(spr_top_num < 0)
			spr_top_num = top_max;
	}
	// top col
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_2 && mouseY < menu_r_select_y_2 + menu_select_h)
	{
		spr_top_col_num -= 1;
		if(spr_top_col_num < 0)
			spr_top_col_num = col_max;
	}
	// bottom
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_3 && mouseY < menu_r_select_y_3 + menu_select_h)
	{
		spr_bot_num -= 1;
		if(spr_bot_num < 0)
			spr_bot_num = bot_max;
	}
	// bottom col
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_4 && mouseY < menu_r_select_y_4 + menu_select_h)
	{
		spr_bot_col_num -= 1;
		if(spr_bot_col_num < 0)
			spr_bot_col_num = col_max;
	}
	// shoe
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_5 && mouseY < menu_r_select_y_5 + menu_select_h)
	{
		spr_shoe_num -= 1;
		if(spr_shoe_num < 0)
			spr_shoe_num = shoe_max;
	}
	// shoe col
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_6 && mouseY < menu_r_select_y_6 + menu_select_h)
	{
		spr_shoe_col_num -= 1;
		if(spr_shoe_col_num < 0)
			spr_shoe_col_num = col_max;
	}
	// acc
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_7 && mouseY < menu_r_select_y_7 + menu_select_h)
	{
		spr_acc_num -= 1;
		if(spr_acc_num < 0)
			spr_acc_num = acc_max;
	}
	// acc num
	if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
	&& mouseY >= menu_r_select_y_8 && mouseY < menu_r_select_y_8 + menu_select_h)
	{
		spr_acc_col_num -= 1;
		if(spr_acc_col_num < 0)
			spr_acc_col_num = col_max;
	}
	#endregion
	// increse num
	#region
	// top
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_1 && mouseY < menu_r_select_y_1 + menu_select_h)
	{
		spr_top_num += 1;
		if(spr_top_num > top_max)
			spr_top_num = 0;
	}
	// top col
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_2 && mouseY < menu_r_select_y_2 + menu_select_h)
	{
		spr_top_col_num += 1;
		if(spr_top_col_num > col_max)
			spr_top_col_num = 0;
	}
	// bottom
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_3 && mouseY < menu_r_select_y_3 + menu_select_h)
	{
		spr_bot_num += 1;
		if(spr_bot_num > bot_max)
			spr_bot_num = 0;
	}
	// bottom col
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_4 && mouseY < menu_r_select_y_4 + menu_select_h)
	{
		spr_bot_col_num += 1;
		if(spr_bot_col_num > col_max)
			spr_bot_col_num = 0;
	}
	// shoe
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_5 && mouseY < menu_r_select_y_5 + menu_select_h)
	{
		spr_shoe_num += 1;
		if(spr_shoe_num > shoe_max)
			spr_shoe_num = 0;
	}
	// shoe col
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_6 && mouseY < menu_r_select_y_6 + menu_select_h)
	{
		spr_shoe_col_num += 1;
		if(spr_shoe_col_num > col_max)
			spr_shoe_col_num = 0;
	}
	// acc
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_7 && mouseY < menu_r_select_y_7 + menu_select_h)
	{
		spr_acc_num += 1;
		if(spr_acc_num > acc_max)
			spr_acc_num = 0;
	}
	// acc num
	if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
	&& mouseY >= menu_r_select_y_8 && mouseY < menu_r_select_y_8 + menu_select_h)
	{
		spr_acc_col_num += 1;
		if(spr_acc_col_num >col_max)
			spr_acc_col_num = 0;
	}
	#endregion
	
}


