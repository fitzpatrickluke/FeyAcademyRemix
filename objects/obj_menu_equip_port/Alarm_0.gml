
if(select_on_1)
{
	// get rid of add/remove button
	obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
	obj_menu_equip_use.remove_on = false;
	obj_menu_equip_use.menu_on = false;
	
	switch(student_curr)
	{
	case 1:
		if(manager_students.student_1_equip_1 == 0)
		{
			// add item
			manager_students.student_1_equip_1 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_1 = manager_items.equip_list[# manager_students.student_1_equip_1, 0];
			select_on_1 = false;
			set_student_equip_stat(1, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_1_equip_1] += 1;
			set_student_equip_stat(1, manager_students.student_1_equip_1, true);
			manager_students.student_1_equip_1 = 0;
			txt_equip_1 = "--";
			select_on_1 = false;
		}
	break;
	case 2:
		if(manager_students.student_2_equip_1 == 0)
		{
			// add item
			manager_students.student_2_equip_1 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_1 = manager_items.equip_list[# manager_students.student_2_equip_1, 0];
			select_on_1 = false;
			set_student_equip_stat(2, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_2_equip_1] += 1;
			set_student_equip_stat(2, manager_students.student_2_equip_1, true);
			manager_students.student_2_equip_1 = 0;
			txt_equip_1 = "--";
			select_on_1 = false;
		}
	break;
	case 3:
		if(manager_students.student_3_equip_1 == 0)
		{
			// add item
			manager_students.student_3_equip_1 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_1 = manager_items.equip_list[# manager_students.student_3_equip_1, 0];
			select_on_1 = false;
			set_student_equip_stat(3, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_3_equip_1] += 1;
			set_student_equip_stat(3, manager_students.student_3_equip_1, true);
			manager_students.student_3_equip_1 = 0;
			txt_equip_1 = "--";
			select_on_1 = false;
		}
	break;
	}
	
	obj_menu_equip_use.item_num = 0;
}
else if(select_on_2)
{
	// get rid of add/remove button
	obj_menu_equip_use.txt_curr = obj_menu_equip_use.button_txt;
	obj_menu_equip_use.remove_on = false;
	obj_menu_equip_use.menu_on = false;
	
	switch(student_curr)
	{
	case 1:
		if(manager_students.student_1_equip_2 == 0)
		{
			// add item
			manager_students.student_1_equip_2 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_2 = manager_items.equip_list[# manager_students.student_1_equip_2, 0];
			select_on_2 = false;
			set_student_equip_stat(1, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_1_equip_2] += 1;
			set_student_equip_stat(1, manager_students.student_1_equip_1, true);
			manager_students.student_1_equip_2 = 0;
			txt_equip_2 = "--";
			select_on_2 = false;
		}
	break;
	case 2:
		if(manager_students.student_2_equip_2 == 0)
		{
			// add item
			manager_students.student_2_equip_2 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_2 = manager_items.equip_list[# manager_students.student_2_equip_2, 0];
			select_on_2 = false;
			set_student_equip_stat(2, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_1_equip_1] += 1;
			set_student_equip_stat(2, manager_students.student_2_equip_2, true);
			manager_students.student_2_equip_2 = 0;
			txt_equip_2 = "--";
			select_on_2 = false;
		}
	break;
	case 3:
		if(manager_students.student_3_equip_2 == 0)
		{
			// add item
			manager_students.student_3_equip_2 = obj_menu_equip_use.item_num;
			manager_students.equip_items[| obj_menu_equip_use.item_num] -= 1;
			txt_equip_2 = manager_items.equip_list[# manager_students.student_3_equip_2, 0];
			select_on_2 = false;
			set_student_equip_stat(3, obj_menu_equip_use.item_num, false)
		}
		else
		{	
			// remove item
			manager_students.equip_items[| manager_students.student_3_equip_2] += 1;
			set_student_equip_stat(3, manager_students.student_3_equip_2, true);
			manager_students.student_3_equip_2 = 0;
			txt_equip_2 = "--";
			select_on_2 = false;
		}
	break;
	}
	
	obj_menu_equip_use.item_num = 0;
}

select_on_1 = false;
select_on_2 = false;


