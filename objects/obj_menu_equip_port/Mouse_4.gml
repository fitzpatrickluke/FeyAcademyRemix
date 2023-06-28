if(menu_on == false) exit;

if(mouse_x >= select_x && mouse_x < select_x+select_w
&& mouse_y >= select_y_1 && mouse_y < select_y_1+select_h)
{
	obj_menu_equip_port.select_on_1 = false;
	obj_menu_equip_port.select_on_2 = false;
	obj_menu_equip.choose_on = false;
	obj_menu_equip_use.menu_on = false;
	select_on_1 = true;
	
	switch(student_curr)
	{
	case 1:
	obj_menu_title.equip_curr = 1;
	if(manager_students.student_1_equip_1 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	case 2:
	obj_menu_title.equip_curr = 2;
	if(manager_students.student_2_equip_1 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	case 3:
	obj_menu_title.equip_curr = 3;
	if(manager_students.student_3_equip_1 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	}
}
else if(mouse_x >= select_x && mouse_x < select_x+select_w
&& mouse_y >= select_y_2 && mouse_y < select_y_2+select_h)
{
	obj_menu_equip_port.select_on_1 = false;
	obj_menu_equip_port.select_on_2 = false;
	obj_menu_equip.choose_on = false;
	obj_menu_equip_use.menu_on = false;
	select_on_2 = true;
	
	switch(student_curr)
	{
	case 1:
	obj_menu_title.equip_curr = 1;
	if(manager_students.student_1_equip_2 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	case 2:
	obj_menu_title.equip_curr = 2;
	if(manager_students.student_2_equip_2 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	case 3:
	obj_menu_title.equip_curr = 3;
	if(manager_students.student_3_equip_2 == 0)
	{
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
		obj_menu_equip_use.remove_on = false;
		obj_menu_equip.choose_on = true;
	}
	else
	{
		obj_menu_equip_use.menu_on = true;
		obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt_2;
		obj_menu_equip_use.remove_on = true;
		obj_menu_equip.choose_on = false;
	}
	break;
	}
}